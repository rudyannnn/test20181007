foldertree=D:\ahk\Forvo 올리기.ahk

numpad1::click 388, 1012  ;; 다시
numpad2::click 452, 1013  ;; 알맞음
numpad3::click 519, 1010  ;; 쉬움
numpad4::searchPron()
numpad5::inputankipron()
#2::reload
#3::MouseGetPos, Mouse_X, Mouse_Y,,,
#4::send, %Mouse_X%, %Mouse_Y%

numpad7::searchImage()
numpad8::NextPage()
numpad9::imageupload()

imageupload()
{
	sleep 300
	click 27, 65
	sleep 300
	winactivate Anki
	sleep 300
	click 42, 1016
	sleep 600
	click 32, 170
	send {pgdn}{down}{down}{down}{down}{end}{enter}^v
	sleep 2000
	click 451, 405
}

NextPage()
{
	sleep 1000

	loop 1  ;; 구글 검색창에서 다음 페이지 누르기
	{

		sleep 3700
		loop 10
		{
			sleep 400
			send {shiftdown}{tab}{shiftup}
		}
		send {enter}
		sleep 500
		click 297, 64 ;; 번역 버튼
		sleep 600
		send {tab}{tab}{enter}
	}

	sleep 1700
	loop 3
	{
		sleep 300
		send !{left}
	}
}
	

searchImage()
{
	winactivate Anki
	sleep 500
	click 1371, 34 ;; 구글 이미지 탭 클릭
	sleep 300
	send {home}
	sleep 500
	click 235, 172 ;; 검색창 클릭
	send ^a{del}^v{enter}
		sleep 1000


		sleep 500
		click 297, 64 ;; 번역 버튼
		sleep 600
		send {tab}{tab}{enter}
}
	
	

searchPron()
{
	sleep 500
	click 42, 1016
	sleep 600
	click 36, 115
	send {shiftdown}{end}{shiftup}{ctrldown}{c}{ctrlup}{home}
	sleep 300
	click 879, -244 ;; 포르보 탭 2번째 클릭
	searchPronPart()
}

searchPronPart()
{
	sleep 300
	send {home}
	sleep 300
	click 719, 267	
	sleep 300
	send {ctrldown}{a}{ctrlup}{del}{ctrldown}{v}{ctrlup}{enter}
	sleep 4500
	click 55, 483
	sleep 3000
	send {home}
	loop 11
	{
		sleep 100
		send {down}
	}
	sleep 100
	click 210, 153
	sleep 2000
	click 208, 124
}

inputankipron()
{
	sleep 200
	winactivate Anki
	winactivate 현재 카드 편집
	sleep 100
	click 32, 170
	send {pgdn}{down}{down}{down}{down}{end}{enter}
	sleep 500
	click 442, 60
	sleep 2000
	click 270, 103
	send {enter}
	sleep 300
	click 444, 407
	sleep 300
	winactivate Anki
}

^e::edit %foldertree%