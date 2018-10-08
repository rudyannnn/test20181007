

loop 50000
{
    sleep 20000
	MouseGetPos, Mouse_X, Mouse_Y, , ,
	Mouse_XX:=Mouse_X+1
	mousemove %Mouse_XX%, %Mouse_Y%
	Mouse_XX:=Mouse_X-1
	mousemove %Mouse_XX%, %Mouse_Y%
}
return
