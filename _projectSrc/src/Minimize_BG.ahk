#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode, 3
Loop {
IfWinExist, Borderless Gaming 9.5.4 [Administrator]
{
WinMinimize, Borderless Gaming 9.5.4 [Administrator]
Exit
}
Sleep, 1000
}
