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
		if(image_index >= 19){
			state = top;
		}
		break;
	case top:
		image_index = 19;
		image_speed = 0;
		if guh >= 0{
			guh--;
		} else {
			guh = 90
			state = bottom
		}
		break;
	case bottom:
		image_speed = -15;
		if place_meeting(x,y+1,obj_player){
			obj_player.state = PLAYERSTATE.DEAD
		}
		if image_index <= 3{
			image_speed = 0;
			audio_play_sound(adoorSlam,1,0)
			screenShake(2,3)
			state = closed
		}
		break;
}
/*
with detector{
	if place_meeting(x,y,obj_player){
		if owner.state == owner.top{
			owner.state++
		}
	}
}
*/