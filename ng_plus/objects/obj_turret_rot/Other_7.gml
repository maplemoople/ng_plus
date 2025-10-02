with (instance_create_layer(x + bulletx,y - bullety,"Bullets", funnyBullet)){
	owner = other.id
	speed = owner.bulletSpeed
	direction = other.image_angle
	image_angle = direction;
	grv = owner.bulletGrav
}
audio_stop_sound(aBulletShoot)
audio_play_sound(aBulletShoot,1,false)
		