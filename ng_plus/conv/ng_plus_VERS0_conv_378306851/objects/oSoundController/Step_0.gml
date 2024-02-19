if musicStart{
	currentLevel = room;
	audio_group_set_gain(SFX, sfxVolume, 1)
	audio_group_set_gain(MUSIC, musicVolume, 1)

		switch(currentLevel){
			case Menu:
				if(!audio_is_playing(asynth1)){
					if cMenu.currentMenu == cMenu.bosslvlSelect && cMenu.subMenuCursor == 0{
						audio_stop_sound(asynth1);
					} else
						audio_play_sound(asynth1,1,false);
					}
				if audio_is_playing(aDoorMoving) audio_stop_sound(aDoorMoving)
			break;
			case Line1:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					}

			break;
			case Room0:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					}

			break;
			case Room1:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					}

			break;
			case Room2:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					audio_play_sound(asynth2,1,false);
					}

			break;
			case Room3:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					audio_play_sound(asynth2,1,false);
					}

			break;
			case Room4:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					audio_play_sound(asynth2,1,false);
					audio_play_sound(ahiHat,1,false);
					audio_play_sound(asnare,1,false);
					}

			break;
			case Room5:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					audio_play_sound(asynth2,1,false);
					audio_play_sound(ahiHat,1,false);
					audio_play_sound(asnare,1,false);
					audio_play_sound(afat808,1,false);
			
					}

			break;
			case Room6:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					audio_play_sound(asynth2,1,false);
					audio_play_sound(ahiHat,1,false);
					audio_play_sound(asnare,1,false);
					audio_play_sound(afat808,1,false);
					audio_play_sound(akick,1,false);
					}

			break;
			case Room7:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					audio_play_sound(asynth2,1,false);
					audio_play_sound(ahiHat,1,false);
					audio_play_sound(asnare,1,false);
					audio_play_sound(afat808,1,false);
					audio_play_sound(akick,1,false);
					audio_play_sound(asynth3,1,false);
					}

			break;
			case Line2:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					audio_play_sound(asynth2,1,false);
					audio_play_sound(asnare,1,false);
					audio_play_sound(afat808,1,false);
					audio_play_sound(akick,1,false);
					audio_play_sound(asynth3,1,false);
					}

			break;
			case Room8:
				if(!audio_is_playing(asynth1)){
					audio_play_sound(asynth1,1,false);
					audio_play_sound(asynth2,1,false);
					audio_play_sound(asynth3,1,false);
					}
			break;
			case Room9:
				if(audio_is_playing(asynth1)){
					audio_stop_all()
				}
			break;
			case Room10:
				if(audio_is_playing(asynth1)){
					audio_stop_all()
				}
				if(!audio_is_playing(bossArea1)){
					audio_play_sound(bossArea1,1,false);
				}
				forceStart = 0;
				break;
			case Boss1:
				if forceStart == 0{
					audio_stop_all();
					forceStart = 1;
				}
				if(audio_is_playing(asynth1)){
					audio_stop_all()
				}
				if(!audio_is_playing(bossArea1)){
					audio_play_sound(bossArea1,1,false);
					if instance_exists(bossButton){
						if(bossButton.state == 0)
							audio_play_sound(bossE1GT,1,false);
						if(bossButton2.state == 0)
							audio_play_sound(bossE2GS,1,false);
						if(bossButton3.state == 0)
							audio_play_sound(bossE3TT,1,false);
						if(bossButton4.state == 0)
							audio_play_sound(bossE4FS,1,false);
						if(bossButton5.state == 0)
							audio_play_sound(bossE5FT,1,false);
					}
				}
			break;
		}
	}
