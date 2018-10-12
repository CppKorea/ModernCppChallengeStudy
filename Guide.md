## Note

 - 외부 라이브러리를 git submodule을 사용해 가져오는 경우,   
   [External](./External) 디렉터리 밑에 배치해주시면 됩니다
 - 이미 빌드 된 형태로 가져와서 사용하는 경우,   
   [External/include](./External)와 [External/lib](./External)에 배치해주시면 됩니다

## How To

### Build

과정은 크게 두 단계로, 준비(setup) 단계와 빌드(build) 단계로 구분됩니다. 준비하시고, 쏘세요! 

**다음의 프로그램이 설치되어 있어야 합니다**

- `git`
- `cmake`

#### Windows

윈도우는 cmd 보다는 PowerShell을 사용해 빌드하는 것을 전제합니다.  
경우에 따라서는 cmd 스크립트를 작성할 수 있으므로, 이 경우는 `.bat`파일을 별도로 생성하여 작성하시면 됩니다.

```ps
git clone https://github.com/CppKorea/ModernCppChallenge CppChallenge
Set-Location -Path ./Path/To/CppChallenge

& ./Scripts/win-setup.ps1;  # 빌드 전 준비작업
& ./Scripts/win-build.ps1;  # 프로젝트 생성 + 빌드
```

#### Linux

linux라고 명명했지만 CI 환경에서는 보통 **Ubuntu** Distribution을 사용하기에 이를 기준으로 합니다.  
다른 환경 혹은 shell을 사용하신다면 추가로 작성하는 것도 환영합니다.

```sh
git clone https://github.com/CppKorea/ModernCppChallenge CppChallenge
cd ./Path/To/CppChallenge

bash ./Scripts/linux-setup.sh   # 빌드 전 준비작업
bash ./Scripts/linux-build.sh   # 프로젝트 생성 + 빌드
```

#### MacOS

MacOS 환경에서는 스크립트 이름이 다릅니다 !

```sh
git clone https://github.com/CppKorea/ModernCppChallenge CppChallenge
cd ./Path/To/CppChallenge

bash ./Scripts/mac-setup.sh     # 빌드 전 준비작업
bash ./Scripts/mac-build.sh     # 프로젝트 생성 + 빌드
```
