#include <gtest/gtest.h>
#include "../src/helloworld.cpp"

TEST(comparestrings, Test1)
{
    std::string s1 = welcome();
    std::string s2 = "Hello World";
    EXPECT_EQ(s1, s2);
}
