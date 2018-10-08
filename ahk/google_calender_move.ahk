foldertree=D:\ahk\google_calender_move.ahk

#2::reload
#3::MouseGetPos, Mouse_X, Mouse_Y,,,
#4::send, %Mouse_X%, %Mouse_Y%

f3::edit_schedule()
f4::step20_moveup()

step20_moveup()
{
	MouseGetPos, Mouse_X, Mouse_Y,,,
	Mouse_Y-=20
	mousemove %Mouse_X%, %Mouse_Y%
	return
}
	

calender_2nd_sel(){
	sleep 500
	click 168, 467
	sleep 200
	click 167, 504
	sleep 200
	click 152, 198
	return
}

edit_schedule(){
	sleep 500
	MouseGetPos, Mouse_X, Mouse_Y,,,
	Mouse_Y-=20
	Mouse_X_0=%Mouse_X%
	Mouse_Y_0=%Mouse_Y%
	click %Mouse_X%, %Mouse_Y%
	sleep 200
	Mouse_X+=345
	loop 7
	{
		Mouse_Y+=20
		click %Mouse_X%, %Mouse_Y%
	}
	sleep 1000
	calender_2nd_sel()
	mousemove %Mouse_X_0%, %Mouse_Y_0%
	return
}

keyrepeat()
{
	loop 1000
	{
		sleep 5000
		click, 821, 685

	}
}
^e::edit %foldertree%