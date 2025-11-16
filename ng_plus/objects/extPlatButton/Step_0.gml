

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
		if(objName.state%2 == 0){
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
		if obj3{
			if objName3.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}
		}
		if obj4{
			if objName4.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}
		}
		if obj5{
			if objName5.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}
		}
		if obj6{
			if objName6.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}
		}
		if obj7{
			if objName7.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}
		}
		if obj8{
			if objName8.state%2 == 0 && !once{
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
		if obj3{
			if objName3.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}	
		}
		if obj4{
			if objName4.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}	
		}
		if obj5{
			if objName5.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}	
		}
		if obj6{
			if objName6.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}	
		}
		if obj7{
			if objName7.state%2 == 0 && !once{
				audio_play_sound(aDoorStop,1,false)
				once = true;
			}	
		}
		if obj8{
			if objName8.state%2 == 0 && !once{
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
		with(objName) {state++;}
		if obj2 {with(objName2) {state++;}}
		if obj3 {with(objName3) {state++;};}
		if obj4 {with(objName4) {state++;}}
		if obj5 {with(objName5) {state++;}}
		if obj6 {with(objName6) {state++;}}
		if obj7 {with(objName7) {state++;}}
		if obj8 {with(objName8) {state++;}}
		ontop = true
}
if (!place_meeting(x,y-1,obj_player)) ontop = false;