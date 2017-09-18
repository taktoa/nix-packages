{ stdenv, fetchFromGitHub, maven, openjdk8, releaseTools, nailgun-client, git }:

# TODO:
# - Investigate builds on platforms other than 64-bit linux
# - Separate package for Maven cache? This would speed up builds and
#   theoretically could still be pure
# - Find a way to prevent Maven from downloading artifacts irrelevant
#   to the platform for which we are building

releaseTools.mvnBuild rec {
  name = "kframework-20150511";
  
  mvn8 = maven.override {
    jdk = openjdk8; # K uses Java 8. The official docs reference the
                    # Oracle VM, but it's been working with OpenJDK
  };

  src = fetchFromGitHub {
    owner = "kframework";
    repo = "k";
    rev = "1ae800eef32f0d0e182dd86fffd739bf8e51ba1a"; # nightly build for May 11th, 2015
    sha256 = "115nihhy5k8zflbffa9nk249rkciwgn4zd50mf3nsi26bxrsygrw";
  };


  buildInputs = [ mvn8 openjdk8 nailgun-client git ];

# These are very useful for debugging, as you don't have to run tests or
# repeatedly rebuild the Maven cache. Obviously, as they are impure, they
# should be disabled in release builds.

  doTest = false;
  doTestCompile = false;

  postSetupPhase = ''
    export M2_REPO=/tmp/repository
  '';

  extraMvnFlags = " -P linux64 ";

  preSetupPhase = ''
    # z3 needs this to pass tests
    export LD_LIBRARY_PATH=$(cat $NIX_CC/nix-support/orig-cc)/lib
    # not sure if this does anything, since it might only speed up incremental builds
    export MAVEN_OPTS="-XX:+TieredCompilation"
  '';

  mvnAssembly = ''
    mvn package -Dcheckstyle.skip -Dmaven.test.skip=true -Dmaven.repo.local=$M2_REPO $mvnFlags
  '';

  mvnRelease = ''
    true # do nothing, since mvn package is sufficient
  '';

  # this is a custom version of k-distribution/src/main/scripts/lib/k
  kscript = ''
    #!/usr/bin/env bash
    export PATH=$PATH:${nailgun-client}/bin:${openjdk8}/bin
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$out/lib/gcc:$out/lib
 
    export K_CP="$out/share/kframework/lib/java/"

    export K_OPTS="-Xms64m -Xmx1G -Xss32m -XX:+TieredCompilation"
    export MISC_ARGS="-Djava.awt.headless=true"

    ng ng-version > /dev/null 2>&1
    if [ $? -eq 0 ]; then
      ng org.kframework.main.Main "$@"
    else
      java $MISC_ARGS $K_OPTS -cp "$K_CP/*" org.kframework.main.Main "$@"
    fi
  '';

  kserver = ''
    #!/usr/bin/env bash
    export PATH=$PATH:${openjdk8}/bin
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$out/lib/gcc:$out/lib

    export K_CP="$out/share/kframework/lib/java/"
    
    export K_OPTS="-Xms64m -Xmx4G -Xss32m -XX:+TieredCompilation"
    export MISC_ARGS="-Djava.awt.headless=true -Djansi.force=true"

    java $MISC_ARGS $K_OPTS -cp "$K_CP/*" org.kframework.main.Main -kserver "$@"
  '';
    
  finalPhase = ''
    # set some environment variables
    export K_ROOT=$PWD/k-distribution/target/release/k/
    export K_SHARE=$out/share/kframework/
    # make requisite directories
    mkdir -p $out/lib $K_SHARE/lib/native
    # copy over bin
    cp -R $K_ROOT/bin                             $K_SHARE/
    # symlink $out/bin to $out/share/kframework/bin
    ln -s $K_SHARE/bin                            $out/bin
    # copy everything relevant to $out/share/kframework
    # we may want to consider adding the documentation etc.
    cp -R $K_ROOT/include                         $K_SHARE/
    cp -R $K_ROOT/lib/java                        $K_SHARE/lib/
    cp -R $K_ROOT/lib/native/linux                $K_SHARE/lib/native/
    cp -R $K_ROOT/lib/native/linux64              $K_SHARE/lib/native/
    ln -s $(cat $NIX_CC/nix-support/orig-cc)/lib   $K_SHARE/lib/gcc
    # remove useless scripts
    rm $K_SHARE/bin/kserver $K_SHARE/bin/stop-kserver $K_SHARE/bin/*.bat # */
    # make our k wrapper script and substitute $out for its value
    echo -n "$kscript" | sed "s:\$out:$out:g" > $K_SHARE/lib/k
    chmod +x $K_SHARE/lib/k
    # make the kserver script and substitute $out for its value
    echo -n "$kserver" | sed "s:\$out:$out:g" > $K_SHARE/bin/kserver
    chmod +x $K_SHARE/bin/kserver
    # symlink requisite binaries
    ln -s $K_SHARE/lib/gcc                         $out/lib/gcc
    ln -s $K_SHARE/lib/k                           $out/lib/k
    ln -s $K_SHARE/lib/native/linux/sdf2table      $out/bin/sdf2table
    ln -s $K_SHARE/lib/native/linux64/z3           $out/bin/z3
    ln -s $K_SHARE/lib/native/linux64/libz3.so     $out/lib/libz3.so
    ln -s $K_SHARE/lib/native/linux64/libz3java.so $out/lib/libz3java.so
    # patch Z3 so it uses the right interpreter/libs
    patchelf \
      --interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
      --set-rpath $(cat $NIX_CC/nix-support/orig-cc)/lib \
      --force-rpath \
      $K_SHARE/lib/native/linux64/z3
  '';
  
  meta = {
    description = "The K Framework is a rewrite-based executable semantic framework in which programming languages, type systems and formal analysis tools can be defined.";
    homepage = http://www.kframework.org;
    license = stdenv.lib.licenses.bsd3;     # technically it is the UIUC/NCSA license
                                            # but LLVM uses that license as well and
                                            # it is marked as BSD3
#    maintainers = [ stdenv.lib.maintainers.taktoa ];
    platforms = stdenv.lib.platforms.linux; # I haven't done testing on other OSes, but
                                            # since it's Java it should run anywhere
  };
}
