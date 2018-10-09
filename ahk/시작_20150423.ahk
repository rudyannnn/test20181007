
/*
!s:: ;; 패밀리데이 근태 조사
	WinActivate, Global HR - Windows Internet Explorer provided
	click, left, 605, 86
	click, left, 605, 86
	sleep, 50
	send, {down}
	sleep, 200
	click, left, down, 453, 300
	click, left, up, 519, 300
	sleep, 50
	send, ^{c}
	WinActivate, Microsoft Excel - 조직일별근태현황상세_OLED TV 회로설계1팀_20150508_v0.1_d-0904707182b84286_40f4-m.xlsx
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

#g::
	IfWinExist Global Portal -
	{
		WinActivate
		WinWaitActive, Global Portal -
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
		;WinWaitActive, 빈 페이지 - Windows Internet Explorer provided
		run, http://portal.lgdisplay.com:8080
		sleep, 200
;		WinGetPos, , ,Width, , 
;		sleep, 2200
;		Width+=-1288+1150
;		Click,Left,%Width%,150
		Click,Left,898,113
		Click,Left,898,113
	}
	return

!g::									;;;;;;;; ERP 시작
	IfWinExist Global Portal - Microsoft Internet Explorer
	{
		WinActivate
		WinWaitActive,  Global Portal - Microsoft Internet Explorer
		sleep, 200
		WinGetPos, , ,Width, , 
		sleep, 200
		Width+=-958+838
		Click,Left,%Width%,122
		sleep, 500
		WinGetPos, , ,Width, , 
		Width+=-958+736
		Click,Left,%Width%,303
		WinWaitActive, http://erp
		sleep, 200
		Click, left, 149,212

	}
	return

`::	;via 뚫을때 layer 원복
	
	MouseGetPos, Mouse_X, Mouse_Y, , ,
	widthh=%widthhh%
	widthh-=220
	click,left, %widthh%,150
	MouseMove,%Mouse_X%, %Mouse_Y%
	return

f1::	;Line Width 조정
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
f3::	; 수직 선긋기
	IfWinExist Xrcmd: 원격 실행 결과
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




#i::	;인물정보
	IfWinExist Microsoft Excel - 매크로 관리중_업체연락처  [호환 모드]
	{
	    WinActivate
	}
	else
	{
		run, D:\2. 업무\1. 규격& 양식\12. 업체 연락처\매크로 관리중_업체연락처.xls
	}
	return

#u::	;U-Dock 새문서 등록
	IfWinExist u-DocK - Windows Internet Explorer provided
	{
    WinActivate
click, left,333,183
WinWaitActive, u-DocK - 문서 등록하기 - Windows Internet Explorer provided
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
WinWaitActive, 빈 페이지 - Windows Internet Explorer provided
run, http://edms.lgdisplay.com:8080/Servlet/MainContent.do
WinWaitActive, u-DocK - Windows Internet Explorer provided
click, left,333,183
WinWaitActive, http://edms
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


;#f::	
;	IfWinExist Q-Dir 3.29
;	{
;		WinActivate
;		return
;	}
;	else
;	{
;		run, D:\2. 사제\Q-Dir\Q-Dir.exe
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


;^2::				;GMA 상우 이동
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
;^3::				;GMA 좌하 이동
;				MouseClick, left, 453, 94		; 시설 조회
;				Sleep, 900
;				MouseClick, left, 258, 215		; 시설 선택
;				Sleep, 100
;				MouseClick, left, 172, 504		; 시작시간 선택
;				Sleep, 300
;				send, {End}
;				Sleep, 100
;				send, {PgUp 5}
;				MouseClick, left, 178, 480		; 시간 선택
;				Sleep, 100
;				MouseClick, left, 445, 505		; 선택키 누름
;				Sleep, 100
;				MouseClick, left, 446, 554		; Sub 창 종료
;				Sleep, 100
;				WinWaitActive,  http://bizsupport
;				Sleep, 100
;				MouseClick, left, 242, 250		; 이용목적 입력 클릭
;				clipboard=All In 
;				Send, ^v				; 이용목적 입력
;				MouseClick, left, 699, 399		; 이용인원수 클릭
;;				Sleep, 100
;				send, {Numpad9}				; 이용인원수 입력
;				MouseClick, left, 794, 402		; 이용인원수 체크
;				WinWaitActive, Microsoft Internet Explorer
;				;Sleep, 100
;				MouseClick, left, 89, 96		; 확인
;				Sleep, 100
;				MouseClick, left, 737, 632		; 신청
;				Sleep, 100
;				send, {Enter}
;return


^2::				;mini 라우팅 이동
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



;#3::
;	IfWinExist 사외 발신메일 선택사항 -- 웹 페이지 대화 상자
;	{
;	    WinActivate
;	}
;		
;	click,left, 321,249 ;; 업무메일
;	sleep,50
;	click,left, 146,531
;	sleep,50
;	clipboard=샘플요청
;	Send, ^v
;	click,left, 187,643
;	sleep,50
;	clipboard=보안사항 없음
;	Send, ^v

;	return

;3::	; 원자재 물청 자재구분
;	click 2
;	sleep, 100
;	Send, {WheelDown}
;	return
;#3::	; 원자재 물청 행 추가하기
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



;#3::	;;창바꾸어 다음것 복사
;	Send, {AltDown}{Tab}{AltUp}
;	sleep, 100
;	Send, {Enter}
;	Send, {F2}
;	Send, {ShiftDown}{Home}{ShiftUp}
;	Send, {CtrlDown}{c}{CtrlUp}
;	Send, {AltDown}{Tab}{AltUp}
;	return
;#4::	;;셀 선택시 클립보드 복사
;	Send, {F2}
;	Send, {ShiftDown}{Home}{ShiftUp}
;	Send, {CtrlDown}{c}{CtrlUp}
;	Send, {AltDown}{Tab}{AltUp}
;	return

/*
#4:: 		; 시료정보를 캘린더에서 메모장으로 복사
		send, {tab}
		sleep, 30
		send, {tab}
		sleep, 30
		send, {enter}
		sleep, 1000
		click, left, 255, 623 ; 설명 선택
		sleep, 30
		send, ^{a}
		send, ^{c}
		winactivate, Microsoft Excel - 최종검사_MV14_시료위치포함(20140422)_USL포함_20140422_1130_v0.1  [호환 모드]
		send, ^{v}
		send, {enter}
		winactivate, Google 캘린더 - Chrome
		click, left, 238, 239 ; 제목 복사
		click, left, 238, 239 ; 제목 복사
		send, ^{a}
		send, ^{c}		
		click, left, 153,189 ; 저장
		return
*/

