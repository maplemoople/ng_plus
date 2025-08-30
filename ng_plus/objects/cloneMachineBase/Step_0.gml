with rednub{
	if place_meeting(x,y-1,obj_player){
		owner.ontop = true;
	} else owner.ontop = false;
}

if ontop{
	if image_index < 37 && !allSpawned{
		image_speed = 1;
		if image_index >= 12 && spawn1 == false{
			with(instance_create_layer(x-20,y,"Player",fakePlayer)){
					owner = other.id;
					owner.id1 = object_index;
					image_speed = 0;
				}
			spawn1 = true;
			Lives ++
		}
		if image_index >= 24 && spawn2 == false{
			with(instance_create_layer(x,y+15,"Player",fakePlayer)){
					owner = other.id;
					owner.id2 = object_index;
					image_speed = 0;
				}
			spawn2 = true;
		Lives++
		}
		if image_index >= 36 && spawn3 == false{
			with(instance_create_layer(x+20,y,"Player",fakePlayer)){
					owner = other.id
					owner.id3 = object_index
					image_speed = 0
				}
			spawn3 = true;
			image_index = 37;
			image_speed = 0;
			allSpawned = true;
			Lives++
		}
	}
}

if Lives == 2 && allSpawned{
	if image_index < 49{
		image_speed  = 1
	} else {image_speed = 0; image_index = 49}
} else if Lives == 1 && allSpawned{
	if image_index < 61{
		image_speed  = 1
	} else {image_speed = 0; image_index = 61}
} else if Lives == 0 && allSpawned{
	if image_index < 73{
		image_speed  = 1
	} else {
		image_speed = 0; 
		image_index = 0;
		allSpawned = false; 
		spawn1 = false; 
		spawn2 = false; 
		spawn3 = false;
	}
}
