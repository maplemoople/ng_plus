switch state{
	case closed:
	image_index = 1;
	image_speed = 0;
	break;
	
	case open:
		image_speed = 1;
		if image_index >= 4{
			state = top;
		}
		
		break;
		
	case top:
		image_speed = 0;
		image_index = 5;
		break;
		
	case bottom:
		image_speed = -1;
		if image_index <= 2{
			state = closed
		}
		break;
}