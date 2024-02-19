
with(connection){
	image_xscale = sign(hsp) * 1
	//horizontal collision
	if (place_meeting(x+hsp, y, obj_wall)){
		while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
		x = x + sign(hsp);
		}
		hsp = -hsp;
	
	}
	
	/* TURNED OFF FOR BOSSFIGHT 1
	if (place_meeting(x+hsp, y, obj_wallvert)){
		hsp = -hsp;
	}
	*/
	
	x = x + hsp;

	//vertical collision
	if (place_meeting(x, y+vsp, obj_wall)){
while (!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y + sign(vsp);
		}
		vsp = 0;
	} 
	if (owner.freq < 360) owner.freq += 1; else owner.freq = 0;
	vsp = 0.1 * sin(owner.freq * pi * 2 /180)
	y = y + vsp
}

image_index = 0;
connection.image_speed = 1;
with(connection){
	shootCooldown--
	if (!shootCooldown && animation_end()){
		with (instance_create_layer(x + 50 * sin(hsp),y,"Bullets", eBullet)){
			if other.image_xscale == -1 direction = 270; else direction = 270;
			speed = 2
			image_angle = direction;
		}
		with (instance_create_layer(x - 50 * sin(hsp),y,"Bullets", eBullet)){
			if other.image_xscale == -1 direction = 270; else direction = 270;
			speed = 2
			image_angle = direction;
		}
		shootCooldown = 45 //frames
		audio_play_sound(aBulletShoot,1,false)
	}
}



switch state{
	case alive:
		break;
	case dead:
		audio_stop_sound(bossE5FT)
		wallLight.image_index = 1;
		if bossComplete.explode == 1{
			audio_play_sound(aDeath,1,false)
			audio_play_sound(aBulletDie,1,false)
			screenShake(2,3)
			repeat(10){
				instance_create_layer(x,y,"Bullets",EXPLOSION_PARTICLEP)
			}
			instance_destroy(connection);
			instance_destroy();
		} /*else{
			image_index = 2;
			connection.sprite_index = deadSprite;
			connection.image_speed = 1;
			connection.hsp = 0.2 * sign(connection.hsp)
		}*/
		break;
}

if(instance_exists(attached) && state != dead){
	if (attached.image_xscale == 1){ x = attached.x-0.3 y = attached.y - 4;} else{ x = attached.x - 0.5
	y = attached.y - 3;}
}
else { x = 500; y  = 500;}


if (place_meeting(x,y-1,obj_player) && obj_player.vsp >= 0 && state == alive){	
		audio_play_sound(aButtonPress,1,false)
		state++
}