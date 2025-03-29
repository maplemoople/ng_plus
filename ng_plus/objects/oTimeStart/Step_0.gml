switch(room){
	case Line1:
		global.resetX = 31;
		global.resetY = 44;
		obj_player.resetRoom = Line1
	case Room0:
		start = true;
	break;
	
	case Line2:
		start = false;
	break;
	case Room21:
		start = false;
	break;
	
	case Room8:
		time = 0;
		obj_player.currentDeaths = 0;
	case Room9:
		global.resetX = 13;
		global.resetY = -10;
		obj_player.resetRoom = Room9
		obj_player.goback = Room9
	break;
	case Boss1:
		if bossComplete.state = 0{
		start = true;
		drawThingy = 1;
		}
	break;
	case Room11:
		start = true;		
		global.resetX = 5;
		global.resetY = 52;
		obj_player.resetRoom = Room11
	break;
}
if start time++