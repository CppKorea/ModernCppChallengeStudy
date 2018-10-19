
cmake_minimum_required(VERSION 3.1)

project(ModernCppChallenge LANGUAGES CXX)

set(CMAKE_MODULE_PATH       ${CMAKE_SOURCE_DIR}/Scripts)
set(ROOT_DIR                ${CMAKE_SOURCE_DIR})
set(CMAKE_INSTALL_PREFIX    ${CMAKE_SOURCE_DIR}/Solved)

include(GetModules)

# Ch.1 
add_subdirectory(Math/Problem1)
# add_subdirectory(Math/Problem2)
# add_subdirectory(Math/Problem3)
# add_subdirectory(Math/Problem4)
# add_subdirectory(Math/Problem5)
# add_subdirectory(Math/Problem6)
# add_subdirectory(Math/Problem7)
# add_subdirectory(Math/Problem8)
# add_subdirectory(Math/Problem9)
# add_subdirectory(Math/Problem10)
# add_subdirectory(Math/Problem11)
# add_subdirectory(Math/Problem12)
# add_subdirectory(Math/Problem13)
# add_subdirectory(Math/Problem14)

# add_subdirectory(Language)      # Ch.2
# add_subdirectory(Regex)         # Ch.3
# add_subdirectory(Filesystem)    # Ch.4
# add_subdirectory(DateTime)      # Ch.5
# add_subdirectory(Algorithm)     # Ch.6
# add_subdirectory(Concurrency)   # Ch.7
# add_subdirectory(Serialization) # Ch.9
# add_subdirectory(DesignPattern) # Ch.8
# add_subdirectory(Archives)      # Ch.10
# add_subdirectory(Database)      #
# add_subdirectory(Images)        # 
# add_subdirectory(Cryptography)  # Ch.11

# add_subdirectory(Extra)         # Bonus challenge!
