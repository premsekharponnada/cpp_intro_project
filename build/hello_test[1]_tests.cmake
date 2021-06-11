add_test( comparestrings.Test1 /Users/premsekhar/Desktop/cppproject/cpp_intro_project/bin/hello_test [==[--gtest_filter=comparestrings.Test1]==] --gtest_also_run_disabled_tests)
set_tests_properties( comparestrings.Test1 PROPERTIES WORKING_DIRECTORY /Users/premsekhar/Desktop/cppproject/cpp_intro_project/build SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( hello_test_TESTS comparestrings.Test1)
