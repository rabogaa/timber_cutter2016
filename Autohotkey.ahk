#SingleInstance force
CoordMode, Mouse, Screen
SetMouseDelay -1

; alt + l - to start chopping trees
; alt + k - to pause/unpause chopping
; Must run dota 2 client in fullscreen mode

!l::
while true
{
    while true {
        activated:=ActivateD2()
        if activated
        {
            RandomClick()
        }
        else
        {
            MsgBox, Dota2 client not active. Run client first, then unpause.
            Pause Toggle
            break
        }
    }
}

!k::Pause Toggle

ActivateD2(){
    if WinExist("ahk_exe dota2.exe")
    {
        WinActivate, ahk_exe dota2.exe
        return true
    }
    return false
}

RandomClick() {
    Random, x, 190, 900
    Random, y, 176, 620
    Click %x%, %y%, 10
}
