@echo on

git submodule update --init --recursive || goto :err
call "%VCVARSALL%" %VCVARS_PLATFORM% || goto :err
set PATH="C:\cygwin\bin;%PATH%" || goto :err

:err
exit /b %errorlevel%
