switch state{
	case closed:
		image_index = 0;
		image_speed = 0;
		break;
	case open:
		image_speed = 1;
		if(image_index >= 29){
			state = top;
		}
		break;
	case top:
		image_index = 29;
		image_speed = 0;
		break;
	case bottom:
		image_speed = -1;
		if image_index <= 1{
			image_speed = 0;
			state = closed
		}
		break;
}