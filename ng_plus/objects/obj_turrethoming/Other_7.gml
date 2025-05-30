with (instance_create_layer(x,y,"Bullets", homingBomb)){
	owner = other.id
	velocity = owner.bulletSpeed
	direction = other.image_angle - 90
	image_angle = direction;
}
audio_stop_sound(aBulletShoot)
audio_play_sound(aBulletShoot,1,false)
		