

switch state{
	case closed:
		if(!place_meeting(x,y,objTrigger)){
			once = false;
		}
		break;
	case open:
		if !audio_is_playing(aDoorMoving) audio_play_sound(aDoorMoving,1,true)
		if(objName.state%2 == 0){
			audio_stop_sound(aDoorMoving)
			audio_play_sound(aDoorStop,1,false)
			state = top;
		}
		if obj2{
			if objName2.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}
		}
		break;
	case top:
		if(!place_meeting(x,y,objTrigger)){
			once = false;
		}
		
		break;
	case bottom:
		if !audio_is_playing(aDoorMoving) audio_play_sound(aDoorMoving,1,true)
		if objName.image_index <= 1{
		}
		if(objName.state%2 == 0){
			audio_stop_sound(aDoorMoving)
			audio_play_sound(aDoorStop,1,false)
			state = closed;

		}
		if obj2{
			if objName2.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}	
		}
		break;
}
if (place_meeting(x,y,objTrigger) && objName.state == stateToChange && !ontop){
		audio_play_sound(aButtonPress,1,false);
		state++;
		objName.state++;
		if obj2 {objName2.state++;}
		ontop = true
		
}
if (!place_meeting(x,y,objTrigger)) ontop = false;