
with(connection){
	image_xscale = sign(hsp) * 1
	if (instance_exists(owner.spikey)){ owner.spikey.image_xscale = sign(hsp) * 1}
	if (instance_exists(owner.hitBox)){ owner.hitBox.image_xscale = sign(hsp) * 1}
	//horizontal collision
	if (place_meeting(x+hsp, y, obj_wall)){
		while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
		x = x + sign(hsp);
		}
		turned = 1;
		hsp = 0.1 * sign(hsp);
		hsp = -hsp;
	
	}
	
	/* TURNED OFF FOR BOSSFIGHT 1 TURN ON AND CHANGE SOMETHING IF NEED BE
	if (place_meeting(x+hsp, y, obj_wallvert)){
		while (!place_meeting(x+sign(hsp),y,obj_wallvert)){
	
		x = x + sign(hsp);
		}
		turned = 1;
		hsp = 0.1 * sign(hsp);
		hsp = -hsp;
	}
	*/
	hsp = hsp * 1.05
	x = x + hsp;
	
/*	ADD JUST INCASE SOMETHING DOESNT WORK
	if turned{
		x = x + hsp;
		ramtime = 5;
		turned = 0;
	} else if ramtime > 0}{
		ramtime--;
	}
	if ramtime == 0{
		ramtime = -1;
		hsp = hsp * 1.01
	}
*/
	//vertical collision
	if (place_meeting(x, y+vsp, obj_wall)){
while (!place_meeting(x,y+sign(vsp),obj_wall)){
		y = y + sign(vsp);
		}
		vsp = 0;
	} 
//	if (owner.freq < 360) owner.freq += 1; else owner.freq = 0;
//	vsp = 0.1 * sin(owner.freq * pi * 2 /180)
	y = y + vsp
}
		
image_index = 0;
connection.image_speed = 0.75
with(hitBox){
	x = owner.x
	y = owner.y
}
with(spikey){
	x = owner.x
	y = owner.y
}		
		
switch state{
	case alive:
		break;
	case dead:
		wallLight.image_index = 1;
		audio_sound_gain(bossE6,oSoundController.musicVolume,oSoundController.fadeSpeed)
		
		if bossComplete.explode == 1{
			audio_play_sound(aDeath,1,false)
			audio_play_sound(aBulletDie,1,false)
			screenShake(2,3)
			repeat(10){
				instance_create_layer(x,y,"Bullets",EXPLOSION_PARTICLEP)
			}
			instance_destroy(hitBox);
			instance_destroy(spikey);
			instance_destroy(connection);
			instance_destroy();
		}/* else{
			image_index = 2;
			instance_destroy(hitBox);
			instance_destroy(spikey);
			if !connection.deActiv {
				if !connection.changed{
					connection.image_index = 0;
					connection.changed = 1;
				}
				connection.image_speed = 1;
				connection.sprite_index = bSpikeFDeactivating;
				if (connection.image_index >= connection.image_number - 2){
					connection.deActiv = 1;
					connection.sprite_index = deadSprite;
					connection.image_speed = 1;
				}
			}*/
		break;
}


if(instance_exists(attached) && state != dead){
	if (attached.image_xscale == 1) x = attached.x + 1; else x = attached.x - 0.5
	y = attached.y - 3;
}
else { x = 500; y  = 500;}

if (place_meeting(x,y-1,obj_player) && obj_player.vsp >= 0 && state == alive){	
		audio_play_sound(aButtonPress,1,false)
		state++
}