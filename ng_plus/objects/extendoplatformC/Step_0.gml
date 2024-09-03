switch state{
	case closed:
		image_index = 0;
		image_speed = 0;
		break;
	case open:
		image_speed = 1;
		if(image_index >=3){
			with (instance_create_layer(x,y,"DoorLayer",objNameHB)) {
				owner = other.id
				owner.connectionHB = object_index;
			}	
		}
		if(image_index >= 6){
			state = top;
		}
		break;
	case top:
		image_index = 6;
		image_speed = 0;
		break;
	case bottom:
		image_speed = -1;
		if image_index <= 1{
			image_speed = 0;
			state = closed
		}
		if object_exists(connectionHB){
			instance_destroy(connectionHB)	
		}
		break;
}