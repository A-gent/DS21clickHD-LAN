
SET MyDirT=%~dp0
SET BorGamin=C:\Program Files (x86)\Borderless Gaming\BorderlessGaming.exe

schtasks /create /tn "Minimize_Borderless_Gaming" /tr "%MyDirT%Minimize_BG.exe" /sc once /sd 01/01/1901 /st 00:00 /RU AGENT\Agent /RL HIGHEST

schtasks /create /tn "Run_Borderless_Gaming" /tr "C:\Program Files (x86)\Borderless Gaming\BorderlessGaming.exe" /sc once /sd 01/01/1901 /st 00:00 /RU AGENT\Agent /RL HIGHEST

exit