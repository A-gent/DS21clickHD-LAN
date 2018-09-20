@echo off
Start "" "minlaunch_bg_suppress_uac.lnk"
sleep 2
:: nircmd win min ititle "Borderless Gaming"
:: timeout 1
Start "" "min_bg_suppress_uac"
Start "" "DS2Windowed.lnk"
timeout 1
Start "" "%CD%\director\_director.lnk"
exit