if obj_player.state != PLAYERSTATE.DASH{
	audio_play_sound(aBulletDie,1,false)
	obj_player.currentHp -= 50000000;
}