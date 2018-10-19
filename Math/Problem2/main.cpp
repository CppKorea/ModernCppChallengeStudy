#include <gsl/gsl>

// create `main` function for catch
#define CATCH_CONFIG_MAIN   
#include <catch2/catch.hpp>

// Redirect CMake's #define to C++ constexpr string
constexpr auto TestName = PROJECT_NAME_STRING; 

TEST_CASE(TestName, "[ch01]")
{
    // INFO(TestName);
    SECTION("user1")
    {
        INFO("user1")
        REQUIRE(true);
    }
    SECTION("user2")
    {
        INFO("user1")
        REQUIRE_FALSE(false);
    }
}
