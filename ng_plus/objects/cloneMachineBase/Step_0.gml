with rednub{
	if place_meeting(x,y-1,obj_player){
		owner.ontop = true;
	} else owner.ontop = false;
}


if ontop{
	if !wuh{
	weener = audio_play_sound(aCloneSpawn,0,0,oSoundController.sfxVolume,(image_index%12)/10)
	wuh = 1;
	}
	
	if image_index < 37 && !allSpawned{
		image_speed = 1;
		if image_index >= 12 && spawn1 == false{
			with(instance_create_layer(x-20,y,"Player",fakePlayer)){
					image_blend = c_red
					owner = other.id;
					owner.id1 = object_index;
					image_speed = 0;
				}
			spawn1 = true;
			checkpoint = 13
			wuh = 0
			Lives++
		}
		if image_index >= 24 && spawn2 == false{
			with(instance_create_layer(x,y+15,"Player",fakePlayer2)){
					image_blend = c_red
					owner = other.id;
					owner.id2 = object_index;
					image_speed = 0;
				}
			spawn2 = true;
			checkpoint = 25
			wuh = 0
			Lives++
		}
		if image_index >= 36 && spawn3 == false{
			with(instance_create_layer(x+20,y,"Player",fakePlayer3)){
					image_blend = c_red
					owner = other.id
					owner.id3 = object_index
					image_speed = 0
				}
			spawn3 = true;
			checkpoint = 1
			image_index = checkpoint - 1;
			image_speed = 0;
			allSpawned = true;
			Lives++
		}
	}
} else{
	if image_index >= checkpoint{
		image_speed = -1
	} else {
		image_speed = 0;
		image_index = checkpoint - 1;
	}
	wuh = 0;
	audio_stop_sound(weener)
}

 if Lives == 0 && allSpawned{
		image_speed = 0;
		image_index = checkpoint - 1;
		allSpawned = false; 
		wuh = 0;
		spawn1 = false; 
		spawn2 = false; 
		spawn3 = false;
}




