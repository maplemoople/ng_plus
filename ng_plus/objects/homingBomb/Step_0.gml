radDir = direction * pi/180;
hsp = velocity * cos(radDir);
vsp = velocity * sin(radDir);

with(light){
		x = owner.x + owner.hsp
		y = owner.y - owner.vsp
		direction = owner.direction
		if owner.startBoom{
			image_speed = 	lerp(image_speed,2,2/150)
			if owner.countdown <20{
				image_speed = 0;
				image_index = 1;
			}
		}
}

//horizontal collision
if (place_meeting(x+hsp, y, obj_wall)){
	while (!place_meeting(x+sign(hsp),y,obj_wall)){
		x = x + sign(hsp);
	}
	hsp = 0;
	startBoom = 1;
} else 	x += hsp;

//vertical collision
if (place_meeting(x, y-vsp, obj_wall)){
	while (!place_meeting(x,y-sign(vsp),obj_wall)){
		y = y - sign(vsp);
		}
		vsp = 0;
		startBoom = 1;
}  else y -= vsp;
	

if !collision_line(x, y, obj_player.x, obj_player.y,obj_wall,false, false){
	direction += angle_difference(point_direction(x,y,obj_player.x,obj_player.y),direction) * 0.1
} else {
	mp_potential_step_object(obj_player.x,obj_player.y, velocity/pi,obj_wall);
}

if startBoom{
	countdown--
	if countdown <= 3{
		image_xscale = power(abs(countdown-4),1.465)
		image_yscale = power(abs(countdown-4),1.465)
		screenShake(5,5)
	}
	if countdown <= 0{
		repeat(60){
			with (instance_create_layer(x,y,"Bullets",pBulletP)){
				image_blend = c_red	
			}
		}
		instance_destroy(light)
		instance_destroy()
	}
	if countdown <20{
		image_blend = c_red
	}
	velocity = lerp(velocity,0,2/300)
} else 	velocity = 0.85;

