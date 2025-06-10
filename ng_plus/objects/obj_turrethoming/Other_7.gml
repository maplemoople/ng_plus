/*
if !collision_line(x, y, obj_player.x, obj_player.y,obj_wall,false, false){	
	if !instance_exists(homingBomb){
		with (instance_create_layer(x,y,"Bullets", homingBomb)){
			owner = other.id
			velocity = owner.bulletSpeed
			direction = other.image_angle - 90
			image_angle = direction;
		}
		image_index = 0;
		image_speed = shootspeed
		audio_stop_sound(aBulletShoot)
		audio_play_sound(aBulletShoot,1,false)
	}
}
*/
