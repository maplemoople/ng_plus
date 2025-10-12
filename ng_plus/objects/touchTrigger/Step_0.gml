

switch state{
	case closed:
		if(!place_meeting(x,y,obj_player)){
			once = false;
		}
		break;
	case open:
		if !audio_is_playing(aDoorMoving) audio_play_sound(aDoorMoving,1,true)
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
		break;
	case top:
		if(!place_meeting(x,y,obj_player)){
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
		break;
	case stop:
		if place_meeting(x,y,obj_player){
			if oneTimeSound{
				audio_play_sound(aButtonPress,1,false);
				oneTimeSound = false
			}
		}	else {
			oneTimeSound = true
				
			}
		break;
}
if (place_meeting(x,y,obj_player) && state%4 == 0 && !ontop && ready == false){
		audio_play_sound(aButtonPress,1,false);
		state++;
		currentTime = timerLength
		ready = true
		with(objName) {state++;}
		if obj2 {with(objName2) {state++;}}
		if obj3 {with(objName3) {state++;};}
		if obj4 {with(objName4) {state++;}}
		if obj5 {with(objName5) {state++;}}
		ontop = true
}
if (!place_meeting(x,y-1,obj_player)) ontop = false;

if timer == true && ready == true{
	if currentTime > 0{
		currentTime--
	}else {
		state++
		with(objName) {state++;}
		if obj2 {with(objName2) {state++;}}
		if obj3 {with(objName3) {state++;};}
		if obj4 {with(objName4) {state++;}}
		if obj5 {with(objName5) {state++;}}
		ready = false
	}
		
}
	