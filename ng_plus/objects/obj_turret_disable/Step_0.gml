//moved shooting to animation end event :)

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
		
realState = state%2
switch realState{
	case 0:
		if (shootStart < 1){
			image_speed = shootspeed;
		} else{
			shootStart--;
			image_speed = 0;
		}
	break;
	case 1:
		if !explode{
			repeat(50){
				instance_create_layer(x,y,"Bullets",EXPLOSION_PARTICLE)
			}
			explode = 1;
		}
		if image_index == 6{
			image_speed = 0;
			image_index = 6;
		}
	break;
}