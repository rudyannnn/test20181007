
;;;파형그리기
;;;ijkl, 상좌하우

^i::
	MouseGetPos, Mouse_X, Mouse_Y, , , 
	;;Mouse_X-=30
	Mouse_Y-=30
	click,left,%Mouse_X%, %Mouse_Y%
	return
^j::
	MouseGetPos, Mouse_X, Mouse_Y, , , 
	Mouse_X-=30
	;;Mouse_Y-=30
	click,left,%Mouse_X%, %Mouse_Y%
	return
^k::
	MouseGetPos, Mouse_X, Mouse_Y, , , 
	;;Mouse_X-=30
	Mouse_Y+=30
	click,left,%Mouse_X%, %Mouse_Y%
	return
^l::
	MouseGetPos, Mouse_X, Mouse_Y, , , 
	Mouse_X+=30
	;;Mouse_Y+=30
	click,left,%Mouse_X%, %Mouse_Y%
	return

#3::reload