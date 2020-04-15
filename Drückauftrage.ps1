
net stop spooler
del "C:\Windows\System32\spool\PRINTERS\*.shd"
del "C:\Windows\System32\spool\PRINTERS\*.spl"
net start spooler
pause
