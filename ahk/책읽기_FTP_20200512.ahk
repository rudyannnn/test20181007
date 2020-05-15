
#3::
	loop 500
	{
		sleep 500
		send {pgdn}
	}
	return

^e:: edit

#2:: reload

Numpad6:: nextpage()
Numpad1:: nextpage()
Numpad4:: prevpage()
Numpad5:: centerFocus()
Numpad2:: pagezoomLU(5,"+",17,"left",5,"right",15,"up")
Numpad3:: pageRU(47,"right",47,"up")
Numpad0:: pageDown(12,"down")
Numpad5 & Numpad0:: pageDown(12,"up")
NumpadSub::send,^{-}
NumpadAdd::send,^{+}
NumpadMult::send,^{pgdn}
NumpadDiv::send,^{pgUp}

Numpad8::send,^+b
Numpad9::send,^z

centerFocus()
{
	sleep 200
	click 400,200
	mousemove 0,0
	return
}
	

prevpage()
{
	sleep 200
	Send, !d^c
	sleep 200
	filepath=%clipboard%
	FoundPos := RegExMatch(filepath, "IMG_(.*)(.JPG|.jpg)", SubPat)
	clipboard := RegExReplace(filepath, "IMG_(.*)(.JPG|.jpg)", "IMG_" SubPat1-1 ".JPG")
	Send, ^v{enter}
	return
}

nextpage()
{
	sleep 200
	Send, !d^c
	sleep 200
	filepath=%clipboard%
	FoundPos := RegExMatch(filepath, "IMG_(.*)(.JPG|.jpg)", SubPat)
	clipboard := RegExReplace(filepath, "IMG_(.*)(.JPG|.jpg)", "IMG_" SubPat1+1 ".JPG")
	Send, ^v{enter}
	return
}

pagezoomLU(a,aa,b,bb,c,cc,d,dd)
{
	sleep 200
	loop, %a%
	{
		send,{%aa%}
	}
	loop, %b%
	{
		send,{%bb%}
	}
	loop, %c%
	{
		send,{%cc%}
	}
	loop, %d%
	{
		send,{%dd%}
	}
	send,{-}
	send, {left 4}
	return
}

pageRU(a,aa,b,bb)
{
	sleep 200

	loop, %a%
	{
		send,{%aa%}
	}
	loop, %b%
	{
		send,{%bb%}
	}
	return
}

pageDown(a,aa)
{
	loop, %a%
	{
		send,{%aa%}
	}
	return
}
