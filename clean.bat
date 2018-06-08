@echo off

set BACK=%~dp0
cd %BACK%

for %%a in (.) do set CDIR=%%~nxa

del %CDIR%.sln

rd /s /q .vs
rd /s /q Binaries
rd /s /q Intermediate
rd /s /q Saved

for /d %%i in (%BACK%\Plugins\*) do (
cd "%%i"
rd /s /q Binaries
rd /s /q Intermediate
)

cd %BACK%

@pause