/*
#z::	;;LEA 재작업
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

#w::							;셀 회색
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

#^w::							;셀 연노란색
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

#!w::							;셀 하늘색
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

#!s::							;;;;; Painter에 화면 캡쳐 항상위
	Run, C:\WINDOWS\system32\mspaint.exe
	Sleep, 500
	Send, {CtrlDown}v{CtrlUp}
	WinSet, AlwaysOnTop, On, 제목 없음 - 그림판
	return

;#s::							;;;;; 팀회의 부재자 색깔 음영넣기
;	Send, {AltDown}of{AltUp}
;	WinWaitActive, 글꼴
;	click,left, 446,166
;	Sleep, 300
;	click,left, 446,241
;	Sleep, 100
;	click,left, 507,40
;	return
;!#a::							;;;;; 설문 대상자 찾아 선택하기
;	Send, {CtrlDown}c{CtrlUp}
;	Send, {AltDown}{tab}{AltUp}
;	Send, {CtrlDown}f{CtrlUp}
;	Send, {CtrlDown}v{CtrlUp}
;	return	




^!c::
	Loop
	{
		sleep, 50000
		Send, {CtrlDown}c{CtrlUp}
	}

#y::							;;;;; 파형 ppt에 옮기기
	Send, {AltDown}o{AltUp}
	Sleep, 200
	Send, i
	Sleep, 200
	Send, {Left}
	Sleep, 200
	Send, {tab}
	Sleep, 200
	clipboard=14		;;; 우측상단
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
	clipboard=1		;;; 좌측하단
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
	clipboard=14		;;; 우측하단
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
	clipboard=1		;;; 좌측상단
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

+^a::								;;;새문서 등록 EDM
	IfWinExist 새문서 등록
	{
		Click,Left,623,178		;;업무분류
		WinWaitActive 문서관리시스템 - 업무분류 - Microsoft Internet Explorer
		sleep, 3000
		Click,Left,53,99		;;분류체계
		sleep, 150
		Click,Left,34,129		;;트리1
		sleep, 150
		Click,Left,53,149		;;트리2
		sleep, 150
		Click,Left,140,186		;;트리3
		sleep, 150
		Click,Left,239,473		;;확인
		sleep, 150
		WinWaitActive 새문서 등록
		Click,Left,172,436		;;승인권자
		clipboard=김세영
		Send, {CtrlDown}v{CtrlUp}
		sleep, 200
		Send, {Down}{Down}{Down}{Down}{Down}{Down}
		Send, {Enter}
		sleep, 200
		Click,Left,196,534		;;보고받는자
		clipboard=김세영
		Send, {CtrlDown}v{CtrlUp}
		sleep, 200
		Send, {Down}{Down}{Down}{Down}{Down}{Down}
		sleep, 200
		Send, {Enter}
		MouseMove,310,652
	}
	IfWinExist http://edms.l
	{
		Click,Left,616,169		;;업무분류
		WinWaitActive http://edm
		sleep, 3000
		Click,Left,36,125		;;트리1
		sleep, 150
		Click,Left,51,145		;;트리2
		sleep, 150
		Click,Left,71,162		;;트리3
		sleep, 150
		Click,Left,139,179		;;트리4
		sleep, 150
		Click,Left,235,468		;;확인
		sleep, 150
		WinWaitActive 새문서 등록
		Click,Left,156,447		;;승인권자
		clipboard=김세영
		Send, {CtrlDown}v{CtrlUp}
		sleep, 200
		Send, {Down}{Down}{Down}{Down}{Down}{Down}{Down}
		Send, {Enter}
		sleep, 2000
		Click,Left,156,543		;;보고받는자
		clipboard=김세영
		Send, {CtrlDown}v{CtrlUp}
		sleep, 500
		Send, {Down}{Down}{Down}{Down}{Down}{Down}
		sleep, 200
		Send, {Enter}
		MouseMove,310,652
	}
	return

#p::								;; 회로도 오리기
		Click,Left,206,43		;; 자르기
		Send,{altdown}l{altup}
		clipboard=3			;; 왼쪽
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}r{altup}
		clipboard=2			;; 오른쪽
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}t{altup}
		clipboard=2			;; 위
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}b{altup}
		clipboard=2			;; 아래
		Send, {CtrlDown}v{CtrlUp}
		Click,Left,101,43		;; 크기
		Send,{altdown}a{altup}		;; 가로 세로 비율 고정
		Send,{altdown}e{altup}		;; 높이
		clipboard=26.67
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}d{altup}		;; 너비
		clipboard=35.56
		Send, {CtrlDown}v{CtrlUp}
		Click,Left,156,43		;; 위치
		Send,{altdown}h{altup}
		clipboard=0			
		Send, {CtrlDown}v{CtrlUp}
		Send,{altdown}v{altup}
		clipboard=0		
		Send, {CtrlDown}v{CtrlUp}
		MouseMove,182,355
		return


/*  ;;;; 연속 클릭하기
#9::
	while(1000)
	{
		Click,446,625
		Sleep, 200
	}
	return

*/

