repeat(30){
		instance_create_layer(x,y,"Bullets",pBulletP)
}


if obj_player.state != PLAYERSTATE.DASH{
	audio_play_sound(aBulletDie,1,false)
	obj_player.currentHp -= 50000000;
	instance_destroy();
}