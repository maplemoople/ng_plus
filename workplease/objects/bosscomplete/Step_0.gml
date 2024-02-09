

switch state{
	case closed:
		image_index = 0
		connection.image_index = 0;
		connection.image_speed = 0;
		if obj_player.goback == Boss1{
			bossDead = 1;
			bossButton.state = dead;
			bossButton2.state = dead;
			bossButton3.state = dead;
			bossButton4.state = dead;
			bossButton5.state = dead;
			bossButton6.state = dead;
		}
		break;
	case open:
		if !audio_is_playing(aDoorMoving) audio_play_sound(aDoorMoving,1,true)
		image_index = 2;
		connection.image_speed = 1;
		if(connection.image_index >= 40){
			audio_stop_sound(aDoorMoving)
			audio_play_sound(aDoorStop,1,false)
			state = top;
		}
		break;
	case top:
		image_index = 0
		connection.image_speed = 0;
		break;
}
if (state == closed && bossButton.state == 1 && bossButton2.state == 1 && bossButton3.state == 1 && bossButton4.state == 1 && bossButton5.state == 1 && bossButton6.state == 1){
	state = open;
	explode = 1;
	obj_player.goback = Boss1;
	oTimeStart.start = 0;
	oTimeController.boss1End = 1;
	oTimeController.boss1Time = oTimeController.cTime;
	oTimeController.boss1Deaths = obj_player.currentDeaths;
	oTimeController.boss1LetterScore = oTimeController.letterScore;
	oTimeController.cTime = 0;
	oTimeController.currentDeaths = 0;
	saveData.saved = 0;
}