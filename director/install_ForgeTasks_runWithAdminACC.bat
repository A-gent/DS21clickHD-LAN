@echo off
SET MyDirT=%~dp0
SET BorGamin=C:\Program Files (x86)\Borderless Gaming\BorderlessGaming.exe

schtasks /create /tn "CloseEventForDS2Director" /tr "%MyDirT%CloseEventOverride.cmd" /sc once /sd 01/01/1901 /st 00:00 /RU BUILTIN\Administrators /RL HIGHEST


exit