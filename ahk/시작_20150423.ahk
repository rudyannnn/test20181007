
/*
!s:: ;; �йи����� ���� ����
	WinActivate, Global HR - Windows Internet Explorer provided by LG Display
	click, left, 605, 86
	click, left, 605, 86
	sleep, 50
	send, {down}
	sleep, 200
	click, left, down, 453, 300
	click, left, up, 519, 300
	sleep, 50
	send, ^{c}
	WinActivate, Microsoft Excel - �����Ϻ�������Ȳ��_OLED TV ȸ�μ���1��_20150508_v0.1_d-0904707182b84286_40f4-m.xlsx
	send, {enter}
	send, ^{v}
	return
*/

widthhh=2560
highttt=1600

loop, 50000 
{ 
send, {NumLock} 
send, {NumLock} 
sleep, 20000 
} 

#c::

	send, ^{insert}

		Click,Left,down,382, 1439
		Click,right,down,382, 1439
		sleep, 300
		Click,Left,up,382, 1439
		Click,right,up,382, 1439
		sleep, 300
		Send, {down}
		sleep, 100
		Send, {down}
		sleep, 100
		Send, {down}
		sleep, 100
		Send, {right}
		sleep, 100
		Send, {down}
		sleep, 100
		Send, {down}
		sleep, 100
		Send, {enter}
		sleep, 100

	sleep 200
	send, {esc}
	sleep 200
	send, {esc}
	sleep 200
	send, ^{f}
	sleep 200
	send, +{insert}
	sleep 200

	loop 3
	{
		send, {enter}
		sleep 2500
		MouseClickDrag, right, 275, 688, 859, 290
		sleep, 100
		MouseClickDrag, right, 275, 688, 859, 290
		sleep, 100
		MouseClickDrag, right, 275, 688, 859, 290
		sleep, 100
		MouseClickDrag, right, 275, 688, 859, 290
		sleep, 2500
	}

	return

#s::
	loop 3
	{
		send, {enter}
		sleep 2000
		MouseClickDrag, right, 275, 688, 859, 290
		sleep, 100
		MouseClickDrag, right, 275, 688, 859, 290
		sleep, 100
		MouseClickDrag, right, 275, 688, 859, 290
		sleep, 100
		MouseClickDrag, right, 275, 688, 859, 290
		sleep, 2000
	}

	return

!^d::
	loop 19
	{
		send {home}
		sleep 50
		send {right}
		sleep 50
		send {right}
		sleep 50
		send {X}
		sleep 50
		send {enter}
		sleep 50
	}
	return

;f1::
;		WinActivate,::: LG Display PLM System ::: - Microsoft Internet Explorer
;		click,left, 433, 233
;		Send, {Ctrldown}a{Ctrlup}
;		Send, {Ctrldown}v{Ctrlup}
;		Send, {Enter}
;		sleep, 500
;		click,left, 419,325
;		sleep, 500
;		MouseMove, 630,384
;		return

#g::
	IfWinExist LGD Global Portal -
	{
		WinActivate
		WinWaitActive, LGD Global Portal -
		sleep, 200
;		WinGetPos, , ,Width, , 
;		sleep, 200
;		Width+=-1288+1150
;		Click,Left,%Width%,150
		Click,Left,898,113
		Click,Left,898,113
	}
	else
	{
		;run, C:\Program Files\Internet Explorer\IEXPLORE.EXE
		;WinWaitActive, �� ������ - Windows Internet Explorer provided by LG Display
		run, http://portal.lgdisplay.com:8080
		WinWaitActive, LGD Global Portal -
		sleep, 200
;		WinGetPos, , ,Width, , 
;		sleep, 2200
;		Width+=-1288+1150
;		Click,Left,%Width%,150
		Click,Left,898,113
		Click,Left,898,113
	}
	return

