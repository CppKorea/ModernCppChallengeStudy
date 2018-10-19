# https://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash

set -o errexit

# Argument check: Assign if it's undefined
if [ -z $1 ]; then
    BuildType=Debug ;
else
    BuildType=$1 ;
fi
echo "Build Type(Arg 1): $BuildType ";

# Argument check: Assign if it's undefined
if [ -z $2 ]; then
    BuildShared=true ;
else
    BuildShared=$2 ;
fi
echo "Build Shared(Arg 2): $BuildShared ";

# Start the build with CMake
mkdir -p build;
pushd build;

    cmake ../  -DCMAKE_BUILD_TYPE=$1 -DBUILD_SHARED_LIBS=$2 ;
    make -j10;
    make install;

popd;
