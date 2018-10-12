
New-Item -Name build -ItemType Directory;
Push-Location -Path build;

    cmake ../ -G "Visual Studio 15 2017 Win64" -DBUILD_SHARED_LIBS=true -DCMAKE_BUILD_TYPE=Debug;
    MSBuild.exe ModernCppChallenge.sln  /verbosity:minimal  /property:platform=x64 /property:configuration=Debug /maxcpucount:4;
    MSBuild.exe INSTALL.vcxproj         /verbosity:minimal;

Pop-Location;
