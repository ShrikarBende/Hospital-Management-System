@echo off
echo Compiling all classes...
javac -cp ".;%CD%\mysql-connector-j-9.3.0.jar" src/main/java/com/hospital/model/*.java
javac -cp ".;%CD%\mysql-connector-j-9.3.0.jar" src/main/java/com/hospital/dao/*.java
javac -cp ".;%CD%\mysql-connector-j-9.3.0.jar" src/main/java/com/hospital/util/*.java
javac -cp ".;%CD%\mysql-connector-j-9.3.0.jar" src/main/java/com/hospital/*.java
javac -cp ".;%CD%\mysql-connector-j-9.3.0.jar" src/main/java/com/hospital/test/*.java

echo Running PatientTest...
java -cp ".;%CD%\mysql-connector-j-9.3.0.jar;src/main/java" com.hospital.test.PatientTest

pause 