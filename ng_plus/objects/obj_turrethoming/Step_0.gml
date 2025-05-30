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

if (image_angle > 90) && (image_angle < 270)
		image_yscale = -1;
	else 
		image_yscale = 1;