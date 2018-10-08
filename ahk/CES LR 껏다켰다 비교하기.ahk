foldertree=D:\ahk\기본.ahk

#2::reload
#3::MouseGetPos, Mouse_X, Mouse_Y,,,
#4::send, %Mouse_X%, %Mouse_Y%

^e::edit %foldertree%

#5::
	sleep 300
	loop 10
	{
		send {tab}17
		send {shiftdown}{tab}{tab}{shiftup}00
		send {tab}{enter}
		sleep 300
		
		send {tab}18
		send {shiftdown}{tab}{tab}{shiftup}BB
		send {tab}{enter}
		sleep 15000
		soundbeep
		soundbeep
		soundbeep


		send {tab}17
		send {shiftdown}{tab}{tab}{shiftup}BB
		send {tab}{enter}
		sleep 300
		
		send {tab}18
		send {shiftdown}{tab}{tab}{shiftup}00
		send {tab}{enter}
		sleep 15000
		soundbeep
		soundbeep
		soundbeep
	}
	return