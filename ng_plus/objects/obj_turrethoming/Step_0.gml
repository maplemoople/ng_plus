if image_index >= 6{
	if !collision_line(x, y, obj_player.x, obj_player.y,obj_wall,false, false){	
		if !instance_exists(myBomb){
			with (instance_create_layer(x,y,"Bullets", homingBomb)){
				owner = other.id
				owner.myBomb = id
				initVelocity = owner.initVelocity
				Velocity = owner.Velocity
				direction = other.image_angle - 90
				image_angle = direction;
			}
			image_speed = shootspeed
			image_index = 0;
			audio_stop_sound(aBulletShoot)
			audio_play_sound(aBulletShoot,1,false)
		} 
	} 
	if collision_line(x, y, obj_player.x, obj_player.y,obj_wall,false, false) || instance_exists(myBomb){
		image_speed = 0
	}
} else image_speed = shootspeed
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
		
//if collision_line(x, y, obj_player.x, obj_player.y,obj_wall,false, false) && image_index == 7{
//	image_speed = 0;
//} else image_speed = 1;