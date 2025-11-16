switch state{
	case closed:
		if countdown < 0{
			x = initx + random_range(-0.3,0.3)
			y = inity + random_range(-0.3,0.3)
			with(aboveVisual){
			x = owner.x
			y = owner.y
			}
			countdown = maxCountdown
		} else countdown--
		break;
		
	case open:
		state = top
		break;
		
	case top:
		x = initx
		y = inity
		break;
		
	case bottom:
		state = closed
		break;
}