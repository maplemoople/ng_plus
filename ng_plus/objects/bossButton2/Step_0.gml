
with(connection){
	turnAround.x = x
	turnAround.y = y
	vsp += grv
	image_xscale = sign(hsp) * 1
	turnAround.image_xscale = sign(hsp) * 1;
	if (instance_exists(owner.hitBox)){ owner.hitBox.image_xscale = sign(hsp) * 1}
	//horizontal collision
	if (place_meeting(x+hsp, y, obj_wall)){
		while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
		x = x + sign(hsp);
		}
		if owner.speedMode == true{
					turned = 1;
					hsp = 0.1 * sign(hsp);
					screenShake(1,5)
		}
		hsp = -hsp;
	}
	/*with(turnAround){
		if (place_meeting(x+owner.hsp, y, gtHitbox)){
			owner.hsp = -owner.hsp;
		}
		if (place_meeting(x+owner.hsp, y, gtTHitbox)){
			owner.hsp = -owner.hsp;
		}
		if (place_meeting(x+owner.hsp, y, gsHitbox)){
			if owner.owner.speedMode == true{
					owner.turned = 1;
					owner.hsp = 0.1 * sign(owner.hsp);
					screenShake(1,5)
		}
			owner.hsp = -owner.hsp;
		}
	} */
	if owner.speedMode == true {
		hsp = hsp * 1.07
	}
	x = x + hsp
	//vertical collision
	if (place_meeting(x, y+vsp, obj_wall)){
while (!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y + sign(vsp);
		}
		vsp = 0;
	} 
	y = y + vsp
}
		
with(hitBox){
	x = owner.x
	y = owner.y
}

image_index = 0;
with(spikey){
	x = owner.x
	y = owner.y
}
with(hitBox){
	x = owner.x
	y = owner.y
}
connection.image_speed = 0.75;
with(connection){
owner.spikey.image_xscale = sign(hsp) * 1;
owner.hitBox.image_xscale = sign(hsp) * 1;
}

switch state{
	case alive:
		break;
	case dead:
		wallLight.image_index = 1;
		audio_sound_gain(bossE1mel2,oSoundController.musicVolume,oSoundController.fadeSpeed)
		if bossComplete.explode == 1{
			attached = NaN;
			audio_play_sound(aDeath,1,false)
			audio_play_sound(aBulletDie,1,false)
			screenShake(2,3)
			repeat(10){
				instance_create_layer(x,y,"Bullets",EXPLOSION_PARTICLEP)
			}
			instance_destroy(spikey);
			instance_destroy(hitBox);
			instance_destroy(connection);
			instance_destroy();
		} /* else{
			image_index = 2;
			instance_destroy(spikey);
			instance_destroy(hitBox);
			if !connection.deActiv {
				if !connection.changed{
					connection.image_index = 0;
					connection.changed = 1;
				}
				connection.image_speed = 1;
				connection.sprite_index = bSpikeDeactivating;
				if (connection.image_index >= connection.image_number - 1){
					connection.deActiv = 1;
					connection.sprite_index = deadSprite;
					connection.image_speed = 1;
				}
			}
			connection.hsp = 0.2 * sign(connection.hsp)
			*/
		break;
}

if(instance_exists(attached) && state != dead){
	if (attached.image_xscale == 1) x = attached.x + 1; else x = attached.x - 1;
	y = attached.y - 3;
}
else { x = 500; y  = 500;}

if (place_meeting(x,y-1,obj_player) && obj_player.vsp >= 0 && state == alive){	
		audio_play_sound(aButtonPress,1,false)
		state++
}