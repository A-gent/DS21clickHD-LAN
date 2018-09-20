
SET MyDirT=%~dp0
SET BorGamin=C:\Program Files (x86)\Borderless Gaming\BorderlessGaming.exe

schtasks /create /tn "oCloseEventForDS2Director" /tr "%MyDirT%CloseEventOverride.cmd" /sc once /sd 01/01/1901 /st 00:00 /RU AGENT\Agent /RL HIGHEST

exit