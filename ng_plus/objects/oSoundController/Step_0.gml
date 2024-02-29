if musicStart{
	currentLevel = room;
	audio_group_set_gain(SFX, sfxVolume, 1)

	switch(currentLevel){ //This is to initialize sounds per level/area/boss/whatever NOTE: Menu has a seperate way of doing things because i revamped everything else so dont worry about inializing menu stuff
	case Line1:
		if !audio_is_playing(asynth2){
			audio_play_sound(asynth1,1,true);
			audio_play_sound(asynth2,1,true);
			audio_play_sound(ahiHat,1,true);
			audio_play_sound(asnare,1,true);
			audio_play_sound(afat808,1,true);
			audio_play_sound(akick,1,true);
			audio_play_sound(asynth3,1,true);
		}
	break;
	case Room10:
		if audio_is_playing(asynth1) {audio_stop_all();}
		if !audio_is_playing(bossE1GT){
			audio_play_sound(bossArea1,1,true);
			audio_play_sound(bossE1GT,1,true);
			audio_play_sound(bossE2GS,1,true);
			audio_play_sound(bossE3TT,1,true);
			audio_play_sound(bossE4FS,1,true);
			audio_play_sound(bossE5FT,1,true);
		}
	break;
	}
	
	
		switch(currentLevel){
			case Menu:
				audio_sound_gain(asynth1,musicVolume,0)
			if !audio_is_playing(asynth1){
				if cMenu.currentMenu == cMenu.bosslvlSelect && cMenu.subMenuCursor == 0{
					audio_stop_sound(asynth1);
				} else
					audio_play_sound(asynth1,1,false);
			}
				if audio_is_playing(aDoorMoving) audio_stop_sound(aDoorMoving)
			break;
			case Line1:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,0,0)
				audio_sound_gain(ahiHat,0,0)
				audio_sound_gain(asnare,0,0)
				audio_sound_gain(afat808,0,0)
				audio_sound_gain(akick,0,0)
				audio_sound_gain(asynth3,0,0)
			break;
			case Room0:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,0,0)
				audio_sound_gain(ahiHat,0,0)
				audio_sound_gain(asnare,0,0)
				audio_sound_gain(afat808,0,0)
				audio_sound_gain(akick,0,0)
				audio_sound_gain(asynth3,0,0)
			break;
			case Room1:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,0,0)
				audio_sound_gain(ahiHat,0,0)
				audio_sound_gain(asnare,0,0)
				audio_sound_gain(afat808,0,0)
				audio_sound_gain(akick,0,0)
				audio_sound_gain(asynth3,0,0)
			break;
			case Room2:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,musicVolume,0)
				audio_sound_gain(ahiHat,0,0)
				audio_sound_gain(asnare,0,0)
				audio_sound_gain(afat808,0,0)
				audio_sound_gain(akick,0,0)
				audio_sound_gain(asynth3,0,0)
			break;
			case Room3:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,musicVolume,0)
				audio_sound_gain(ahiHat,0,0)
				audio_sound_gain(asnare,0,0)
				audio_sound_gain(afat808,0,0)
				audio_sound_gain(akick,0,0)
				audio_sound_gain(asynth3,0,0)
			break;
			case Room4:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,musicVolume,0)
				audio_sound_gain(ahiHat,musicVolume,0)
				audio_sound_gain(asnare,musicVolume,0)
				audio_sound_gain(afat808,0,0)
				audio_sound_gain(akick,0,0)
				audio_sound_gain(asynth3,0,0)
			break;
			case Room5:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,musicVolume,0)
				audio_sound_gain(ahiHat,musicVolume,0)
				audio_sound_gain(asnare,musicVolume,0)
				audio_sound_gain(afat808,musicVolume,0)
				audio_sound_gain(akick,0,0)
				audio_sound_gain(asynth3,0,0)
			break;
			case Room6:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,musicVolume,0)
				audio_sound_gain(ahiHat,musicVolume,0)
				audio_sound_gain(asnare,musicVolume,0)
				audio_sound_gain(afat808,musicVolume,0)
				audio_sound_gain(akick,musicVolume,0)
				audio_sound_gain(asynth3,0,0)
			break;
			case Room7:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,musicVolume,0)
				audio_sound_gain(ahiHat,musicVolume,0)
				audio_sound_gain(asnare,musicVolume,0)
				audio_sound_gain(afat808,musicVolume,0)
				audio_sound_gain(akick,musicVolume,0)
				audio_sound_gain(asynth3,musicVolume,0)
			break;
			case Line2:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,musicVolume,0)
				audio_sound_gain(ahiHat,0,0)
				audio_sound_gain(asnare,musicVolume,0)
				audio_sound_gain(afat808,musicVolume,0)
				audio_sound_gain(akick,musicVolume,0)
				audio_sound_gain(asynth3,musicVolume,0)
			break;
			case Room8:
				audio_sound_gain(asynth1,musicVolume,0)
				audio_sound_gain(asynth2,musicVolume,0)
				audio_sound_gain(ahiHat,0,0)
				audio_sound_gain(asnare,0,0)
				audio_sound_gain(afat808,0,0)
				audio_sound_gain(akick,0,0)
				audio_sound_gain(asynth3,musicVolume,0)
			break;
			case Room9:
				audio_sound_gain(asynth1,0,1000)
				audio_sound_gain(asynth2,0,1000)
				audio_sound_gain(ahiHat,0,0)
				audio_sound_gain(asnare,0,0)
				audio_sound_gain(afat808,0,0)
				audio_sound_gain(akick,0,0)
				audio_sound_gain(asynth3,0,1000)
			break;
			case Room10:
				audio_sound_gain(bossArea1,musicVolume,0)
				audio_sound_gain(bossE1GT,0,0)
				audio_sound_gain(bossE2GS,0,0)
				audio_sound_gain(bossE3TT,0,0)
				audio_sound_gain(bossE4FS,0,0)
				audio_sound_gain(bossE5FT,0,0)
				forceStart = 0;
				break;
			case Boss1:
				if forceStart == 0{
					audio_stop_sound(aDoorMoving)
					forceStart = 1;
				}
				audio_sound_gain(bossArea1,musicVolume,0)
				audio_sound_gain(bossE1GT,musicVolume,0)
				audio_sound_gain(bossE2GS,musicVolume,0)
				audio_sound_gain(bossE3TT,musicVolume,0)
				audio_sound_gain(bossE4FS,musicVolume,0)
				audio_sound_gain(bossE5FT,musicVolume,0)
				
			break;
		}
	}