;;;;;;;;http://circuitcalculator.com/wordpress/2006/01/31/pcb-trace-width-calculator


SetTimer, timechange, 100
return

timechange:
user_hour = 22		;시각 keyin
user_min = 0		;분 keyin
user_sec = 0		;초 keyin
;SoundBeep
/*
if A_Hour = %user_hour%
{
	if A_Min = %user_min%
	{										
		if A_Sec = %user_sec%
		{
			sleep, 100
			MouseClick, left, 453, 94		; 시설 조회
			Sleep, 600
			MouseClick, left, 258, 215		; 시설 선택
			Sleep, 100
			MouseClick, left, 172, 504		; 시작시간 선택
			Sleep, 300
			send, {End}
			Sleep, 100
			send, {PgUp 5}
			MouseClick, left, 178, 480		; 시간 선택
			Sleep, 100
			MouseClick, left, 445, 505		; 선택키 누름
			Sleep, 100
			MouseClick, left, 446, 554		; Sub 창 종료
			Sleep, 100
			WinWaitActive,  http://bizsupport.
			Sleep, 100
			MouseClick, left, 242, 250		; 이용목적 입력 클릭
			clipboard=All In One TDR 팀내 경기
			Send, ^v				; 이용목적 입력
			MouseClick, left, 699, 399		; 이용인원수 클릭
			Sleep, 100
			send, {Numpad9}				; 이용인원수 입력
			MouseClick, left, 794, 402		; 이용인원수 체크
			WinWaitActive, Microsoft Internet Explorer
			Sleep, 100
			MouseClick, left, 89, 96		; 확인
			Sleep, 100
			MouseClick, left, 737, 632		; 신청
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

::btw::by the way

^!r::reload 
^!x::exitapp
