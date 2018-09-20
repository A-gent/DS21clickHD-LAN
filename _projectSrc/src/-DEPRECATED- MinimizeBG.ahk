#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


	SetTitleMatchMode 3

	; Make sure that Alt is not pressed (prevents Alt-Tab - Esc problem)
	if GetKeyState( "Alt" )
		Return
	; Make sure that LButton is not pressed (prevents Drag - Esc problem)
	if GetKeyState( "LButton" )
		Return

	loop Read, CloseList.txt
	{
		StringSplit aCloseListLine, A_LoopReadLine, %A_Tab%
		if WinActive( aCloseListLine2 )
		{
			if (aCloseListLine1 = "C")
				WinClose A
			if (aCloseListLine1 = "M")
				WinMinimize A
			if (aCloseListLine1 = "P")
				PostMessage 0x112, 0xF020,,, A
		}
	}

	ExitApp