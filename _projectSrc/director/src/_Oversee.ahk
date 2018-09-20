#NoTrayIcon
#NoEnv  ; This will check every 3 seconds to see if the process application.exe exists. If it does not, and the script.exe exists, the timer will close the script.exe process and kill itself.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
#Persistent
SetTitleMatchMode, 2
DetectHiddenWindows, On
 
SetTimer, ProcessCheckTimer, 3000
Return
 
ProcessCheckTimer:
Process, Exist, dungeonsiege2.exe
pid1 := ErrorLevel
If (!pid1)
{  Process, Exist, BorderlessGaming.exe
   pid2 := ErrorLevel
   If (pid2)

      Run %A_WorkingDir%\DS2_director_TaskSchedulerEvent.exe
   ExitApp
}
Return