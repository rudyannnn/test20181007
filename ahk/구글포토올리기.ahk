﻿foldertree=D:\ahk\기본.ahk

#2::reload
#3::MouseGetPos, Mouse_X, Mouse_Y,,,
#4::send, click, %Mouse_X%, %Mouse_Y%  {;}{;}{;}{;}{;}
#5::window_get_title()
#6::ClipBoardPaste()
f3::uploadGooglephoto()
f4::AfterUpload()
;;;;;;;;;;;;;;;;;;;;;;
;;;;;여기에 함수를 작성합시다.



;;;;;;;;;;;;;;;;;;;;;;

AfterUpload()
{
	sleep 300
	click, 115, 962  ;;;;; 앨범 만들기
	sleep 4000
	click, 383, 403  ;;;;; 새 앨범
	sleep 5000
	click, 289, 362  ;;; 제목 입력하기
	sleep 300
	send ^v
	sleep 300
	click, 55, 171  ;;; 체크 누르기
	sleep 300
	click, 200, 692  ;;; 첫사진 클릭
	sleep 1000
	click, 905, 85  ;;; 즐겨찾기 클릭
	return
}

uploadGooglephoto()
{
	sleep 30
	loop 1
	{
		send {down}
		sleep 300
		send {f2}
		sleep 300
		send ^c
		sleep 300
		send {enter}
		sleep 300
		send {enter}
		sleep 300
		send ^a
		sleep 1000
		click, down, 863, 322  ;;;
		sleep 300
		click, up, 1148, 390  ;;;
		sleep 100
	}
	return
}

window_get_title()
{
	WinGetTitle, clipboard, A
	return
}

^e::edit %foldertree%



ClipBoardPaste()
{

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
}


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
			MouseClick, left, 453, 94	

	; 시설 조회
			Sleep, 600
			MouseClick, left, 258, 215	

	; 시설 선택
			Sleep, 100
			MouseClick, left, 172, 504	

	; 시작시간 선택
			Sleep, 300
			send, {End}
			Sleep, 100
			send, {PgUp 5}
			MouseClick, left, 178, 480	

	; 시간 선택
			Sleep, 100
			MouseClick, left, 445, 505	

	; 선택키 누름
			Sleep, 100
			MouseClick, left, 446, 554	

	; Sub 창 종료
			Sleep, 100
			WinWaitActive,  

http://bizsupport.lgdisplay.com:3100 - OneClick - 

Microsoft Internet Explorer
			Sleep, 100
			MouseClick, left, 242, 250	

	; 이용목적 입력 클릭
			clipboard=All In One TDR 

팀내 경기
			Send, ^v			

	; 이용목적 입력
			MouseClick, left, 699, 399	

	; 이용인원수 클릭
			Sleep, 100
			send, {Numpad9}			

	; 이용인원수 입력
			MouseClick, left, 794, 402	

	; 이용인원수 체크
			WinWaitActive, Microsoft 

Internet Explorer
			Sleep, 100
			MouseClick, left, 89, 96	

	; 확인
			Sleep, 100
			MouseClick, left, 737, 632	

	; 신청
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

/*

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