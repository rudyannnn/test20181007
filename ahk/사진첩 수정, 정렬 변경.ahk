#2:: reload

#3::
	MouseGetPos, Mouse_X, Mouse_Y, , ,
	return
#4::
	clipboard=%Mouse_X%, %Mouse_Y%
	send ^{v}
	return

#1::
	click, 837, 525
	click, 800, 632
	sleep 100
	click, 269, 465
	sleep 100
	send {enter}
	sleep 100
	mousemove, 102, 489
	return

^e:: edit D:\ahk\사진첩 수정, 정렬 변경.ahk