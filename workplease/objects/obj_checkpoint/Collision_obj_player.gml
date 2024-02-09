if(is_enabled) {
	is_enabled = false;
	global.checkpoint_x = x;
	global.checkpoint_y = y;
	if room == Boss1{
		global.checkpoint_x = 222;
		global.checkpoint_y = 96;
		obj_player.goback = Room10;
	}
	obj_player.currentHp = obj_player.maxHp;
}