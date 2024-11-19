switch state{
	case closed:
		image_speed = 0;
		image_index = 5;
	break;
	
	case open:
		image_speed = -1;
		if image_index <= 2{
			state = top;
		}		
		break;
		
	case top:
		image_index = 1;
		image_speed = 0;

		break;
		
	case bottom:
		image_speed = 1;
		if image_index >= 4{
			state = closed;;
		}
		break;
}