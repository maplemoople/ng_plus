

switch state{
	case closed:
		if(!place_meeting(x,y-1,obj_player)){
			image_index = 0;
			once = false;
		}
		break;
	case open:
		if !audio_is_playing(aDoorMoving) audio_play_sound(aDoorMoving,1,true)
		image_index = 2;
		if(objName.state == top){
			audio_stop_sound(aDoorMoving)
			audio_play_sound(aDoorStop,1,false)
			if triggerOnce = false{
			state = top;
			} else state = stop
		}
		if obj2{
			if objName2.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}
		}
		break;
	case top:
		if(!place_meeting(x,y-1,obj_player)){
			image_index = 0
			once = false;
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
		if obj2{
			if objName2.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}	
		}
		break;
	case stop:
		if place_meeting(x,y-1,obj_player){
			image_index = 2
			if oneTimeSound{
				audio_play_sound(aButtonPress,1,false);
				oneTimeSound = false
			}
		}	else {
			oneTimeSound = true
			image_index = 0;
				
			}
		break;
}
if (place_meeting(x,y-1,obj_player) && state%2 == 0 && !ontop){
		audio_play_sound(aButtonPress,1,false);
		state++;
		objName.state++;
		if obj2 {objName2.state++;}
		ontop = true
}
if (!place_meeting(x,y-1,obj_player)) ontop = false;