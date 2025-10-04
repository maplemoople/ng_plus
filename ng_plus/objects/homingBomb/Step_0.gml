if trackcountdown > 0{
	trackcountdown--
} else {startTracking = true}
radDir = direction * pi/180;
hsp = initVelocity * cos(radDir);
vsp = initVelocity * sin(radDir);

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

with(visual){
	 	image_angle += power(owner.initVelocity*3,2)
		x = owner.x
		y = owner.y
		direction = owner.direction
		if owner.startBoom{
			sprite_index = spHomingBombExploding
		}
}

if startTracking{
	if !collision_line(x, y, obj_player.x, obj_player.y,obj_wall,false, false){
		direction += angle_difference(point_direction(x,y,obj_player.x,obj_player.y),direction) * 0.1
	} else {
		if !startBoom{
			mp_potential_step_object(obj_player.x,obj_player.y, Velocity/4,obj_wall);
		}
	}
}

if startBoom{
	sprite_index = spHomingBombExploding
	mask_index = spHomingBomb
	initVelocity = lerp(initVelocity,0,0.075)
} else {
		initVelocity = lerp(initVelocity,Velocity,0.03);
	}	
#region old
/*
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
	initVelocity = lerp(initVelocity,0,2/300)
} else 	initVelocity = 0.85;
*/

#endregion