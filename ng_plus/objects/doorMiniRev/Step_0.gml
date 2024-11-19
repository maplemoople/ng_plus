switch state{
	case closed:
		image_index = 19;
		image_speed = 0;
		break;
	case open:
		image_speed = -1;
		if image_index <= 1{
			image_speed = 0;
			state = top
		}
		break;
	case top:
		image_index = 0;
		image_speed = 0;
		break;
	case bottom:
		image_speed = 1;
		if(image_index >= 19){
			state = closed;
		}
		break;
}