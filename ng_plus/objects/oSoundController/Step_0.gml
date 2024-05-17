if musicStart{
	currentLevel = room;
	audio_group_set_gain(SFX, sfxVolume, 1)
	audio_group_set_gain(MUSIC, musicVolume, 1)
	fadeSpeed = currentFade;
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
		if audio_is_playing(asynth2) {audio_stop_all();}
		if !audio_is_playing(bossE1mel2){
			audio_play_sound(bossMel,1,true);
			audio_play_sound(bossMel2,1,true)
			audio_play_sound(bossE1mel2,1,true);
			audio_play_sound(bossE2mel3,1,true);
			audio_play_sound(bossCrash,1,true);
			audio_play_sound(bossE3mel1,1,true);
			audio_play_sound(bossE4clap,1,true);
			audio_play_sound(bossE4hihat,1,true);
			audio_play_sound(bossE5snare,1,true);
			audio_play_sound(bossE5kick,1,true);
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
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,0,fadeSpeed)
				audio_sound_gain(ahiHat,0,fadeSpeed)
				audio_sound_gain(asnare,0,fadeSpeed)
				audio_sound_gain(afat808,0,fadeSpeed)
				audio_sound_gain(akick,0,fadeSpeed)
				audio_sound_gain(asynth3,0,fadeSpeed)
			break;
			case Room0:
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,0,fadeSpeed)
				audio_sound_gain(ahiHat,0,fadeSpeed)
				audio_sound_gain(asnare,0,fadeSpeed)
				audio_sound_gain(afat808,0,fadeSpeed)
				audio_sound_gain(akick,0,fadeSpeed)
				audio_sound_gain(asynth3,0,fadeSpeed)
			break;
			case Room1:
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,0,fadeSpeed)
				audio_sound_gain(ahiHat,0,fadeSpeed)
				audio_sound_gain(asnare,0,fadeSpeed)
				audio_sound_gain(afat808,0,fadeSpeed)
				audio_sound_gain(akick,0,fadeSpeed)
				audio_sound_gain(asynth3,0,fadeSpeed)
			break;
			case Room2:
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,musicVolume,fadeSpeed)
				audio_sound_gain(ahiHat,0,fadeSpeed)
				audio_sound_gain(asnare,0,fadeSpeed)
				audio_sound_gain(afat808,0,fadeSpeed)
				audio_sound_gain(akick,0,fadeSpeed)
				audio_sound_gain(asynth3,0,fadeSpeed)
			break;
			case Room3:
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,musicVolume,fadeSpeed)
				audio_sound_gain(ahiHat,0,fadeSpeed)
				audio_sound_gain(asnare,0,fadeSpeed)
				audio_sound_gain(afat808,0,fadeSpeed)
				audio_sound_gain(akick,0,fadeSpeed)
				audio_sound_gain(asynth3,0,fadeSpeed)
			break;
			case Room4:
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,musicVolume,fadeSpeed)
				audio_sound_gain(ahiHat,musicVolume,fadeSpeed)
				audio_sound_gain(asnare,musicVolume,fadeSpeed)
				audio_sound_gain(afat808,0,fadeSpeed)
				audio_sound_gain(akick,0,fadeSpeed)
				audio_sound_gain(asynth3,0,fadeSpeed)
			break;
			case Room5:
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,musicVolume,fadeSpeed)
				audio_sound_gain(ahiHat,musicVolume,fadeSpeed)
				audio_sound_gain(asnare,musicVolume,fadeSpeed)
				audio_sound_gain(afat808,musicVolume,fadeSpeed)
				audio_sound_gain(akick,0,fadeSpeed)
				audio_sound_gain(asynth3,0,fadeSpeed)
			break;
			case Room6:
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,musicVolume,fadeSpeed)
				audio_sound_gain(ahiHat,musicVolume,fadeSpeed)
				audio_sound_gain(asnare,musicVolume,fadeSpeed)
				audio_sound_gain(afat808,musicVolume,fadeSpeed)
				audio_sound_gain(akick,musicVolume,fadeSpeed)
				audio_sound_gain(asynth3,0,fadeSpeed)
			break;
			case Room7:
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,musicVolume,fadeSpeed)
				audio_sound_gain(ahiHat,musicVolume,fadeSpeed)
				audio_sound_gain(asnare,musicVolume,fadeSpeed)
				audio_sound_gain(afat808,musicVolume,fadeSpeed)
				audio_sound_gain(akick,musicVolume,fadeSpeed)
				audio_sound_gain(asynth3,musicVolume,fadeSpeed)
			break;
			case Line2:
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,musicVolume,fadeSpeed)
				audio_sound_gain(ahiHat,0,fadeSpeed)
				audio_sound_gain(asnare,musicVolume,fadeSpeed)
				audio_sound_gain(afat808,musicVolume,fadeSpeed)
				audio_sound_gain(akick,musicVolume,fadeSpeed)
				audio_sound_gain(asynth3,musicVolume,fadeSpeed)
			break;
			case Room8:
				if cPause.pause = true currentFade = noFade; else currentFade = slowFade;
				audio_sound_gain(asynth1,musicVolume,fadeSpeed)
				audio_sound_gain(asynth2,musicVolume,fadeSpeed)
				audio_sound_gain(ahiHat,0,fadeSpeed)
				audio_sound_gain(asnare,0,fadeSpeed)
				audio_sound_gain(afat808,0,fadeSpeed)
				audio_sound_gain(akick,0,fadeSpeed)
				audio_sound_gain(asynth3,musicVolume,fadeSpeed)
			break;
			case Room9:
				if cPause.pause = true currentFade = noFade; else currentFade = slowFade;
				audio_sound_gain(asynth1,0,fadeSpeed)
				audio_sound_gain(asynth2,0,fadeSpeed)
				audio_sound_gain(ahiHat,0,fadeSpeed)
				audio_sound_gain(asnare,0,fadeSpeed)
				audio_sound_gain(afat808,0,fadeSpeed)
				audio_sound_gain(akick,0,fadeSpeed)
				audio_sound_gain(asynth3,0,fadeSpeed)
				//for when boss resets
				audio_sound_gain(bossMel,musicVolume,fadeSpeed)
				audio_sound_gain(bossMel2,0,fadeSpeed)
				audio_sound_gain(bossCrash,0,fadeSpeed)
				audio_sound_gain(bossE1mel2,0,fadeSpeed)
				audio_sound_gain(bossE2mel3,0,fadeSpeed)
				audio_sound_gain(bossE3mel1,0,fadeSpeed)
				audio_sound_gain(bossE4clap,0,fadeSpeed)
				audio_sound_gain(bossE4hihat,0,fadeSpeed)
				audio_sound_gain(bossE5snare,0,fadeSpeed)
				audio_sound_gain(bossE5kick,0,fadeSpeed)
				
			break;
			case Room10:
				currentFade = noFade;
				heightVolume = 0;
				heightVolumeMax = 0;
				audio_sound_gain(bossMel,musicVolume,fadeSpeed)
				audio_sound_gain(bossMel2,0,fadeSpeed)
				audio_sound_gain(bossCrash,0,fadeSpeed)
				audio_sound_gain(bossE1mel2,0,fadeSpeed)
				audio_sound_gain(bossE2mel3,0,fadeSpeed)
				audio_sound_gain(bossE3mel1,0,fadeSpeed)
				audio_sound_gain(bossE4clap,0,fadeSpeed)
				audio_sound_gain(bossE4hihat,0,fadeSpeed)
				audio_sound_gain(bossE5snare,0,fadeSpeed)
				audio_sound_gain(bossE5kick,0,fadeSpeed)
				forceStart = 0;
				break;
			case Boss1:
				if forceStart == 0{
					audio_stop_sound(aDoorMoving)
					forceStart = 1;
				}
				currentFade = noFade
				if heightVolume > heightVolumeMax {heightVolumeMax = heightVolume}
				heightVolume = (1 - (obj_player.y - 105)/496) * musicVolume;
				audio_sound_gain(bossMel2,heightVolumeMax,0)
				audio_sound_gain(bossMel,musicVolume,fadeSpeed)
				audio_sound_gain(bossE3mel1,musicVolume,fadeSpeed)
				//the E1-E5 boss tracks are according to their buttons red-blue-green-yellow-purple, orange has no track
				if explode = 1{
					audio_sound_gain(bossCrash,0,fadeSpeed)
					audio_sound_gain(bossE1mel2,0,fadeSpeed)
					audio_sound_gain(bossE2mel3,0,fadeSpeed)
					audio_sound_gain(bossE3mel1,0,fadeSpeed)
					audio_sound_gain(bossE4clap,0,fadeSpeed)
					audio_sound_gain(bossE4hihat,0,fadeSpeed)
					audio_sound_gain(bossE5snare,0,fadeSpeed)
					audio_sound_gain(bossE5kick,0,fadeSpeed)
				}
			break;
		}
	}
