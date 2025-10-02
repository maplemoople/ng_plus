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
if (image_index = 1) && (sprite_index = pRun){
	audio_play_sound(aWalk,1,false);
}
	#region collision/ calculations
if(instance_exists(playercollison)){
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

if place_meeting(x,y-1,obj_wall){
	var headhitWall = instance_place(x, y - 1, obj_wall);
	if(headhitWall.bbox_bottom > bbox_top){
		var squishedWall = 1;
	} else squishedWall = 0;
	if squishedWall && place_meeting(x,y+1, obj_wall){
		state = PLAYERSTATE.DEAD
	} else y = y + 1;
}
if instance_exists(obj_wallvert){
	var oneWayPlat = instance_place(x, y + max(1,vsp),obj_wallvert);
	var grounded = place_meeting(x,y+1, playercollison) || (oneWayPlat && bbox_bottom <= oneWayPlat.bbox_top)
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
			if abs(oneWayPlat.hsp) > 1.4 && image_xscale == sign(oneWayPlat.hsp){
				hsp = sign(oneWayPlat.hsp) * 15;
				vsp -= 15
			}
			if abs(oneWayPlat.vsp) < -5{
			vsp += oneWayPlat.vsp * 1.5
			}
		}
	}
} else
var grounded = place_meeting(x,y+1, playercollison)
y = y + vsp
onTop = grounded;
#endregion
	
	
#endregion
switch (state){
	#region movement and calculations
	case PLAYERSTATE.FREE:
	blowup = 0
	if (hsp != 0)
		image_xscale = sign(hsp);
		var gAccel = 0.12;
		var gDeccel = 0.45;

		var airAccel = 0.09;
		var airDeccel = 0.06;

		if grounded{
			Acceleration(gAccel,gDeccel,csp);
		}else{
			if vsp < 6.5{
			vsp += grv;
			} else vsp = 6.5;
			Acceleration(airAccel,airDeccel,csp);
		}

	//jump code
		if grounded {
			canJump = jumpTime;
		} else if canJump > 0 {
			canJump--
		}
		if (canJump == 0 && !doublejump) {
			doublejump = true
		}
			if(jump) && (canJump > 0){
				vsp = -4.5;
				doublejump = true
				audio_play_sound(aJump,1,false);
			}  else if (doublejump == 1) && jump{
				vsp = -4.5;
				doublejump = false
				canJump--;
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
			//air drop
			if (keyboard_check_pressed(ord("S"))) && (keyboard_check_pressed(vk_down)) {
				vsp = 5;
			}
	break;
		#endregion
	#region DEAD
	case PLAYERSTATE.DEAD:
		if !blowup {
			audio_play_sound(aDeath,1,false)
			screenShake(2,3)
			repeat(6){
				instance_create_layer(x,y,"Bullets",pBulletP)
			}
			blowup = 1
		}
		owner.Lives--
		instance_destroy()
	#endregion
}
if obj_player.blowup = 1 {
	state = PLAYERSTATE.DEAD
}