::	DO NOT TOUCH THIS PORTION OF THE SCRIPT
@ECHO OFF
:: nircmd exec hide "interrupt_overseer.bat"
:: nircmd exec hide "interrupts.exe"
sleep 1
:: taskkill /IM _Oversee.exe /F
sleep 1
::
::	PLACE SCRIPTS TO TERMINATE ON GAME CLOSE BELOW
::

taskkill /IM EvolveClient.exe /F
taskkill /IM BorderlessGaming.exe /F
:: taskkill /IM V2_QuickBomb.exe /F




nircmd beep 9900 309
sleep 1
EXIT
