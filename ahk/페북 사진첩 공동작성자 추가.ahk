
^2::reload

^3::
	edit, d:\ahk\페북 사진첩 공동작성자 추가.ahk
	return

^1::
	Click, left, 128, 867 ;공유사진첩으로 변경
	sleep 500
	Click, left, 128, 867 ;공유사진첩으로 변경
	sleep,2000
	send 김
	sleep,1000
	send {enter}
	sleep,200
	send 김
	sleep,1000
	send {down}{enter}
	sleep,200
	send 김
	sleep,1000
	send {down}{enter}
	sleep,200
	send 김
	sleep,1000
	send {down}{enter}
	sleep,200
	Click, left, 393, 530 ;공동작업자의 친구들
	sleep 500
	Click, left, 452, 610 ;공동작업자만
	mousemove, 790, 610
	return