switch state{
	case on:
		image_index = 0
	break;
	
	case off:
		image_index = 1
	break;
}

if connectedObj.state == stateOn {state = on}
if connectedObj.state == stateOff {state = off}