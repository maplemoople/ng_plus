#region movement/colision

//light[| eLight.X] = x;
//light[| eLight.Y] = y;

#endregion
switch(state){
	#region free state
	case ENEMYSTATE.FREE:
	
	if !(hsp == 0)
		image_xscale = -sign(hsp);
		else sprite_index = sBatMove
			//horizontal collision
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
		
		if (attackWait != 0) {
			hsp = 0
			attackWait--;
		} else if (attackWait = 0){
			hsp = walksp;
			if (instance_exists(obj_player)){
				var distToPlayer = point_distance(x,y, obj_player.x, obj_player.y);
				if (distToPlayer <= attackRange) && (!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false)) {
					hitFrom = -180 * sign(hsp);
					state = ENEMYSTATE.ATTACK
					attackWait = 0;
				}
		
				if(point_distance(obj_player.x,obj_player.y,x,y) < detectRange) && (!collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false)){
						if(obj_player.x > x) 
							hsp = -walksp;	
						else hsp = walksp;
				}
			}
		}
	break;
	#endregion	
	#region attack state

	case ENEMYSTATE.ATTACK:
	
	if !(hsp == 0)
		image_xscale = -sign(hsp);
			//horizontal collision
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
	
	
		hsp = walksp * 3 * -sign(hsp)
		processEnemyAttack(sBatAttack,sBatAttackHB,damage,30,sBatMove);
		if (place_meeting(x,y,obj_player)){
			hsp = 0;
			sprite_index = sBatMove;
			image_speed = 1;
		}
		
		/*if(image_index == 5){
			//light[| eLight.Range] = 500;
			//light[| eLight.Intensity] = 3;
		} else if (image_index == 12){
			//light[| eLight.Range] = 178;
			//light[| eLight.Intensity] = 1.7;
		}*/
		
		if(hsp = 0) || (animation_end()){
			attackWait = 120; //in frames
			sprite_index = sBatMove;
			image_speed = 1;
			state = ENEMYSTATE.FREE;
		}
		
	
	break;
	#endregion
	#region stun/knockback
	case ENEMYSTATE.HIT:

		image_index = 1;
		
		hsp = lengthdir_x(knockbackSpeed,hitFrom);
		knockbackSpeed = lerp(knockbackSpeed,0,0.10);
		
		if (knockbackSpeed < 0.5){
			knockbackSpeed = 0;
			hsp = walksp * sign(hsp)
			image_index = 0;
			state = ENEMYSTATE.FREE
		}
		
		if (place_meeting(x+hsp, y, obj_wall)){
			while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
			x = x + sign(hsp);
			}
			hsp = 0
	
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
		
		
		

	break;
	#endregion
	#region dead enemy
	case ENEMYSTATE.DEAD:
	
	grv = 0.3;
	
	//light[| eLight.Intensity] = lerp( light[| eLight.Intensity], 0,0.01);
	
	with(mygun) instance_destroy();
	if !launched{
	screenShake(2,1)
	hsp = lengthdir_x(5,hitFrom);
	vsp = lengthdir_y(5,hitFrom)-5;
	image_xscale = sign(hsp);
	launched = 1;
	}
	sprite_index = spr_enemy_dead
	
	image_speed = 0;
	
	if (!done){
		vsp += grv;
	//horizontal collision
		if (place_meeting(x+hsp, y, obj_wall)){
			while (!place_meeting(x+sign(hsp),y,obj_wall)){
	
			x = x + sign(hsp);
			}
			hsp = 0;
	
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
		
		if (place_meeting(x,y+1,obj_wall)){
			done = 1
			image_index = 1;
			mask_index = iFrames
		}
	}
	
	
	break;
	#endregion
}
	