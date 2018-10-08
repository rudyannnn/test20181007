
#3::
loop 500
{
sleep 500
send {pgdn}
}
return
#2:: reload

Numpad1:: nextpage("pgdn",5,"+",17,"left",4,"right",15,"up")
Numpad2:: pagezoomLU(5,"+",17,"left",4,"right",15,"up")
Numpad3:: pageRU(28,"right",31,"up")
Numpad0:: pageDown(16,"down")

#Numpad1:: nextpage("pgup",5,"+",19,"right",4,"left",15,"down")
#Numpad2:: pagezoomLU(5,"+",17,"right",4,"left",15,"down")
#Numpad3:: pageRU(28,"left",31,"down")
#Numpad0:: pageDown(16,"up")


nextpage(pgdn,a,aa,b,bb,c,cc,d,dd)
{
sleep 200
send,{%pgdn%}
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