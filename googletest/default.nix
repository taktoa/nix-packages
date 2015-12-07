{ stdenv, fetchFromGitHub, cmake, python }:

stdenv.mkDerivation rec {
  name = "googletest-1.7.0";

  src = fetchFromGitHub {
    owner = "google";
    repo = "googletest";
    rev = "c99458533a9b4c743ed51537e25989ea55944908";
    sha256 = "1yqnzrr7bgnnnwq02c5gy559mmb52pap7m1h7zd6w58dj9yvg72n";
  };

  output = [ "out" "dev" "doc" ];

  buildInputs = [ cmake python ];

  cmakeFlagsArray = [ "-Dgtest_build_tests=ON"
                      "-DGTEST_CREATE_SHARED_LIBRARY=1" ];

  # libgtest.a
  # libgtest_dll.so
  # libgtest_main.a
  # libgtest_main_no_exception.a
  # libgtest_main_no_rtti.a
  # libgtest_main_use_own_tuple.a
  # libgtest_no_exception.a

  checkPhase = ''
      make test
  '';
  
  # checkPhase = ''
  #     runTest () {
  #       echo "Running test: $1"
  #       exec "./$1"
  #       RESULT="$?"
  #       echo "Exit code: $RESULT"
  #       return $RESULT
  #     }

  #     runTest gtest-death-test_ex_catch_test
  #     runTest gtest-death-test_ex_nocatch_test
  #     runTest gtest-death-test_test
  #     runTest gtest-filepath_test
  #     runTest gtest-linked_ptr_test
  #     runTest gtest-listener_test
  #     runTest gtest-message_test
  #     runTest gtest-options_test
  #     runTest gtest-param-test_test
  #     runTest gtest-port_test
  #     runTest gtest-printers_test
  #     runTest gtest-test-part_test
  #     runTest gtest-tuple_test
  #     runTest gtest-typed-test_test
  #     runTest gtest-unittest-api_test
  #     runTest gtest_break_on_failure_unittest_
  #     runTest gtest_catch_exceptions_ex_test_
  #     runTest gtest_catch_exceptions_no_ex_test_
  #     runTest gtest_color_test_
  #     runTest gtest_dll_test_
  #     runTest gtest_env_var_test_
  #     runTest gtest_environment_test
  #     runTest gtest_filter_unittest_
  #     runTest gtest_help_test_
  #     runTest gtest_list_tests_unittest_
  #     runTest gtest_main_unittest
  #     runTest gtest_no_rtti_unittest
  #     runTest gtest_no_test_unittest
  #     runTest gtest_output_test_
  #     runTest gtest_pred_impl_unittest
  #     runTest gtest_premature_exit_test
  #     runTest gtest_prod_test
  #     runTest gtest_repeat_test
  #     runTest gtest_shuffle_test_
  #     runTest gtest_sole_header_test
  #     runTest gtest_stress_test
  #     runTest gtest_throw_on_failure_ex_test
  #     runTest gtest_throw_on_failure_test_
  #     runTest gtest_uninitialized_test_
  #     runTest gtest_unittest
  #     runTest gtest_use_own_tuple_test
  #     runTest gtest_xml_outfile1_test_
  #     runTest gtest_xml_outfile2_test_
  #     runTest gtest_xml_output_unittest_

  #     echo "Tests successfully completed."
  # '';

  installPhase = ''
      ls -l --color=always
      exit -1
  '';

  doCheck = true;

  enableParallelBuilding = true;

  meta = with stdenv.lib; {
    description = "The Google C++ Testing Framework";
    homepage = https://github.com/google/googletest;
    license = licenses.bsd3;
    meta.platforms = platforms.all;
    maintainers = with maintainers; [ taktoa ];
  };
}
