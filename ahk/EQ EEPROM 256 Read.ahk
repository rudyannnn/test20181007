foldertree=D:\ahk\기본.ahk

#2::reload
#3::MouseGetPos, Mouse_X, Mouse_Y,,,
#4::send, %Mouse_X%, %Mouse_Y%

^e::edit %foldertree%

f3::eeprom_read()


eeprom_read()
{
	sleep 500
	loop 256
	{
		winactivate Microsoft Excel
		send {enter}{f2}+{home}^c
		winactivate NTP7515 
		click 310, 769
		click 310, 769  ;; 주소
		send {enter}^v{tab}{tab}{enter}
		sleep 300
		send +{tab}^c
		winactivate Microsoft Excel
		send {tab}^v
	}
	return
}