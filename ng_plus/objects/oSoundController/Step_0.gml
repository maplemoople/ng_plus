if musicStart{
	currentLevel = room;
	audio_group_set_gain(SFX, sfxVolume, 1)
	audio_group_set_gain(MUSIC, musicVolume, 1)
	fadeSpeed = currentFade;
	if audio_sound_get_track_position(wuh) <= 0.1 {
		buh = 1
	}
	if currentLevel != prevLevel{
		buh = 0;
		prevLevel = currentLevel;
	}
	
	
	switch(currentLevel){ //This is to initialize sounds per level/area/boss/whatever NOTE: Menu has a seperate way of doing things because i revamped everything else so dont worry about inializing menu stuff
	case Line1:
		if !audio_is_playing(asynth2){
			wuh = audio_play_sound(asynth1,1,true);
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
		if !audio_is_playing(bossE1){
			audio_play_sound(bossE0,1,true);
			audio_play_sound(bossE1,1,true);
			audio_play_sound(bossE2,1,true);
			audio_play_sound(bossE3,1,true);
			audio_play_sound(bossE4,1,true);
			audio_play_sound(bossE6,1,true);
			audio_play_sound(bossE5,1,true);
		}
	break;
	case Line3:
		if audio_is_playing(asynth2) {audio_stop_all();}
		if audio_is_playing(bossE2) {audio_stop_all();}
		if !audio_is_playing(lvl2t1){
			wuh = audio_play_sound(lvl2t1,1,true);
			audio_play_sound(lvl2t2,1,true);
			audio_play_sound(lvl2t3,1,true);
			audio_play_sound(lvl2t4,1,true);
			audio_play_sound(lvl2t5,1,true);
			audio_play_sound(lvl2t6,1,true);
		}
	break;
	case Room11:
		if audio_is_playing(asynth2) {audio_stop_all();}
		if audio_is_playing(bossE2) {audio_stop_all();}
		if !audio_is_playing(lvl2t1){
			wuh = audio_play_sound(lvl2t1,1,true);
			audio_play_sound(lvl2t2,1,true);
			audio_play_sound(lvl2t3,1,true);
			audio_play_sound(lvl2t4,1,true);
			audio_play_sound(lvl2t5,1,true);
			audio_play_sound(lvl2t6,1,true);
		}
	break;
	}
	
	
		switch(currentLevel){
			case Menu:
				if cMenu.currentMenu == cMenu.bosslvlSelect{
					switch(cMenu.bossMusic[cMenu.subMenuCursor]){
						case "lvl1st":
							if !audio_is_playing(asynth2){
								audio_group_stop_all(MUSIC)
								wuh = audio_play_sound(asynth1,1,true);
								audio_play_sound(asynth2,1,true);
								audio_play_sound(ahiHat,1,true);
								audio_play_sound(asnare,1,true);
								audio_play_sound(afat808,1,true);
								audio_play_sound(akick,1,true);
								audio_play_sound(asynth3,1,true);
								audio_sound_gain(asynth1,musicVolume,fadeSpeed)
								audio_sound_gain(asynth2,0,fadeSpeed)
								audio_sound_gain(ahiHat,0,fadeSpeed)
								audio_sound_gain(asnare,0,fadeSpeed)
								audio_sound_gain(afat808,0,fadeSpeed)
								audio_sound_gain(akick,0,fadeSpeed)
								audio_sound_gain(asynth3,0,fadeSpeed)
							}
							break;
						case"boss1st":
							if !audio_is_playing(bossE1){
								audio_group_stop_all(MUSIC)
								wuh = audio_play_sound(bossE0,1,true);
								audio_play_sound(bossE1,1,true);
								audio_play_sound(bossE2,1,true);
								audio_play_sound(bossE3,1,true);
								audio_play_sound(bossE4,1,true);
								audio_play_sound(bossE6,1,true);
								audio_play_sound(bossE5,1,true);
								audio_sound_gain(bossE0,musicVolume,fadeSpeed)
								audio_sound_gain(bossE1,0,fadeSpeed)
								audio_sound_gain(bossE2,0,fadeSpeed)
								audio_sound_gain(bossE3,0,fadeSpeed)
								audio_sound_gain(bossE4,0,fadeSpeed)
								audio_sound_gain(bossE6,0,fadeSpeed)
								audio_sound_gain(bossE5,0,fadeSpeed)
							}
						break;
					}
				} else{
					switch(cMenu.levelMusic[cMenu.subMenuCursor]){
						case "lvl1st":
							if !audio_is_playing(asynth2){
								audio_group_stop_all(MUSIC)
								wuh = audio_play_sound(asynth1,1,true);
								audio_play_sound(asynth2,1,true);
								audio_play_sound(ahiHat,1,true);
								audio_play_sound(asnare,1,true);
								audio_play_sound(afat808,1,true);
								audio_play_sound(akick,1,true);
								audio_play_sound(asynth3,1,true);
								audio_sound_gain(asynth1,musicVolume,fadeSpeed)
								audio_sound_gain(asynth2,0,fadeSpeed)
								audio_sound_gain(ahiHat,0,fadeSpeed)
								audio_sound_gain(asnare,0,fadeSpeed)
								audio_sound_gain(afat808,0,fadeSpeed)
								audio_sound_gain(akick,0,fadeSpeed)
								audio_sound_gain(asynth3,0,fadeSpeed)
							}
							break;
						case"lvl2st":
							if !audio_is_playing(lvl2t1){
								audio_group_stop_all(MUSIC)
								wuh = audio_play_sound(lvl2t1,1,true);
								audio_play_sound(lvl2t2,1,true);
								audio_play_sound(lvl2t3,1,true);
								audio_play_sound(lvl2t4,1,true);
								audio_play_sound(lvl2t5,1,true);
								audio_play_sound(lvl2t6,1,true);
								audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
								audio_sound_gain(lvl2t2,0,fadeSpeed)
								audio_sound_gain(lvl2t3,0,fadeSpeed)
								audio_sound_gain(lvl2t4,0,fadeSpeed)
								audio_sound_gain(lvl2t5,0,fadeSpeed)
								audio_sound_gain(lvl2t6,0,fadeSpeed)
							}
						break;
					}
				}
				if audio_is_playing(aDoorMoving) audio_stop_sound(aDoorMoving)
				if audio_is_playing(lvl2t1) audio_stop_sound(aDoorMoving)
				
			break;
			
			//LEVEL 1
			
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
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1){
					audio_sound_gain(asynth1,musicVolume,fadeSpeed)
					audio_sound_gain(asynth2,musicVolume,fadeSpeed)
					audio_sound_gain(ahiHat,0,fadeSpeed)
					audio_sound_gain(asnare,0,fadeSpeed)
					audio_sound_gain(afat808,0,fadeSpeed)
					audio_sound_gain(akick,0,fadeSpeed)
					audio_sound_gain(asynth3,0,fadeSpeed)
				}
			break;
			case Room3:
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(asynth1,musicVolume,fadeSpeed)
					audio_sound_gain(asynth2,musicVolume,fadeSpeed)
					audio_sound_gain(ahiHat,0,fadeSpeed)
					audio_sound_gain(asnare,0,fadeSpeed)
					audio_sound_gain(afat808,0,fadeSpeed)
					audio_sound_gain(akick,0,fadeSpeed)
					audio_sound_gain(asynth3,0,fadeSpeed)
				}
			break;
			case Room4:
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(asynth1,musicVolume,fadeSpeed)
					audio_sound_gain(asynth2,musicVolume,fadeSpeed)
					audio_sound_gain(ahiHat,musicVolume,fadeSpeed)
					audio_sound_gain(asnare,musicVolume,fadeSpeed)
					audio_sound_gain(afat808,0,fadeSpeed)
					audio_sound_gain(akick,0,fadeSpeed)
					audio_sound_gain(asynth3,0,fadeSpeed)
				}
			break;
			case Room5:
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(asynth1,musicVolume,fadeSpeed)
					audio_sound_gain(asynth2,musicVolume,fadeSpeed)
					audio_sound_gain(ahiHat,musicVolume,fadeSpeed)
					audio_sound_gain(asnare,musicVolume,fadeSpeed)
					audio_sound_gain(afat808,musicVolume,fadeSpeed)
					audio_sound_gain(akick,0,fadeSpeed)
					audio_sound_gain(asynth3,0,fadeSpeed)
				}
			break;
			case Room6:
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(asynth1,musicVolume,fadeSpeed)
					audio_sound_gain(asynth2,musicVolume,fadeSpeed)
					audio_sound_gain(ahiHat,musicVolume,fadeSpeed)
					audio_sound_gain(asnare,musicVolume,fadeSpeed)
					audio_sound_gain(afat808,musicVolume,fadeSpeed)
					audio_sound_gain(akick,0,fadeSpeed)
					audio_sound_gain(asynth3,0,fadeSpeed)
				}
			break;
			case Room7:
				currentFade = slowFade
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(asynth1,musicVolume,fadeSpeed)
					audio_sound_gain(asynth2,musicVolume,fadeSpeed)
					audio_sound_gain(ahiHat,musicVolume,fadeSpeed)
					audio_sound_gain(asnare,musicVolume,fadeSpeed)
					audio_sound_gain(afat808,musicVolume,fadeSpeed)
					audio_sound_gain(akick,0,fadeSpeed)
					audio_sound_gain(asynth3,musicVolume,fadeSpeed)
				}
			break;
			case Line2:
				currentFade = slowFade
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(asynth1,musicVolume,fadeSpeed)
					audio_sound_gain(asynth2,musicVolume,fadeSpeed)
					audio_sound_gain(ahiHat,0,fadeSpeed)
					audio_sound_gain(asnare,musicVolume,fadeSpeed)
					audio_sound_gain(afat808,musicVolume,fadeSpeed)
					audio_sound_gain(akick,0,fadeSpeed)
					audio_sound_gain(asynth3,musicVolume,fadeSpeed)
				}
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
			
			//LEVEL 1 BOSS
			
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
				audio_sound_gain(bossE0,musicVolume,fadeSpeed)
				audio_sound_gain(bossE1,0,fadeSpeed)
				audio_sound_gain(bossE2,0,fadeSpeed)
				audio_sound_gain(bossE3,0,fadeSpeed)
				audio_sound_gain(bossE4,0,fadeSpeed)
				audio_sound_gain(bossE6,0,fadeSpeed)
				audio_sound_gain(bossE5,0,fadeSpeed)
				
			break;
			case Room10:
				currentFade = noFade;
				heightVolume = 0;
				heightVolumeMax = 0;
				audio_sound_gain(bossE0,musicVolume,fadeSpeed)
				audio_sound_gain(bossE1,0,fadeSpeed)
				audio_sound_gain(bossE2,0,fadeSpeed)
				audio_sound_gain(bossE3,0,fadeSpeed)
				audio_sound_gain(bossE4,0,fadeSpeed)
				audio_sound_gain(bossE6,0,fadeSpeed)
				audio_sound_gain(bossE5,0,fadeSpeed)
				forceStart = 0;
				break;
			case Boss1:
				if forceStart == 0{
					audio_stop_sound(aDoorMoving)
					forceStart = 1;
				}
				currentFade = slowFade
			// THIS IS TO CHANGE MUSIC WITH HEIGHT SO MAYBE IF YOU WANT TO ADD IT BACK DO THAT :) BOSS 1 ONLY!!!!!
			if heightVolume > heightVolumeMax {heightVolumeMax = heightVolume}
				heightVolume = (1 - (obj_player.y - 105)/496) * musicVolume;
				audio_sound_gain(bossE0,musicVolume,fadeSpeed)
				audio_sound_gain(bossE1,heightVolume,fadeSpeed)
				
				//the E1-E5 boss tracks are according to their buttons red-blue-green-yellow-purple, orange has no track
				if explode = 1{
					audio_sound_gain(bossE0,0,fadeSpeed)
					audio_sound_gain(bossE1,0,fadeSpeed)
					audio_sound_gain(bossE2,musicVolume,fadeSpeed)
					audio_sound_gain(bossE3,0,fadeSpeed)
					audio_sound_gain(bossE4,0,fadeSpeed)
					audio_sound_gain(bossE6,0,fadeSpeed)
					audio_sound_gain(bossE5,0,fadeSpeed)
				}
				break;
				
				//LEVEL 2
				
			case Line3:
				//setting up for lvl 2 volumes (init is at the top)
				currentFade = noFade;
				heightVolume = 0;
				heightVolumeMax = 0;
				
				audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
				audio_sound_gain(lvl2t2,0,fadeSpeed)
				audio_sound_gain(lvl2t3,0,fadeSpeed)
				audio_sound_gain(lvl2t4,0,fadeSpeed)
				audio_sound_gain(lvl2t5,0,fadeSpeed)
				audio_sound_gain(lvl2t6,0,fadeSpeed)
				break;
			case Room11:
				currentFade = noFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1)  {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,0,fadeSpeed)
					audio_sound_gain(lvl2t3,0,fadeSpeed)
					audio_sound_gain(lvl2t4,0,fadeSpeed)
					audio_sound_gain(lvl2t5,0,fadeSpeed)
					audio_sound_gain(lvl2t6,0,fadeSpeed)
				}
				break;
			case Room12:
				currentFade = noFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t3,0,fadeSpeed)
					audio_sound_gain(lvl2t4,0,fadeSpeed)
					audio_sound_gain(lvl2t5,0,fadeSpeed)
					audio_sound_gain(lvl2t6,0,fadeSpeed)
				}
				break;
			case Room13:
				currentFade = noFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t3,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t4,0,fadeSpeed)
					audio_sound_gain(lvl2t5,0,fadeSpeed)
					audio_sound_gain(lvl2t6,0,fadeSpeed)
				}
				break;
			case Room14:
				currentFade = noFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t3,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t4,0,fadeSpeed)
					audio_sound_gain(lvl2t5,0,fadeSpeed)
					audio_sound_gain(lvl2t6,0,fadeSpeed)
				}
				break;
			case Room15:
				currentFade = noFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t3,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t4,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t5,0,fadeSpeed)
					audio_sound_gain(lvl2t6,0,fadeSpeed)
				}
				break;
			case Room16:
				currentFade = noFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t3,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t4,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t5,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t6,0,fadeSpeed)
				}
				break;
			case Room17:
				currentFade = noFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t3,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t4,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t5,musicVolume,fadeSpeed)
				
				}
					audio_sound_gain(lvl2t6,musicVolume,noFade)
				break;
			case Room18:
				currentFade = noFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t3,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t4,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t5,musicVolume,fadeSpeed)
					
				}
					audio_sound_gain(lvl2t6,musicVolume,noFade)
				break;
			case Room19:
				currentFade = noFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t3,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t4,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t5,musicVolume,fadeSpeed)
				
				}
					audio_sound_gain(lvl2t6,musicVolume,noFade)
				break;
			case Room20:
				currentFade = slowFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,0,fadeSpeed)
					audio_sound_gain(lvl2t3,0,fadeSpeed)
					audio_sound_gain(lvl2t4,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t5,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t6,0,noFade)
				}
				break;
			case Room21:
				currentFade = slowFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t3,0,fadeSpeed)
					audio_sound_gain(lvl2t4,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t5,0,fadeSpeed)
				
				}
					audio_sound_gain(lvl2t6,musicVolume,noFade)
				break;
			case Room22:
				currentFade = slowFade;
				if (audio_sound_get_track_position(wuh) <= 0.1 || buh == 1) {
					audio_sound_gain(lvl2t1,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t2,0,fadeSpeed)
					audio_sound_gain(lvl2t3,0,fadeSpeed)
					audio_sound_gain(lvl2t4,musicVolume,fadeSpeed)
					audio_sound_gain(lvl2t5,0,fadeSpeed)
				
				}
					audio_sound_gain(lvl2t6,musicVolume,noFade)
				break;
		}
	}
if instance_exists(lazer) && !audio_is_playing(aLazer){
	audio_play_sound(aLazer,0,1,3*sfxVolume);
} else if (!instance_exists(lazer)) {
	audio_stop_sound(aLazer)
}