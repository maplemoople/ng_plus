switch state{
	case closed:
		image_index = 0;
		image_speed = 0;
		if guh >= 0{
			guh--;
		} else {
			guh = 90
			state = open
		}
		break;
	case open:
		image_speed = 1;
		if(image_index >= 29){
			state = top;
		}
		break;
	case top:
		image_index = 29;
		image_speed = 0;
		if guh >= 0{
			guh--;
		} else {
			guh = 90
			state = bottom
		}
		break;
	case bottom:
		image_speed = -25;
		if image_index <= 5{
			image_speed = 0;
			audio_play_sound(adoorSlam,1,0)
			screenShake(2,3)
			state = closed
		}
		break;
}
