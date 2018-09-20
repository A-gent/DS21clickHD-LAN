@echo off
Start "" "%CD%\minlaunch_bg_suppress_uac.lnk"
sleep 2
:: nircmd win min ititle "Borderless Gaming"
:: timeout 1
Start "" "%CD%\min_bg_suppress_uac"
timeout 1
Start "" "%CD%\Evolve.lnk"
timeout 5
Start "" "%CD%\Minimize_EVOLVEz_to_systray.exe"
nircmd infobox "RUN TESTCLICK ME AFTER YOU JOIN EVOLVE PARTY!" "TEST RUN!"
timeout 1
Start "" "%CD%\Minimize_EVOLVE_zFriends_to_systray.exe"
Start "" "%CD%\Minimize_EVOLVE_DS2lobby.exe"
timeout 1
Start "" "%CD%\director\_director.lnk"
Start "" "%CD%\DS2Windowed.lnk"
exit