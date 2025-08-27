@echo off
echo Compiling Hospital Management System...

:: Set Java paths
set JAVA_HOME=C:\Program Files\Java\jdk-22
set PATH=%JAVA_HOME%\bin;%PATH%

:: Create bin directory if it doesn't exist
if not exist "bin" mkdir bin

:: Clean bin directory
del /Q /S bin\*.*

:: Compile all Java files
echo Compiling source files...
"%JAVA_HOME%\bin\javac" -d bin -cp ".;mysql-connector-j-9.3.0.jar" ^
    src/main/java/com/hospital/*.java ^
    src/main/java/com/hospital/model/*.java ^
    src/main/java/com/hospital/dao/*.java ^
    src/main/java/com/hospital/util/*.java ^
    src/main/java/com/hospital/test/*.java

if errorlevel 1 (
    echo Compilation failed!
    pause
    exit /b 1
)

echo Compilation successful!
echo All files have been compiled and saved to the bin directory.
pause 