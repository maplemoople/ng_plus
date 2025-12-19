switch state{
	case closed:
		if lazerSpawn == noone{
			with (instance_create_layer(x,y,"Entities",lazer)){
				owner = other.id
				owner.lazerSpawn = id
				image_angle = owner.image_angle
			}
		}
		lazerSpawn.x = x
		lazerSpawn.y = y
		lazerSpawn.image_angle = image_angle
		if movement == "horizontal"{
			//horizontal collision
			if (place_meeting(x+hsp, y, obj_wall)){
				while (!place_meeting(x+sign(hsp),y,obj_wall)){	
					x = x + sign(hsp);
				}
				turned = 1;
				if speedMode{
					hsp = speedHsp * sign(hsp); //speedHsp is defined in variable Definitiions
				}
				hsp = -hsp;
			}
		
			if speedMode{
			hsp = hsp * speedAccel //once again in variable definitions
			}
			x = x + hsp;
		} else if movement == "vertical"{
			//vertical collision
			if (place_meeting(x, y+vsp, obj_wall)){
				while (!place_meeting(x,y+sign(vsp),obj_wall)){
					y = y + sign(vsp);
				}
				turned = 1;
				if speedMode{
					vsp = speedVsp * sign(vsp); //speedVsp is defined in variable Definitiions
				}
				vsp = -vsp;
			}
		
			if speedMode{
			vsp = vsp * speedAccel //once again in variable definitions
			}
			y = y + vsp;
		}
		
		break;
		
	case open:
		state = top
		break;
		
	case top:
		if (lazerSpawn != noone){
			instance_destroy(lazerSpawn)
			lazerSpawn = noone;
		}
		break;
		
	case bottom:
		state = closed
		break;
}