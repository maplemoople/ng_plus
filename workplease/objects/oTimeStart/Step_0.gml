switch(room){
	case Room0:
		start = true;
	break;
	
	case Line2:
		start = false;
	break;
	
	case Room8:
		time = 0;
		obj_player.currentDeaths = 0;
	break;
	
	case Boss1:
		if bossComplete.state = 0{
		start = true;
		drawThingy = 1;
		}
	break;
}
if start time++