if state == top {image_speed = 0} else{

	with (instance_create_layer(x,y,"Bullets", eBullet)){
		owner = other.id
		speed = owner.bulletSpeed
		direction = other.image_angle
		image_angle = direction;
		wallParticle = owner.wallParticle
	}
	audio_stop_sound(aBulletShoot)
	audio_play_sound(aBulletShoot,1,false)
}
		