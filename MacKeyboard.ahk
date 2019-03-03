;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input


; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key


; Disable standard winkey behaviour
LWin::Return

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
#s::Send, ^s

; Selecting
#a::Send, ^a

; Copying
#c::Send, ^c

; Pasting
#v::Send, ^v

; Cutting
#x::Send, ^x

; Opening
#o::Send, ^o

; Finding
#f::Send ^f

; Undo
#z::Send, ^z

; Redo
#y::Send, ^y

; New tab
#t::Send, ^t

; close tab
#w::Send, ^w

; close tab
#n::Send, ^n

; Close windows (cmd + q to Alt + F4)
#q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
Lwin & Tab::AltTab

; minimize windows
#m::WinMinimize,a

; Cursor Begin line
#Left::
Send, {Home}
Return

; Cursor End of line
#Right::
Send, {End}
Return

; Cursor Begin line select
#+Left::
Send, +{Home}
Return

; Cursor End of line select
#+Right::
Send, +{End}
Return

; Cursor Left word
!Left::
Send, ^{Left}
Return

; Cursor Left word select
!+Left::
Send, ^+{Left}
Return

; Cursor word right
!Right::
Send, ^{Right}
Return

; Cursor word right select
!+Right::
Send, ^+{Right}
Return


; Lock screen
^#q::
DllCall("LockWorkStation")
Return

; Rename files
SetTitleMatchMode,RegEx
#IfWinActive ahk_class CabinetWClass         ; WINDOWS™ View Only
Enter::
if Rtoggle = 1
{
SendInput, {Enter}
Rtoggle := 0
}
else
{
SendInput, {F2}
Rtoggle := 1
}
return
#IfWinActive

;Enter directory
#Down::
Send, {Enter}
Return

; Go up Directory
#Up::
Send, {Backspace}
Return

;Move to trash
#Backspace::
Send, {Delete}
Return

; --------------------------------------------------------------
; VSCODE
; --------------------------------------------------------------


; File lookup
#p::
Send, ^p
return

; Command Palette
+#p::
Send, +^p
return