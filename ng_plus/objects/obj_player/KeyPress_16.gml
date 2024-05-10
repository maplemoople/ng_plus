/// @death
state = PLAYERSTATE.DEAD
oTimeStart.start = false;
oTimeStart.time = 0;
oTimeController.collected = 0;
room_goto(resetRoom)
if !blowup {
	currentDeaths = 0;
	audio_play_sound(aDeath,1,false)
	screenShake(2,3)
	repeat(6){
		instance_create_layer(x,y,"Bullets",pBulletP)
	}
	blowup = 1
	x = global.checkpoint_x;
	y = global.checkpoint_y;
	currentHp = maxHp
	}
hsp = 0;
vsp = 0;
image_speed = 1;
sprite_index = pAttackHB;
		
if currentHp > 0 state = PLAYERSTATE.FREE;