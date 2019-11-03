:: This command tells the program not display every command and its output in the terminal which is done by default. 
@ECHO OFF
:: Go to the batch file's directory
cd %~dp0
ECHO =============== Pull the alpine image =====================
docker pull alpine
ECHO =============== Launching a bash shell ====================
docker run -it alpine /bin/sh 
ECHO ===========================================================
:: This prevents the console window from closing after executing the command. 
PAUSE
