#NoEnv
#SingleInstance Force
SendMode Event
SetWorkingDir %A_ScriptDir%
SetBatchLines -1
SetControlDelay 0
SetKeyDelay 0
SetMouseDelay 0

KEY_SB:= "1"
KEY_BLOCK:= "RButton"

#IfWinActive, TERA

$1::
    Send {%KEY_SB%}
    Sleep 250
    Send {%KEY_BLOCK% down}
    Sleep 3
    Send {%KEY_BLOCK% up}

    Send {%KEY_SB%}
    
    KeyWait, 1
return

#IfWinActive