; (hash)                #    Windows logo key
; (exclamation mark)    !    ALT
; (caret)               ^    CTRL
; (plus)                +    Shift



::fro::for
Return

::]out::outlook.com
Return

::]127::127.0.0.1
Return

::]ip::
SendInput %A_IPAddress4%
Return

::]gm::gmail.com
Return

#e::
    Run, onecommander
    return

#a::
	Winset, AlwaysOnTop, ,A
	Return
	
^m::
	WinMinimize, A
	Return	

*F6::
	Run, mmsys.cpl
	WinWait,Sound
	SetKeyDelay, 10, 10
	ControlSend,SysListView321,{Down 5}
	SetKeyDelay, 10, 10
	ControlClick,&Set Default
	ControlClick,OK
	return
	
*F7::
	Run, mmsys.cpl
	WinWait,Sound
	SetKeyDelay, 10, 10
	ControlSend,SysListView321,{Down 1}
	SetKeyDelay, 10, 10
	ControlClick,&Set Default
	ControlClick,OK
	return
	
	
; Google Search highlighted text
^+c::
{
 Send, ^c
 Sleep 50
 Run, http://www.google.com/search?q=%clipboard%
 Return
}


; Thesaurus Search highlighted text
^+r::
{
 Send, ^c
 Sleep 50
 Run, https://www.thesaurus.com/browse/%clipboard%
 Return
}

;Launch Terminal
^!t::Run "C:\Users\{Username}\AppData\Local\Microsoft\WindowsApps\wt.exe"

; Set Lock keys permanently
SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff
return


; Turn Caps Lock into a Shift key
Capslock::Shift
return


#c::
	Send ^c
	ClipWait
	Clipboard:=Clipboard ""
Return


^#v::                       ; Text–only paste from ClipBoard
  Clip0 = %ClipBoardAll%
  ClipBoard = %ClipBoard%   ; Convert to text
  Send ^v                   ; For best compatibility: SendPlay
  Sleep 50                  ; Don't change clipboard while it is pasted!
                                 ; (Sleep > 0)
  ClipBoard = %Clip0%       ; Restore original ClipBoard
  VarSetCapacity(Clip0, 0)  ; Free memory
Return
