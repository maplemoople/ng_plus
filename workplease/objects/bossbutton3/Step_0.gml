
with(connection){
	turnAround.x = x
	turnAround.y = y
	vsp += grv
	image_xscale = sign(hsp) * 1
	turnAround.image_xscale = sign(hsp) * 1;
	//Horizontal collision
	if (place_meeting(x+hsp, y, obj_wall)){
		while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
		x = x + sign(hsp);
		}
		hsp = -hsp;
	}
	with(turnAround){
		if (place_meeting(x+owner.hsp, y, gtHitbox)){
			owner.hsp = -owner.hsp;
		}
		if (place_meeting(x+owner.hsp, y, gsHitbox)){
			owner.hsp = -owner.hsp;
		}
	
	}
	x = x + hsp;

	//vertical collision
	if (place_meeting(x, y+vsp, obj_wall)){
while (!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y + sign(vsp);
		}
		vsp = 0;
	} 
	y = y + vsp
}
		
image_index = 0;
with(wheel){
	x = owner.x
	y = owner.y
}
with(hitBox){
	x = owner.x
	y = owner.y
}
connection.image_speed = 0.75;
with(connection){
owner.hitBox.image_xscale = sign(hsp) * 1;
owner.wheel.image_xscale = sign(hsp) * 1;
}
with(connection){
	shootCooldown--
	if (!shootCooldown && animation_end()){
		with (instance_create_layer(x + 80 * sin(hsp),y,"Bullets", eBullet)){
			if other.image_xscale == -1 direction = 180; else direction = 360;
			speed = 2
			image_angle = direction;
		}
		shootCooldown = 15 //frames
		audio_play_sound(aBulletShoot,1,false)
	}
}
		
switch state{
	case alive:
		break;
	case dead:
		audio_stop_sound(bossE3TT)
		if bossComplete.explode == 1{
			audio_play_sound(aDeath,1,false)
			audio_play_sound(aBulletDie,1,false)
			
			screenShake(2,3)
			repeat(10){
				instance_create_layer(x,y,"Bullets",EXPLOSION_PARTICLEP)
			}
			instance_destroy(wheel);
			instance_destroy(hitBox);
			instance_destroy(connection);
			instance_destroy();
		}/* else{
			image_index = 2;
			instance_destroy(wheel);
			instance_destroy(hitBox);
			connection.sprite_index = deadSprite;
			connection.image_speed = 1;
			connection.hsp = 0.2 * sign(connection.hsp)
			
		}*/
		break;
}

if(instance_exists(attached) && state != dead){
	if (attached.image_xscale == 1) x = attached.x + 1; else x = attached.x - 0.5
	y = attached.y - 2;
}
else { x = 500; y  = 500;}
if (place_meeting(x,y-1,obj_player) && obj_player.vsp >= 0 && state == alive){	
		audio_play_sound(aButtonPress,1,false)
		state++
}