param(
   [string] $InstallPath,
   [string] $BuildType,
   [boolean] $BuildShared
)
Write-Host $InstallPath;
Write-Host $BuildType;
Write-Host $BuildShared;

New-Item -Name build -ItemType Directory;
Push-Location -Path build;
    # Enforce 64bit
    cmake ../ -G "Visual Studio 15 2017 Win64" -DBUILD_SHARED_LIBS=$BuildShared -DCMAKE_BUILD_TYPE=$BuildType -DCMAKE_INSTALL_PREFIX=$InstallPath ;
    MSBuild.exe ModernCppChallenge.sln  /verbosity:minimal  /property:platform=x64 /property:configuration=Debug /maxcpucount:4;
    MSBuild.exe INSTALL.vcxproj         /verbosity:minimal;

Pop-Location;
