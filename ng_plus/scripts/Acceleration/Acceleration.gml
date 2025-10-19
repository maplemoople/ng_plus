function Acceleration(argument0, argument1, argument2) {
	var keyPressed = right - left;
	var accel = argument0;
	var deccel = argument1;
	var userMaxSpeed = argument2


	if (keysPressed()){
		hsp = lerp(hsp, userMaxSpeed*keyPressed, accel);
	}else{
		hsp = lerp(hsp, 0, deccel);
	}


}