!g::									;;;;;;;; ERP ����
	IfWinExist LGD Global Portal - Microsoft Internet Explorer
	{
		WinActivate
		WinWaitActive, LGD Global Portal - Microsoft Internet Explorer
		sleep, 200
		WinGetPos, , ,Width, , 
		sleep, 200
		Width+=-958+838
		Click,Left,%Width%,122
		sleep, 500
		WinGetPos, , ,Width, , 
		Width+=-958+736
		Click,Left,%Width%,303
		WinWaitActive, http://erp.lgdisplay.com:8000/OA_HTML/sso_index.jsp - Microsoft Internet Explorer
		sleep, 200
		Click, left, 149,212

;		WinWaitActive, Oracle Applications Home Page - Microsoft Internet Explorer
;
;
;		WinGetPos, , ,Width, , 
;		sleep, 200
;		Width+=-1288+1150
;		Click,Left,%Width%,150
;	}
;	else
;	{
;		run, C:\Program Files\Internet Explorer\IEXPLORE.EXE
;		WinWaitActive, �� ������ - Windows Internet Explorer provided by LG Display
;		run, http://portal.lgdisplay.com:8080
;		WinWaitActive, LGD Global Portal - Microsoft Internet Explorer
;		sleep, 200
;		WinGetPos, , , Width, , 
;		sleep, 2000
;		Width+=-1288+1150
;		Click,Left,%Width%,150
	}
	return

