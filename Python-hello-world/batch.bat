:: This command tells the program not display every command and its output in the terminal which is done by default. 
@ECHO OFF
:: Go to the batch file's directory
cd %~dp0
ECHO ============== build ============== 
docker build -t i-python-app .
ECHO ==============  run  ==============
docker run --name c-python-app i-python-app
ECHO ===================================
set SRC_ROOT=C:/Users/Abbassi Zied/Documents/GitHub/Docker-for-Windows/docker-Python-hello-world
docker save -o  %SRC_ROOT%/python-application.tar i-python-app
ECHO ===================================
:: This prevents the console window from closing after executing the command. 
PAUSE
