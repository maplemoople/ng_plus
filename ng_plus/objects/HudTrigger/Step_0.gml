if place_meeting(x,y,obj_player){
	opacity = 1;
	myTime = 120;
}else {
	if opacity > 0 {
	myTime--;
	opacity = myTime/120;
	} else { opacity = 0;}
}