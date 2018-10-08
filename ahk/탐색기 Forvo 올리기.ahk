foldertree=D:\ahk\탐색기 Forvo 올리기.ahk

numpad1::click 388, 1012  ;; 다시
numpad2::click 452, 1013  ;; 알맞음
numpad3::click 519, 1010  ;; 쉬움
numpad4::searchPron()
numpad5::inputankipron()
#2::reload
#3::MouseGetPos, Mouse_X, Mouse_Y,,,
#4::send, %Mouse_X%, %Mouse_Y%

numpad7::searchImage()
numpad8::imageupload()
numpad9::nextWord()

nextWord()
{
	winactivate 탐색기
	click 264, 141
	send {up}
	return
}

imageupload()
{
	sleep 300
	click 27, 65  ;; 이전 페이지
	sleep 300
	winactivate 탐색기
	sleep 100
	click 742, 492
	send {pgdn}{down}{down}{down}{down}{end}{enter}
	sleep 500
	send ^{v}
}

searchImage()
{
	sleep 500
	click 796, 436
	send {home}{shiftdown}{end}{shiftup}{ctrldown}{c}{ctrlup}{home}
	sleep 300
	click 1371, 34 ;; 구글 이미지 탭 클릭
	sleep 300
	send {home}
	sleep 500
	click 240, 221 ;; 검색창 클릭
	send ^a{del}^v{enter}
	click 884, 17

	sleep 1000

	loop 5  ;; 구글 검색창에서 다음 페이지 누르기
	{
		sleep 500
		click 1311, 71 ;; 번역 버튼
		sleep 300
		send {tab}{tab}{enter}

		sleep 3700
		loop 10
		{
			sleep 400
			send {shiftdown}{tab}{shiftup}
		}
		send {enter}
	}

	sleep 1700
	loop 5
	{
		sleep 300
		send !{left}
	}
}
	
	

searchPron()
{
	sleep 500
	click 796, 436
	send {home}{shiftdown}{end}{shiftup}{ctrldown}{c}{ctrlup}{home}
	sleep 300
	click 1178, 30 ;; 포르보 탭 2번째 클릭
	searchPronPart()
}

searchPronPart()
{
	sleep 300
	send {home}
	sleep 300
	click 402, 324	
	sleep 300
	send {ctrldown}{a}{ctrlup}{del}{ctrldown}{v}{ctrlup}{enter}
	sleep 4000
	click 66, 568
	sleep 3000
	send {home}
	loop 7
	{
		sleep 100
		send {down}
	}
	sleep 100
	click 250, 215
	sleep 2000
	click 247, 288
}

inputankipron()
{
	sleep 200
	winactivate 탐색기
	sleep 100
	click 742, 492
	send {pgdn}{down}{down}{down}{down}{end}{enter}
	sleep 500
	click 893, 353 ;; 첨부 버튼
	sleep 500
	click 266, 129
	send {enter}
}

^e::edit %foldertree%