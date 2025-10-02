if (shootStart < 1){
	image_speed = shootspeed;
} else{
	shootStart--;
	image_speed = 0;
}

//moved shooting to animation end event :)

if currentHp < 0 {
	repeat(50){
		instance_create_layer(x,y,"Bullets",EXPLOSION_PARTICLE)
	}
	instance_destroy();
}


if !collision_line(x, y, obj_player.x, obj_player.y,obj_wall,false, false){
		direction += angle_difference(point_direction(x,y,obj_player.x,obj_player.y),direction) * 0.05
		image_angle = direction
}

radDir = direction * pi/180;
bulletx = bulletDist * cos(radDir)
bullety = bulletDist * sin(radDir)