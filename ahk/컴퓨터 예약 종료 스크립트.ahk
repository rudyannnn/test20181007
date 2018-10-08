#NoTrayIcon  
mm=10
ss=000
flag=0
Gui, -resize -MaximizeBox
Gui, font, s13 w700
Gui, Add, text,xm+0 ym+0 w30 right vmm,10
Gui, Add, text,xm+30 ym+0 w27 vssl,:00
Gui, font, s10 w400
Gui, Add, text,xm+57 ym+4 w15 vssr,0
Gui, font, s8 w400
Gui, Add, Button,xm+85 ym+0  w35,추가
Gui, Add, Button,xm+130 ym+0 w35 vstop Disabled Hidden,중지
Gui, Add, Button,xm+130 ym+0 w35 vstart,시작
Gui, show, center w195 h35,자동종료
return
Button추가:
envadd,mm,10
if mm>180
 {
 mm=10
 ss=000
 }
StringLen,lenss,ss
if lenss=2
 ss=0%ss%
if lenss=1
 ss=00%ss%
StringLeft,ssl,ss,2
StringRight,ssr,ss,1
GuiControl,Text,mm,%mm%
GuiControl,Text,ssl,:%ssl%
GuiControl,Text,ssr,%ssr%
return
Button중지:
SetTimer, time, off
SetTimer, Blink, off
Gui,flash,off
GuiControl,disable,stop
GuiControl,hide,stop
GuiControl,enable,start
GuiControl,Show,start
return
 
Button시작:
GuiControl,disable,start
GuiControl,hide,start
GuiControl,enable,stop
GuiControl,Show,stop
SetTimer, time, 100
SetTimer, Blink, 500
flag=0
return

time:
envsub,ss,1
if ss<0
 {
 ss:=599
 envsub,mm,1
 }
if (mm<1 and flag=0)
 {
 flag=1
 SetTimer, Blink, 200
 }
if (mm>=1 and flag=1)
 {
 flag=0
 SetTimer, Blink, 500
 }
if mm<0
 {
 Gui, destroy

loop
{
 Shutdown, 9
 sleep,600000
 Shutdown, 13
 exitapp
}

 }
StringLen,lenss,ss
if lenss=2
 ss=0%ss%
if lenss=1
 ss=00%ss%
StringLeft,ssl,ss,2
StringRight,ssr,ss,1
GuiControl,Text,mm,%mm%
GuiControl,Text,ssl,:%ssl%
GuiControl,Text,ssr,%ssr%
return
Blink:
Gui, flash
return
GuiClose:
Gui, destroy
ExitApp
return