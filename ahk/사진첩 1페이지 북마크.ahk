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
	send, !{d}{left}
	loop,8
	{
		send {right}
	}
	send {shiftdown}{right}{right}{right}{shiftup}{m}{enter}
	sleep 1500
	send ^{d}
	return

#5::
	send !{tab}
	sleep 100
	send {down}{f2}^{c}
	sleep 100
	send !{tab}
	sleep 100
	click, 151, 128
	sleep 100
	send ^{v}
	mousemove 395, 642
	return
	
^e:: edit %foldertree%