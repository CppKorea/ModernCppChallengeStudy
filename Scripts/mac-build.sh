
mkdir -p build;
pushd build;

    cmake ../  -DBUILD_SHARED_LIBS=true -DCMAKE_BUILD_TYPE=Debug;
    make -j10;
    make install;

popd;
