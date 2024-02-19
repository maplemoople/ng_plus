
if ammo == 0 {
	image_speed = 0
	image_index = 0
	reload--
}

if !reload {
	ammo = ammoMax
	reload = reloadTime
}

if (instance_exists(obj_player)){
	//if(obj_player.x < x) image_yscale = -image_yscale;
	if(point_distance(obj_player.x,obj_player.y,x,y) < 600) && (!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false)){
		image_angle = point_direction(x,y,obj_player.x, obj_player.y);
		
		countdown--;
		if(countdown <= 0) && (ammo > 0){
			countdown = countdownRate;
			ammo--;
			image_speed = 4/countdownRate
			with (instance_create_layer(x,y,"Bullets", eBullet)){
				speed = 15
				direction = other.image_angle
				image_angle = direction;
			}
		}
	} else 	
		image_index = 0
		image_speed = 0
	
}

if currentHp < 0 {
	repeat(50){
		instance_create_layer(x,y,"Bullets",EXPLOSION_PARTICLE)
	}
	instance_destroy();
}

if (image_angle > 90) && (image_angle < 270)
		image_yscale = -1;
	else 
		image_yscale = 1;