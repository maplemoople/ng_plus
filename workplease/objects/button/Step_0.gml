

switch state{
	case closed:
		if(!place_meeting(x,y-1,obj_player)){
			image_index = 0
		}
		connection.image_index = 0;
		connection.image_speed = 0;
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
		if(!place_meeting(x,y-1,obj_player)){
			image_index = 0
		}
		connection.image_index = 42
		connection.image_speed = 0;
		break;
	case bottom:
		if !audio_is_playing(aDoorMoving) audio_play_sound(aDoorMoving,1,true)
		image_index = 2
		connection.image_speed = -1;
		if connection.image_index <= 1{
			audio_stop_sound(aDoorMoving)
			audio_play_sound(aDoorStop,1,false)
			connection.image_speed = 0;
			state = closed
		}
}
if (place_meeting(x,y-max(1,10),obj_player) && obj_player.vsp > 0 && state%2 == 0){
		audio_play_sound(aButtonPress,1,false)
		state++
}
if obj_player.goback == Room10 state = top