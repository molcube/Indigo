if "%ProgramFiles(x86)%" == "" goto L1
call "%ProgramFiles(x86)%\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"
goto L2
:L1
call "%ProgramFiles%\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"
:L2
devenv bingo_postgres.sln /build "Release|Win32"
devenv bingo_postgres.sln /build "Release|x64"
call release-win-32.bat bingo-postgres-%1-win32
call release-win-64.bat bingo-postgres-%1-win64

