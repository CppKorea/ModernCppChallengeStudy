param(
   [string] $InstallPath
)
Write-Host $InstallPath;

New-Item -Name $InstallPath -ItemType Directory;
New-Item -Name build -ItemType Directory;
Push-Location -Path build;
    # Enforce 64bit
    cmake ../ -G "Visual Studio 15 2017 Win64" -DCMAKE_INSTALL_PREFIX=$InstallPath ;
    MSBuild.exe ModernCppChallenge.sln  /verbosity:minimal  /property:platform=x64 /property:configuration=Debug /maxcpucount:4;
    MSBuild.exe INSTALL.vcxproj         /verbosity:minimal;

Pop-Location;
