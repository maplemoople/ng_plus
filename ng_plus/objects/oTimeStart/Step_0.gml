switch(room){
	case Room0:
		start = true;
		obj_player.resetRoom = Line1
	break;
	
	case Line2:
		start = false;
	break;
	
	case Room8:
		time = 0;
		obj_player.currentDeaths = 0;
	case Room10:
		global.checkpoint_x = 13;
		global.checkpoint_y = -10
		obj_player.resetRoom = Room9
		obj_player.goback = Room9
	break;
	case Boss1:
		if bossComplete.state = 0{
		start = true;
		drawThingy = 1;
		}
	break;
}
if start time++