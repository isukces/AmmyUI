setlocal enabledelayedexpansion

for /f "usebackq tokens=*" %%i in (`vswhere -version "[15.0,16.0)" -requires Microsoft.Component.MSBuild -find MSBuild\**\Bin\MSBuild.exe`) do (
  "%%i" %*
)