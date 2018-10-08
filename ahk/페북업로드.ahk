foldertree=D:\ahk\사진첩 1페이지 북마크.ahk
filefolder=영어

#2:: reload

#3::
MouseGetPos, Mouse_X, Mouse_Y, , ,
return
#4::
clipboard=%Mouse_X%, %Mouse_Y%
send ^{v}
return

#1::
sleep 500
send, !{d}{left}
loop,8
{
send {right}
}
send {shiftdown}{right}{right}{right}{shiftup}m{enter}
sleep 1500
send ^{d}
soundbeep
soundbeep
soundbeep
return

#5:: ;모바일에서 윈도우로 가서 주인 클릭, 포토 클릭
send !{left}
sleep 5000
send {esc}
sleep 1000
click 304, 168 ; 사람 클릭
sleep 2000
click 590, 360 ; 포토 클릭
sleep 1000
click 216, 471 ; 앨범 클릭
soundbeep
soundbeep
soundbeep
return

#6::
loop 500
{
send {pgdn}
sleep 200
}
return
#7::
send !{left}
sleep 2000
send {esc}
sleep 1000
click 445, 113
sleep 1000
click 487, 536
sleep 1000
click 671, 606
return

^e:: edit %foldertree%


sc46::
send !{left}
sleep 3000
send {f11}
sleep 2000
;WinGetPos, X, Y, Width, Height, Calculator
;MsgBox, %X%
;Width=%Width%-30
Click, 938, 270
sleep 3000
click, 252, 458
send {f11}
mousemove 1784, 101
sleep 1000
send {right}{right}{right}{right}{right}{right}{right}{right}
return