`::	;via ������ layer ����
	
	MouseGetPos, Mouse_X, Mouse_Y, , ,
	widthh=%widthhh%
	widthh-=220
	click,left, %widthh%,150
	MouseMove,%Mouse_X%, %Mouse_Y%
	return

f1::	;Line Width ����
	MouseGetPos, Mouse_X, Mouse_Y, , ,
	widthh=%widthhh%
	widthh-=200 
	click,left,%widthh%,128
	MouseMove,%Mouse_X%, %Mouse_Y%
	return

/*

f2::	;add via
	MouseGetPos, Mouse_X, Mouse_Y, , ,
	widthh=%widthhh%
	widthh-=130
	click,left,%widthh%, 636
	MouseMove,%Mouse_X%, %Mouse_Y%
	return

f5::	; cut fill
	MouseGetPos, Mouse_X, Mouse_Y, , ,
	widthh=%widthhh%
	widthh-=130 
	click,left,%widthh%,706
	MouseMove,%Mouse_X%, %Mouse_Y%
	return

*/
/*
f3::	; ���� ���߱�
	IfWinExist Xrcmd: ���� ���� ���
	{
		MouseGetPos, Mouse_X, Mouse_Y, , , 
		sleep, 100
		MouseMove, Mouse_X, Mouse_Y+100
		sleep, 100
		click,left
		sleep, 100
		MouseMove,Mouse_X, Mouse_Y+300
		sleep, 100
		click,left
		sleep, 100
		MouseMove,%Mouse_X%, %Mouse_Y%
	}
	else
	{
		send,{f3}
	}
	return
*/




#i::	;�ι�����
	IfWinExist Microsoft Excel - ��ũ�� ������_��ü����ó  [ȣȯ ���]
	{
	    WinActivate
	}
	else
	{
		run, D:\2. ����\1. �԰�& ���\12. ��ü ����ó\��ũ�� ������_��ü����ó.xls
	}
	return

#u::	;U-Dock ������ ���
	IfWinExist u-DocK - Windows Internet Explorer provided by LG Display
	{
    WinActivate
click, left,333,183
WinWaitActive, u-DocK - ���� ����ϱ� - Windows Internet Explorer provided by LG Display
sleep,1000
click, left,271,173
sleep,100
click, left,242,298
sleep,100
click, left,176,369
sleep,100
click, left,281,359
sleep,100
click, left,232,474
sleep,100
click, left,206 438
sleep,500
click, left,56 466
sleep,100
click, left,187, 458
sleep,100
click, left,548,173

}
else
{
run, C:\Program Files\Internet Explorer\IEXPLORE.EXE
WinWaitActive, �� ������ - Windows Internet Explorer provided by LG Display
run, http://edms.lgdisplay.com:8080/Servlet/MainContent.do
WinWaitActive, u-DocK - Windows Internet Explorer provided by LG Display
click, left,333,183
WinWaitActive, http://edms.lgdisplay.com:8080/?service=create_in_web&node_key=&node_type= - u-DocK - ���� ����ϱ� - Windows Internet Explorer provi
sleep,3000
click, left,271,173
sleep,100
click, left,242,298
sleep,100
click, left,176,369
sleep,100
click, left,281,359
sleep,100
click, left,232,474
sleep,100
click, left,206 438
sleep,500
click, left,56 466
sleep,100
click, left,187, 458
sleep,100
click, left,548,173


	}
	return
/*
#n::
	IfWinExist ���̹� :: ������ ��� ����, ���̹� - Microsoft Internet Explorer
	{
	    WinActivate
	}
	else
	{
		run, C:\Program Files\Internet Explorer\IEXPLORE.EXE
		WinWaitActive, �� ������ - Windows Internet Explorer provided by LG Display
		run, http://www.naver.com
	}
	return
*/

#!l::
	clipboard=jyj70@lgdisplay.com, poohhj@lgdisplay.com, ssy0817@lgdisplay.com, csh03@lgdisplay.com
	Send, ^v
	return
;
; ���
;
;���ǿ�C
;1part : �ڻ��C, �迬��J, �̻���Y, ���ȲY, �ӽ���Y, ������J, ����ȣY, ��ȣ��Y, ������J, �輱ȯY, ������C, ����öJ
;2part : �����S, �����J, �����J, �̽���Y, ������J, �̿���Y, �����Y, ������J, ������J, ������Y, ������Y, ������J
;3part : ������J, �ּ���Y, ������C, ����ȣJ, ������Y, �ſ���Y, �ɼҿ�Y, ���ȯJ, ���¿�J, �輼��Y
;4part : ȫ��äS, ������S, ��ȿ��S, �Ӽ�ȣJ, �̰��Y, �輺��J, ���¿�Y, ��â��J, ���ּ�Y, ������Y
;
;D1109DTV55121	LC550WUL-SBM2-831
;D1109DTV55092	LC550WUL-SBM1-831 *
;D1109DTV55122	LC550WUL-SBM3-831 *
;
;A0308DTV47007	LC470WUL-SBM3-731
;D1109DTV47091 	LC470WUL-SBM1-732
;D1109DTV47119 	LC470WUL-SBM4-731 *
;D1109DTV47120 	LC470WUL-SBM3-732 *
;
;D1109DTV42112 	LC420WUL-SBM2-731 *
;
;D1109DTV47275	LC470DUD-SCM1-831 *
;
;D1109DTV47267	LC470MUT-SCA1-731 *
;D1109DTV55206	LC550MUT-SCA1-831		6060L-1628A B/A P/N
;D1109DTV55236	LC550EUB-SCA1-831 *       6060L-1619A B/A P/N
;D1109DTV55406	LC550EUB-SCA1-83Q *
;D1110DTV55582  LC550EUD-SCA1-831 *

;D1109DTV55483	LC550DUS-SCM1-831
;D1110DTV55543	LC550EUH-SCA1-831

;D1110DAA55760	LC550DUC-SDM1-831
;D1110DAA55806	LC550DUT-SDA1-831	6060L-2224A

;D4110D12XX267  All In One TDR ���� PJT
;D1111DAA55BRU  LC550LUD-MEP1-L31
;D1112DAA55CJT  LC550LUD-MEP2-L31
;D1113DAA55ALK  LC550LUD-LGP1-831

#t::
	clipboard=OLED TV ȸ�μ���1��
	Send, ^v
	return

#^1::
	clipboard=D1110DTV55582		;LC550EUB-SCA1-831 ������Ʈ �ڵ�
	Send, ^v
	return
#^t::
	clipboard=47090
;;;;;;	clipboard=40073			;LGDKRA.TV LED ȸ�μ����� �ڵ�
;;;;;;;;;D1109DTV55495 			;;; LGDKRA.TV ȸ�μ���2�� �ڵ�
	Send, ^v
	return


#k::
	clipboard=foroscar,mj.lee,kbh83,yikim80,rooney,invictus,juranlee ; ������, �̹���, ���ȯ, �迵��, �����, ������, ���ֶ�
	Send, ^v
	return

!#k::
	clipboard=������, �迵��, ���ϱ�, ������, ������, �����, �����, ���̶�, õ����, ���ֶ�, ����ö, ������, �̻���, �̻���, ������, ����ȯ, ������, �Ⱥ���
	Send, ^v
	return

#h::
	IfWinExist AutoHotkey Tutorial: Macro and Hotkey Creation -
	{
		WinActivate
		return
	}
	else
	{
		run, C:\Program Files\Internet Explorer\IEXPLORE.EXE
		WinWaitActive, �� ������ - Windows Internet Explorer provided by LG Display
		run, http://v1.autohotkey.co.kr/
	}
	return

;#f::	
;	IfWinExist Q-Dir 3.29
;	{
;		WinActivate
;		return
;	}
;	else
;	{
;		run, D:\2. ����\Q-Dir\Q-Dir.exe
;	}
;	return

#f::
	while(1000)
	{	
	IfWinExist Configuration Operation Status
	{
	}
	else
	{
		SoundBeep
		SoundBeep
		SoundBeep
		SoundBeep
		SoundBeep
		SoundBeep
		SoundBeep
		return
	}
	sleep, 1000
	}
		SoundBeep
		SoundBeep
		SoundBeep
		SoundBeep
		SoundBeep
		SoundBeep
		SoundBeep
		return
	
	

#v::	run, C:\Program Files\AutoHotkey\AU3_Spy.exe

#a::	run, C:\Program Files\AHNSOFT\ancamera3\Ancamera3

!m::	
	{
		Run, Notepad.exe 
		WinWaitActive, ahk_class Notepad
		WinSet, AlwaysOnTop, On, ahk_class Notepad
		return
	}

#n::	
	{
		WinGetActiveTitle, Title
		WinSet, AlwaysOnTop, On, %Title%
		return
	}
!#n::	
	{
		WinGetActiveTitle, Title
		WinSet, AlwaysOnTop, Off, %Title%
		return
	}

#!c::	run, C:\WINDOWS\System32\calc.exe


;^2::				;GMA ��� �̵�
;	loop 6
;	{
;		sleep, 50
;		send, {up}
;	}
;	loop 9
;	{
;		sleep, 50
;		send, {right}
;	}
;	return
;
;
;^3::				;GMA ���� �̵�
;				MouseClick, left, 453, 94		; �ü� ��ȸ
;				Sleep, 900
;				MouseClick, left, 258, 215		; �ü� ����
;				Sleep, 100
;				MouseClick, left, 172, 504		; ���۽ð� ����
;				Sleep, 300
;				send, {End}
;				Sleep, 100
;				send, {PgUp 5}
;				MouseClick, left, 178, 480		; �ð� ����
;				Sleep, 100
;				MouseClick, left, 445, 505		; ����Ű ����
;				Sleep, 100
;				MouseClick, left, 446, 554		; Sub â ����
;				Sleep, 100
;				WinWaitActive,  http://bizsupport.lgdisplay.com:3100 - OneClick - Microsoft Internet Explorer
;				Sleep, 100
;				MouseClick, left, 242, 250		; �̿���� �Է� Ŭ��
;				clipboard=All In One TDR ���� ���
;				Send, ^v				; �̿���� �Է�
;				MouseClick, left, 699, 399		; �̿��ο��� Ŭ��
;;				Sleep, 100
;				send, {Numpad9}				; �̿��ο��� �Է�
;				MouseClick, left, 794, 402		; �̿��ο��� üũ
;				WinWaitActive, Microsoft Internet Explorer
;				;Sleep, 100
;				MouseClick, left, 89, 96		; Ȯ��
;				Sleep, 100
;				MouseClick, left, 737, 632		; ��û
;				Sleep, 100
;				send, {Enter}
;return


^2::				;mini ����� �̵�
	loop 4
	{
		sleep, 50
		send, {down}
	}
	loop 9
	{
		sleep, 50
		send, {right}
	}
	return


!1::
	clipboard=LC650LQD-GJP1-831-S
	send {f8}
	return

;#1::	
;	clipboard=LC550LUD-LGP1-831
;	Send, ^v
;	return
;#1::	
;	loop,1
;	{
;		Send, ^{insert}
;		Send, {enter}
;		sleep, 50
;		Send, +{insert}
;		Send, {enter}
;		sleep, 50
;	}
;	return

;#2::	
;	loop,10
;	{
;		Send, {del}
;		Send, {C}
;		Send, {?}
;;		Send, {enter}
;		sleep, 50
;	}
;	return


!#1::
	clipboard=LC770LQD-LGP1-L31
	Send, ^v
	return

!2::	
	clipboard=LC650LQD-GHP7-Y31-S
	Send, ^v
	return

;;;;LC550LUD-LGP1-831  ;; D1113DAA55ALK


;#3::
;	IfWinExist ��� �߽Ÿ��� ���û��� -- �� ������ ��ȭ ����
;	{
;	    WinActivate
;	}
;		
;	click,left, 321,249 ;; ��������
;	sleep,50
;	click,left, 146,531
;	sleep,50
;	clipboard=���ÿ�û
;	Send, ^v
;	click,left, 187,643
;	sleep,50
;	clipboard=���Ȼ��� ����
;	Send, ^v

;	return

;3::	; ������ ��û ���籸��
;	click 2
;	sleep, 100
;	Send, {WheelDown}
;	return
;#3::	; ������ ��û �� �߰��ϱ�
;	click
;	sleep, 5000
;	click
;	sleep, 5000
;	click
;	sleep, 5000
;	click
;	sleep, 5000
;	click
;	sleep, 5000
;	click
;	sleep, 5000
;	click
;	sleep, 5000
;	click
;	sleep, 5000
;	SoundBeep
;	return

;`::	; ���ޱ��� ������ �ѱ��
;	IfWinExist http://lms.lgacademy.com - Cyber Academy -
;	{
;		WinActivate
;		sleep, 100
;		click,left, 976, 734
;	}
;	else
;	{
;		send, {`}
;	}
;	return

!#3::	
	clipboard=LC550EUD-SCA
	Send, ^v
	return

;#3::	;;â�ٲپ� ������ ����
;	Send, {AltDown}{Tab}{AltUp}
;	sleep, 100
;	Send, {Enter}
;	Send, {F2}
;	Send, {ShiftDown}{Home}{ShiftUp}
;	Send, {CtrlDown}{c}{CtrlUp}
;	Send, {AltDown}{Tab}{AltUp}
;	return
;#4::	;;�� ���ý� Ŭ������ ����
;	Send, {F2}
;	Send, {ShiftDown}{Home}{ShiftUp}
;	Send, {CtrlDown}{c}{CtrlUp}
;	Send, {AltDown}{Tab}{AltUp}
;	return

/*
#4:: 		; �÷������� Ķ�������� �޸������� ����
		send, {tab}
		sleep, 30
		send, {tab}
		sleep, 30
		send, {enter}
		sleep, 1000
		click, left, 255, 623 ; ���� ����
		sleep, 30
		send, ^{a}
		send, ^{c}
		winactivate, Microsoft Excel - �����˻�_MV14_�÷���ġ����(20140422)_USL����_20140422_1130_v0.1  [ȣȯ ���]
		send, ^{v}
		send, {enter}
		winactivate, Google Ķ���� - Chrome
		click, left, 238, 239 ; ���� ����
		click, left, 238, 239 ; ���� ����
		send, ^{a}
		send, ^{c}		
		click, left, 153,189 ; ����
		return
*/

/*
#z::	;;LEA ���۾�
	Run, C:\Users\Administrator\Desktop\I2C_Editor_rework_140610\i2c_write_A0.exe
	sleep, 500
	clipboard = L.txt
	Send, {f8}
	sleep, 100
	send, {enter}
	sleep, 500
	Run, C:\Users\Administrator\Desktop\I2C_Editor_rework_140610\i2c_read_A0.exe
	sleep, 500
	clipboard = 20140612.txt
	Send, {f8}
	sleep, 100
	send, {enter}
	sleep, 500
	clipboard = 452
	Send, {f8}
	sleep, 100
	send, {enter}
	sleep, 500
	Send, #{r}
	sleep, 100
	clipboard = C:\Users\Administrator\Desktop\I2C_Editor_rework_140610\20140612.txt
	send, ^{v}
	sleep, 100
	send, {enter}
	sleep, 3000
	loop, 14
	{
		send, {pgdn}
		sleep, 100
	}
	return

*/


!#4::	
	clipboard=LC550EUH-SCA1-871
	Send, ^v
	return

#w::							;�� ȸ��
;	Send, {AltDown}ora{AltUp}
;	Sleep, 30
;	Send, {ShiftDown}{Space}{ShiftUp}
;	Sleep, 30
	Send, {CtrlDown}1{CtrlUp}
	Sleep, 70
	click,left,269,41
	Sleep, 30
	Send, {Tab}{Up}{Up}{Up}{Up}{Up}{Up}
	Sleep, 30
	Send, {Enter}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
	return

#^w::							;�� �������
;	Send, {AltDown}ora{AltUp}
;	Sleep, 30
;	Send, {ShiftDown}{Space}{ShiftUp}
;	Sleep, 30
	Send, {CtrlDown}1{CtrlUp}
	Sleep, 70
	click,left,269,41
	Sleep, 70
	click,left,70, 200
	Sleep, 70
	click,left,275,329
	return

#!w::							;�� �ϴû�
	Send, {CtrlDown}1{CtrlUp}
	Sleep, 500
	click,left,262,43
	Sleep, 80
	Send, {Tab}{Up}{Up}{Up}{Up}{Up}{Left}{Left}
	Sleep, 30
	Send, {Enter}{Tab}{Tab}{Tab}{Tab}{Tab}{Enter}
	Sleep, 30
	Send, {f2}
	Sleep, 30
	Send, {CtrlDown};{CtrlUp}
	Sleep, 30
	Send, {space}
	Sleep, 30
	Send, {CtrlDown}{ShiftDown};{CtrlUp}{ShiftUp}
	return

#!s::							;;;;; Painter�� ȭ�� ĸ�� �׻���
	Run, C:\WINDOWS\system32\mspaint.exe
	Sleep, 500
	Send, {CtrlDown}v{CtrlUp}
	WinSet, AlwaysOnTop, On, ���� ���� - �׸���
	return

;#s::							;;;;; ��ȸ�� ������ ���� �����ֱ�
;	Send, {AltDown}of{AltUp}
;	WinWaitActive, �۲�
;	click,left, 446,166
;	Sleep, 300
;	click,left, 446,241
;	Sleep, 100
;	click,left, 507,40
;	return
;!#a::							;;;;; ���� ����� ã�� �����ϱ�
;	Send, {CtrlDown}c{CtrlUp}
;	Send, {AltDown}{tab}{AltUp}
;	Send, {CtrlDown}f{CtrlUp}
;	Send, {CtrlDown}v{CtrlUp}
;	return	

!#a::	run, http://edms.lgdisplay.com:8080/Servlet/ContentViewCmd.document?object_id=090470718000c7c2&update_log=0&rendition_type=0&url_copy=1





^!c::
	Loop
	{
		sleep, 50000
		Send, {CtrlDown}c{CtrlUp}
	}

#y::							;;;;; ���� ppt�� �ű��
	Send, {AltDown}o{AltUp}
	Sleep, 200
	Send, i
	Sleep, 200
	Send, {Left}
	Sleep, 200
	Send, {tab}
	Sleep, 200
	clipboard=14		;;; �������
	Send, ^v
	Sleep, 200
	Send, {tab}
	Sleep, 200
	Send, {tab}
	Sleep, 200
	clipboard=2.5
	Send, ^v
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, {ShiftDown}{tab}{ShiftUp}
	Sleep, 200
	Send, {AltDown}o{AltUp}
	Sleep, 200
	Send, i
	Sleep, 200
	Send, {Left}
	Sleep, 200
	Send, {tab}
	Sleep, 200
	clipboard=1		;;; �����ϴ�
	Send, ^v
	Sleep, 200
	Send, {tab}
	Sleep, 200
	Send, {tab}
	Sleep, 200
	clipboard=10
	Send, ^v
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, {ShiftDown}{tab}{ShiftUp}
	Sleep, 200
	Send, {AltDown}o{AltUp}
	Sleep, 200
	Send, i
	Sleep, 200
	Send, {Left}
	Sleep, 200
	Send, {tab}
	Sleep, 200
	clipboard=14		;;; �����ϴ�
	Send, ^v
	Sleep, 200
	Send, {tab}
	Sleep, 200
	Send, {tab}
	Sleep, 200
	clipboard=10
	Send, ^v
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, {ShiftDown}{tab}{ShiftUp}
	Sleep, 200
	Send, {AltDown}o{AltUp}
	Sleep, 200
	Send, i
	Sleep, 200
	Send, {Left}
	Sleep, 200
	Send, {tab}
	Sleep, 200
	clipboard=1		;;; �������
	Send, ^v
	Sleep, 200
	Send, {tab}
	Sleep, 200
	Send, {tab}
	Sleep, 200
	clipboard=2.5
	Send, ^v
	Sleep, 200
	Send, {Enter}
	Sleep, 200

+^a::								;;;������ ��� EDM
	IfWinExist ������ ���
	{
		Click,Left,623,178		;;�����з�
		WinWaitActive ���������ý��� - �����з� - Microsoft Internet Explorer
		sleep, 3000
		Click,Left,53,99		;;�з�ü��
		sleep, 150
		Click,Left,34,129		;;Ʈ��1
		sleep, 150
		Click,Left,53,149		;;Ʈ��2
		sleep, 150
		Click,Left,140,186		;;Ʈ��3
		sleep, 150
		Click,Left,239,473		;;Ȯ��
		sleep, 150
		WinWaitActive ������ ���
		Click,Left,172,436		;;���α���
		clipboard=�輼��
		Send, {CtrlDown}v{CtrlUp}
		sleep, 200
		Send, {Down}{Down}{Down}{Down}{Down}{Down}
		Send, {Enter}
		sleep, 200
		Click,Left,196,534		;;����޴���
		clipboard=�輼��
		Send, {CtrlDown}v{CtrlUp}
		sleep, 200
		Send, {Down}{Down}{Down}{Down}{Down}{Down}
		sleep, 200
		Send, {Enter}
		MouseMove,310,652
	}
	IfWinExist http://edms.lgdisplay.com:8080 - ���������ý��� - ���� ���� - Microsoft Internet Explorer
	{
		Click,Left,616,169		;;�����з�
		WinWaitActive http://edms.lgdisplay.com:8080 - ���������ý��� - �����з� - Microsoft Internet Explorer
		sleep, 3000
		Click,Left,36,125		;;Ʈ��1
		sleep, 150
		Click,Left,51,145		;;Ʈ��2
		sleep, 150
		Click,Left,71,162		;;Ʈ��3
		sleep, 150
		Click,Left,139,179		;;Ʈ��4
		sleep, 150
		Click,Left,235,468		;;Ȯ��
		sleep, 150
		WinWaitActive ������ ���
		Click,Left,156,447		;;���α���
		clipboard=�輼��
		Send, {CtrlDown}v{CtrlUp}
		sleep, 200
		Send, {Down}{Down}{Down}{Down}{Down}{Down}{Down}
		Send, {Enter}
		sleep, 2000
		Click,Left,156,543		;;����޴���
		clipboard=�輼��
		Send, {CtrlDown}v{CtrlUp}
		sleep, 500
		Send, {Down}{Down}{Down}{Down}{Down}{Down}
		sleep, 200
		Send, {Enter}
		MouseMove,310,652
	}
	return

#p::								;; ȸ�ε� ������
		Click,Left,206,43		;; �ڸ���
		Send,{altdown}l{altup}
		clipboard=3			;; ����
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}r{altup}
		clipboard=2			;; ������
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}t{altup}
		clipboard=2			;; ��
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}b{altup}
		clipboard=2			;; �Ʒ�
		Send, {CtrlDown}v{CtrlUp}
		Click,Left,101,43		;; ũ��
		Send,{altdown}a{altup}		;; ���� ���� ���� ����
		Send,{altdown}e{altup}		;; ����
		clipboard=26.67
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}d{altup}		;; �ʺ�
		clipboard=35.56
		Send, {CtrlDown}v{CtrlUp}
		Click,Left,156,43		;; ��ġ
		Send,{altdown}h{altup}
		clipboard=0			
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}v{altup}
		clipboard=0		
		Send, {CtrlDown}v{CtrlUp}
		MouseMove,182,355
		return


/*  ;;;; ���� Ŭ���ϱ�
#9::
	while(1000)
	{
		Click,446,625
		Sleep, 200
	}
	return

*/

;;;;;;;;http://circuitcalculator.com/wordpress/2006/01/31/pcb-trace-width-calculator

;;;;;;;;413-811 ��⵵ ���ֽ� ���ո� ������ 1007���� LG���÷���(��) TV ȸ�μ��� 2�� �輼��

;;;;;;;;413-811 ��⵵ ���ֽ� ���ո� ������ 1007���� LG���÷���(��) OLED TV ȸ�μ��� 1��

;;;;;;;;413-811 ��⵵ ���ֽ� ���ո� ������ 1007���� LG���÷���(��)  All In One TDR �輼��

;TV Circuti Design 2 Team, LG Display Co., Ltd.
;1007, Deogeun-ri, Wollong-myeon, Paju-si
;Gyeonggi-do, 413-811, Korea
;T. 82-31-933-7654 M. 82-10-3921-7931 F. 82-31-933-7308


; ������ ö���� ������ ���� 2�� 669-1


SetTimer, timechange, 100
return

timechange:
user_hour = 22		;�ð� keyin
user_min = 0		;�� keyin
user_sec = 0		;�� keyin
;SoundBeep
/*
if A_Hour = %user_hour%
{
	if A_Min = %user_min%
	{										
		if A_Sec = %user_sec%
		{
			sleep, 100
			MouseClick, left, 453, 94		; �ü� ��ȸ
			Sleep, 600
			MouseClick, left, 258, 215		; �ü� ����
			Sleep, 100
			MouseClick, left, 172, 504		; ���۽ð� ����
			Sleep, 300
			send, {End}
			Sleep, 100
			send, {PgUp 5}
			MouseClick, left, 178, 480		; �ð� ����
			Sleep, 100
			MouseClick, left, 445, 505		; ����Ű ����
			Sleep, 100
			MouseClick, left, 446, 554		; Sub â ����
			Sleep, 100
			WinWaitActive,  http://bizsupport.lgdisplay.com:3100 - OneClick - Microsoft Internet Explorer
			Sleep, 100
			MouseClick, left, 242, 250		; �̿���� �Է� Ŭ��
			clipboard=All In One TDR ���� ���
			Send, ^v				; �̿���� �Է�
			MouseClick, left, 699, 399		; �̿��ο��� Ŭ��
			Sleep, 100
			send, {Numpad9}				; �̿��ο��� �Է�
			MouseClick, left, 794, 402		; �̿��ο��� üũ
			WinWaitActive, Microsoft Internet Explorer
			Sleep, 100
			MouseClick, left, 89, 96		; Ȯ��
			Sleep, 100
			MouseClick, left, 737, 632		; ��û
			Sleep, 100
			send, {Enter}
		}
	}
}
*/

if A_Hour = %user_hour%
{
	if A_Min = %user_min%
	{										
		if A_Sec = %user_sec%
		{
			MouseClick, left, 570, 444
			Sleep, 50
			send, {Enter}
		}
	}
}
return

;/*
f8::

		StringLen, Length_str, clipboard
		sleep, 50
		index_strLen = %Length_str%
		sleep, 50
		loop
		{
			if index_strLen = 0
				break
			StringMid, outputChar, clipboard, Length_str-index_strLen+1, 1
			send,{%outputChar%}
			index_strLen-=1
		}
		sleep, 200
	return
;*/

/*
f8::
	send,{backspace}
	send,{B}
	send,{enter}
	return
*/

::l53::LC550LUD-LGP3-831-S
::l54::LC550LUD-LGP4-831-S
::l55::LC550LUD-LGP5-831-S
::btw::by the way

^!r::reload 
^!x::exitapp