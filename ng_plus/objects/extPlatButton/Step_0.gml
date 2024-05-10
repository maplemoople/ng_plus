

switch state{
	case closed:
		if(!place_meeting(x,y-1,obj_player)){
			image_index = 0
		}
		break;
	case open:
		if !audio_is_playing(aDoorMoving) audio_play_sound(aDoorMoving,1,true)
		image_index = 2;
		if(objName.state == top){
			audio_stop_sound(aDoorMoving)
			audio_play_sound(aDoorStop,1,false)
			state = top	
		}
		break;
	case top:
		if(!place_meeting(x,y-1,obj_player)){
			image_index = 0
		}
		break;
	case bottom:
		if !audio_is_playing(aDoorMoving) audio_play_sound(aDoorMoving,1,true)
		image_index = 2
		if objName.image_index <= 1{
		}
		if(objName.state == closed){
			audio_stop_sound(aDoorMoving)
			audio_play_sound(aDoorStop,1,false)
			state = closed;
		}
		break;
}
if (place_meeting(x,y-max(1,10),obj_player) && state%2 == 0 && !ontop){
		audio_play_sound(aButtonPress,1,false);
		state++;
		objName.state++;
		ontop = true
}
if (!place_meeting(x,y-max(1,10),obj_player)) ontop = false;