if (animation_end()){
	with (instance_create_layer(x,y,"Bullets", eBullet)){
		speed = 1.3
		direction = other.image_angle
		image_angle = direction;
	}
	audio_play_sound(aBulletShoot,1,false)
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