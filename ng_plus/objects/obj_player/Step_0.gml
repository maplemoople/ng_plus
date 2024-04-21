#region controls/collision and other things
if object_exists(cPause){
	if !cPause.pause {
		controls();
	} else {
		left = false
		left1 = false
		leftM = false
		right = false
		right1 = false
		rightM = false
		jump = false
	}
} 
//check if held not if pressed
if (right) || (left){
	if (right){
		facing = 1;
	}
	else if (left){
		facing = -1;
	}
}
// check if pressed not held
if (right1) || (left1){
	if (right1){
		facing1 = 1;
	}
	else if (left1){
		facing1 = -1;
	}
}
//direction of attacks based on image_xscale
switch(image_xscale){
case -1: hitDir = 180 break;
case 1: hitDir = 360 break;
}
//some sounds
if (image_index = 1) && (sprite_index = pRun){
	audio_play_sound(aWalk,1,false);
}
	#region collision/ calculations
if(instance_exists(obj_wall)){
//horizontal collision
	if (place_meeting(x+hsp, y, playercollison)){
		while (!place_meeting(x+sign(hsp),y,playercollison)){
	
		x = x + sign(hsp);
		}
		hsp = 0;
	
	}
	x = x + hsp;

	//vertical collision
	var bruh = instance_place(x,y + max(1,vsp),playercollison);
	if sign(vsp) > 0{
		if (place_meeting(x, y + vsp, playercollison)){
			while (!place_meeting(x, y + sign(vsp),playercollison)){
				y += sign(vsp);
		}
			vsp = 0;
		if vsp = 0 {y = floor(y)}
		}
	}else{
		if (place_meeting(x, y + vsp, playercollison)){
			while (!place_meeting(x, y + sign(vsp),playercollison)){
				y += sign(vsp);
		}
			vsp = -vsp/5;
		}
	}
}
if instance_exists(obj_wallvert){
	var oneWayPlat = instance_place(x, y + max(1,vsp),obj_wallvert);
	var grounded = place_meeting(x,y+1, obj_wall) || (oneWayPlat && bbox_bottom <= oneWayPlat.bbox_top)
	if (oneWayPlat && bbox_bottom <= oneWayPlat.bbox_top){
		if (vsp > 0){
			while(!place_meeting(x,y+sign(vsp),obj_wallvert)){
				y += sign(vsp);
			}
		vsp = 0;
		}
		x += oneWayPlat.hsp;
		y += oneWayPlat.vsp;
		if grounded && jump{
			if oneWayPlat.hsp > 1.4{
				hsp += oneWayPlat.hsp * 3;
				vsp -= 10
			}
			if oneWayPlat.vsp < -5{
			vsp += oneWayPlat.vsp * 3
			}
		}
	}
} else
var grounded = place_meeting(x,y+1, obj_wall)
y = y + vsp
onTop = grounded;
#endregion
	
	
#endregion
switch (state){
	#region movement and calculations
	case PLAYERSTATE.FREE:
	deadTimer = 0
	blowup = 0
	if (hsp != 0)
		image_xscale = sign(hsp);
		var gAccel = .1;
		var gDeccel = .25;

		var airAccel = 0.09;
		var airDeccel = .1;

		if grounded
			Acceleration(gAccel,gDeccel,csp);
		else
			vsp += grv
			Acceleration(airAccel,airDeccel,csp);

	//jump code
		if grounded {
			canJump = jumpTime;
		}
		
		if !grounded && (canJump > 0) {
			canJump--
		}
		
			if(jump) && (canJump > 0){
				vsp = -4.5;
				doublejump = 1
				audio_play_sound(aJump,1,false);
			}  else if (doublejump == 1) && jump{
				vsp = -4.5;
				doublejump = 0
				audio_play_sound(aJump,1,false);
				}

			//animations
	
		if (!grounded){
			sprite_index = pJump
			image_speed = 0;
			if (sign(vsp) > 0) image_index = 1; else image_index = 0; 
		} else {
			image_speed = 1;
			if (right && left) || (!right && !left){
				sprite_index = pIdle;
			} else {
				sprite_index = pRun
			}
		}
			//STAMINA
				if (stamina < staminaMax){
					stamina++;
				}
	
			//DASH
			if (dashB) && (stamina >= 150){
				stamina -= 150;
			}
	
			//air drop
			if (keyboard_check_pressed(ord("S"))) && (keyboard_check_pressed(vk_down)) {
				vsp = 5;
			}
		
			//start attack
			if (keyboard_check_pressed(ord("F"))) && (stamina > 10) {
				image_xscale = facing1;
				stamina -= 10;
			}
		
	break;
		#endregion
	#region dash code
	case PLAYERSTATE.DASH:
	
		sprite_index = pDash;
		image_speed = 1;
		hsp = dsp * sign(hsp)
		vsp = 0
		
		if (keyboard_check_pressed(ord("F"))) && (stamina > 10) {
				stamina -= 10;
				state = PLAYERSTATE.ATTACK;
			}
		
		if (hsp != 0)
			image_xscale = sign(hsp);
		if (animation_end()){
			sprite_index = pIdle;
			state = PLAYERSTATE.FREE;
		}
	
	
	break;
	#endregion
	#region hit stuff
	case PLAYERSTATE.HIT:
	
		hsp = lengthdir_x(knockbackSpeed,hitFrom);
		knockbackSpeed = lerp(knockbackSpeed,0,0.10);
		
		if (knockbackSpeed < 0.5){
			knockbackSpeed = 0;
			state = PLAYERSTATE.FREE
		}
		
		if (place_meeting(x+hsp, y, obj_wall)){
			while (!place_meeting(x+sign(hsp),y,obj_wall)){
				x = x + sign(hsp);
				}
			hsp = -hsp;
	
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
		

	image_xscale = sign(mouse_x-x)
	var gAccel = .1;
	var gDeccel = .25;

	var airAccel = 0.09;
	var airDeccel = .15;

	if grounded
		Acceleration(gAccel,gDeccel,csp);
	else
		vsp += grv
		Acceleration(airAccel,airDeccel,csp);
	vsp = 0;
	hsp = 0;
	
	
	if (!flash){
		state = PLAYERSTATE.FREE;
		sprite_index = pIdle;
	}
	break;
	#endregion
	#region attack
	case PLAYERSTATE.ATTACK:
	if grounded
		hsp = 0.3 * sign(hsp);
		vsp += grv
		processAttack(pAttack,pAttackHB,40,3,pIdle)
		//trigger combo
		if (attackKey) && (image_index > 1) && (stamina > 10) {
			image_xscale = facing1;
			state = PLAYERSTATE.ATTACK2;
			stamina -= 10;
			}
		if (animation_end()){
			sprite_index = pIdle;
			state = PLAYERSTATE.FREE
		}
	
	break;
	#endregion
	#region attack2
	case PLAYERSTATE.ATTACK2:
		asp = 0;
		hsp = 10 * image_xscale;
		vsp += grv
		processAttack(pAttack2,pAttack2HB,60,3,pIdle)
		if (animation_end()){
			sprite_index = pIdle;
			state = PLAYERSTATE.FREE
		}
	
	break;
	#endregion
	#region DEAD
	case PLAYERSTATE.DEAD:
		if !deadTimer {
			obj_death.dumbtimer = obj_death.halfasecond
			deadTimer = 1;
		}
		if !blowup {
			currentDeaths++
			audio_play_sound(aDeath,1,false)
			screenShake(2,3)
			repeat(6){
				instance_create_layer(x,y,"Bullets",pBulletP)
			}
		blowup = 1
		if room == Boss1 room_goto(goback)
		if goback == Boss1 && instance_exists(groundSpike) bossComplete.explode = 1;
		x = global.checkpoint_x;
		y = global.checkpoint_y;
		currentHp = maxHp
		}
			hsp = 0;
			vsp = 0;
			image_speed = 1;
			sprite_index = pAttackHB;
		
			if currentHp > 0 state = PLAYERSTATE.FREE;
	#endregion
}

if (keyboard_check_pressed(ord("G"))){
	room_goto_next();
}
if (keyboard_check_pressed(ord("H"))){
	room_goto_previous();
}
