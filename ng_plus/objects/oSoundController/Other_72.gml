if (audio_group_is_loaded(MUSIC)){
	
	audio_group_set_gain(MUSIC, musicVolume, 1)
	musicStart = true;
}

if (audio_group_is_loaded(SFX)){
	

	audio_group_set_gain(SFX, sfxVolume, 1)
	sfxStart = true;
}