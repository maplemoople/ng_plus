/// @desc control menu

//Keyboard stuff
controls();
if(keyboard_check_pressed(vk_escape)){
	if (!pause){
		pause = true;
	//	instance_activate_object(oSoundController);
	//	instance_activate_object(saveData);
		oldFade = oSoundController.currentFade;
		pmenu_control = true;
	} else if currentpMenu == poptions{
		currentpMenu = pmenu
		pmenu_items = array_length_1d(pmenu);
		pmenu_committed = -1; 
		pmenu_control = true; 
	} else {
		pause = false;
	//	instance_activate_all();
		pmenu_control = false;
		oSoundController.currentFade = oldFade;
	}
}

if(pmenu_control){
	if(mup){
		pmenu_cursor++;
		if(pmenu_cursor >= pmenu_items) pmenu_cursor = 0;
		audio_play_sound(aMenuMove,1,false)
		
	}
	
	if(mdown){
		pmenu_cursor--;
		if(pmenu_cursor < 0) pmenu_cursor = pmenu_items - 1;
		audio_play_sound(aMenuMove,1,false)
		
	}
	
	if(keyboard_check_pressed(vk_enter)){
		pmenu_committed = pmenu_cursor;
		pmenu_control = false;
		audio_play_sound(aMenuSelect,1,false)
	}
}	

switch(currentpMenu){
	
	case pmenu:

			if(pmenu_committed != -1){
				switch (pmenu_committed){
					case 2: 
					pause = false;
					pmenu_committed = -1;
					instance_activate_all();
					oSoundController.currentFade = oldFade;
					break;
		
					case 1: 
					oSoundController.currentFade = 0;
					currentpMenu = poptions
					pmenu_items = array_length_1d(poptions);
					pmenu_committed = -1; 
					pmenu_control = true; 
					break;
		
					case 0:
					instance_deactivate_all(true);
					instance_activate_object(oSoundController);
					instance_activate_object(saveData);
					audio_group_stop_all(MUSIC)
					room_goto(Menu) 
					break;
				}
			}
	case poptions:
	
		switch(pmenu_cursor){
			case 3:
			
				if(right1) && (oSoundController.sfxVolume < 1) && (pmenu_control == true) && (currentpMenu == poptions){
					oSoundController.sfxVolume += 0.05;
					audio_play_sound(aMenuSelect,1,false)
				}
				if(left1) && (oSoundController.sfxVolume > 0) && (pmenu_control == true) && (currentpMenu == poptions){
					oSoundController.sfxVolume -= 0.05;
					audio_play_sound(aMenuSelect,1,false)
				}
					
			break;
			case 2:
				if(right1) && (oSoundController.musicVolume < 1) && (pmenu_control == true) && (currentpMenu == poptions){
					oSoundController.musicVolume += 0.05;
					audio_play_sound(aMenuSelect,1,false)
				}
				if(left1) && (oSoundController.musicVolume > 0) && (pmenu_control == true) && (currentpMenu == poptions){
					oSoundController.musicVolume -= 0.05;
					audio_play_sound(aMenuSelect,1,false)
				}
			break;
			
		}
		if(pmenu_committed != -1){
			switch (pmenu_committed){
				case 3: 
					pmenu_committed = -1; 
					pmenu_control = true;
				break;
		
				case 2: 			
					pmenu_committed = -1; 
					pmenu_control = true; 
				break;
		
				case 1: 
					if (window_get_fullscreen()){
						window_set_fullscreen(false);
						isFullscreen = "NO"
					} else {
						window_set_fullscreen(true);
						isFullscreen = "YES"
					}
					pmenu_committed = -1; 
					pmenu_control = true; 
				break;
				
				case 0:
					saveData.setSaved = 0;
					currentpMenu = pmenu
					pmenu_items = array_length_1d(pmenu);
					pmenu_committed = -1; 
					pmenu_control = true;
			}
		}
	poptions[3] = "SFX Volume: " + string(oSoundController.sfxVolume * 100);
	poptions[2] = "Music Volume: " + string(oSoundController.musicVolume * 100);
	poptions[1] = "Fullscreen: " + string(isFullscreen);
}
		







