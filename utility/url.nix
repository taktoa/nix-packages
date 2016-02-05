{ pkgs }:

with pkgs.lib;

let fetchurl = pkgs.fetchurl;
    removeNulls = filterAttrs (n: v: !(isNull v));
    normalizeURLObj =
      let cs = concatStringsSep;
      in { secure    ? true # < When defaulting proto, use HTTPS?
         , proto     ? "http" + optionalString secure "s"
                            # ^ The protocol; defaults to HTTP(S)
         , hostList  ? []   # < A list to be "."-separated for the host
         , host      ? cs "." hostList
                            # ^ The host
         , pathList  ? []   # < A list to be "/"-separated for the path
         , path      ? cs "/" pathList
                            # ^ The path
         , paramList ? []   # < A list to be "&"-separated for the params
         , params    ? cs "&" paramList
                            # ^ The params
         , ...              # < Additional args will be ignored
         }:
           assert host != "";
           { inherit proto host path params; };
in rec {
     mkParam = name: value: "${toString name}=${toString value}";

     mkURL = { proto ? "https", host, path ? "", params ? "" }:
              "${proto}://${host}/${path}?${params}";

     mkURLObj = { ... } @ args: mkURL (normalizeURLObj args);

     fetchURLObj = { sha256, name ? null, curlOpts ? null, ... } @ args:
                     fetchurl (removeNulls {
                                url = mkURLObj args;
                                inherit sha256 name curlOpts;
                              });
   }
