if saveData.gameVer{
	gameVer = 1;
	mBossUnlocked = 1
	mlvl2Unlocked = 1;
}
//Keyboard stuff
controls();
//Loading save info
if object_exists(saveData) && !setLoaded{
	if (file_exists("savedSettings.save")){
		var _bufferS = buffer_load("savedSettings.save")
		var _stringS = buffer_read(_bufferS,buffer_string);
		buffer_delete(_bufferS);
	
		var _loadOptions = json_parse(_stringS);
		var _loadSettings = _loadOptions[0]
		oSoundController.sfxVolume = _loadSettings.sfxVol ;
		oSoundController.musicVolume = _loadSettings.musicVol;
		amFullscreen = _loadSettings.sFullscreen
	} else {
		oSoundController.sfxVolume = 0.3
		oSoundController.musicVolume = 0.3
		amFullscreen = true;
	}
	window_set_fullscreen(amFullscreen)
	setLoaded = 1;		
}
if (window_get_fullscreen()) isFullscreen = "YES"; else isFullscreen = "NO";

//background control
if currentMenu == bosslvlSelect{
	var layid = layer_get_id("Backgrounds_1")
	var bkgrnd = layer_background_get_id(layid)
	layer_background_change(bkgrnd,bossBackground[subMenuCursor])
} else {
	var layid = layer_get_id("Backgrounds_1")
	var bkgrnd = layer_background_get_id(layid)
	layer_background_change(bkgrnd, levelBackground[subMenuCursor])
}

if(menu_control){
	if(mup){
		menu_cursor++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
		audio_play_sound(aMenuMove,1,false)
		
	}
	
	if(mdown){
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_items - 1;
		audio_play_sound(aMenuMove,1,false)
		
	}
	
	if(keyboard_check_pressed(vk_enter)){
		menu_committed = menu_cursor;
		screenShake(4,30);
		menu_control = false;
		audio_play_sound(aMenuSelect,1,false)
	}
	
	if(keyboard_check_pressed(vk_escape)) && (currentMenu == options){
		currentMenu = menu
		menu_items = array_length_1d(menu);
		menu_committed = -1; 
		menu_control = true;
	}
		
}	


switch(currentMenu){
	
	case menu:
	
		if(menu_committed != -1){
			switch (menu_committed){
				case 2: 
					loadedSave = 0
					currentMenu = lvlSelect
					menu_cursor = array_length(lvlSelect)-1;
					subMenuCursor = 0;
					menu_items = array_length_1d(lvlSelect);
					menu_committed = -1; 
					menu_control = true
					imageMenu = levelImageMenu;
				break;
		
				case 1: 
					setLoaded = 0;
					currentMenu = options
					menu_cursor = array_length(options)-1
					menu_items = array_length_1d(options);
					menu_committed = -1; 
					menu_control = true; 
				break;
		
				case 0: 
					game_end(); 
				break;
			}
		}
	
	case options:
	
			//things that happen when cursor is over specific spot
		switch(menu_cursor){
			case 3:
			
				if(right1) && (oSoundController.sfxVolume < 1) && (currentMenu == options){
					oSoundController.sfxVolume += 0.05;
					audio_play_sound(aMenuSelect,1,false)	
				}
				if(left1) && (oSoundController.sfxVolume > 0) && (currentMenu == options){
					oSoundController.sfxVolume -= 0.05;
					audio_play_sound(aMenuSelect,1,false)
				}	
					
			break;
			case 2:
				if(right1) && (oSoundController.musicVolume < 1) && (currentMenu == options){
					oSoundController.musicVolume += 0.05;
					audio_play_sound(aMenuSelect,1,false);			
				}
				if(left1) && (oSoundController.musicVolume > 0) && (currentMenu == options){
					oSoundController.musicVolume -= 0.05;
					audio_play_sound(aMenuSelect,1,false);
				}
			break;
			
		}
		
			//things that happen when u press ENTER
		if(menu_committed != -1){
			switch (menu_committed){
				case 3: 
					menu_committed = -1; 
					menu_control = true;
				break;
		
				case 2: 			
					menu_committed = -1; 
					menu_control = true; 
				break;
		
				case 1: 
					if (window_get_fullscreen()){
						window_set_fullscreen(false);
						isFullscreen = "NO"
					} else {
						window_set_fullscreen(true);
						isFullscreen = "YES"
					}
					menu_committed = -1; 
					menu_control = true; 
				break;
				
				case 0:
					saveData.setSaved = 0;
					currentMenu = menu
					menu_items = array_length_1d(menu);
					menu_committed = -1; 
					menu_control = true;
			}
		}
		
		
		
		//for updateing the strings as things happen
	options[3] = "SFX Volume: " + string(oSoundController.sfxVolume * 100);
	options[2] = "Music Volume: " + string(oSoundController.musicVolume * 100);
	options[1] = "Fullscreen: " + string(isFullscreen);
	
	case lvlSelect:
		
		if (currentMenu == lvlSelect) && !loadedSave && !gameVer{
			if (file_exists("savedgame.save")){
				var _buffer = buffer_load("savedgame.save")
				var _string = buffer_read(_buffer,buffer_string);
				buffer_delete(_buffer);
	
				var _loadData = json_parse(_string);
				var _loadScore = _loadData[0]
				test = variable_struct_names_count(_loadScore)
				if variable_struct_names_count(_loadScore) == 13{
					mbestTime = _loadScore.bestTime ;
					mbestDeaths = _loadScore.bestDeaths;
					mbestLetterScore = _loadScore.letterScore;
					mbestCollected = _loadScore.collected;
					mBossUnlocked = _loadScore.bossUnlocked;
					mBoss1Time = _loadScore.boss1Time;
					mBoss1Deaths = _loadScore.boss1Deaths;
					mBoss1LetterScore = _loadScore.boss1LetterScore
					mlvl2Unlocked = _loadScore.lvl2Unlocked
					mbestTime2 = _loadScore.bestTime2;
					mbestDeaths2 = _loadScore.bestDeaths2;
					mbestLetterScore2 = _loadScore.letterScore2;
					mbestCollected2 = _loadScore.collected2;
				} else saveData.firstSave = 0;
			} else {
					saveData.firstSave = 0;
					if (file_exists("savedgame.save")){
							var _buffer = buffer_load("savedgame.save")
							var _string = buffer_read(_buffer,buffer_string);
							buffer_delete(_buffer);
	
							var _loadData = json_parse(_string);
							var _loadScore = _loadData[0]
							test = variable_struct_names_count(_loadScore)
							if variable_struct_names_count(_loadScore) == 13{
								mbestTime = _loadScore.bestTime ;
								mbestDeaths = _loadScore.bestDeaths;
								mbestLetterScore = _loadScore.letterScore;
								mbestCollected = _loadScore.collected;
								mBossUnlocked = _loadScore.bossUnlocked;
								mBoss1Time = _loadScore.boss1Time;
								mBoss1Deaths = _loadScore.boss1Deaths;
								mBoss1LetterScore = _loadScore.boss1LetterScore
								mlvl2Unlocked = _loadScore.lvl2Unlocked
								mbestTime2 = _loadScore.bestTime2;
								mbestDeaths2 = _loadScore.bestDeaths2;
								mbestLetterScore2 = _loadScore.letterScore2;
								mbestCollected2 = _loadScore.collected2;
							}
					}
				}
			//Menu update checks for unlock
			if mBossUnlocked{
				bossImageMenu[0] = bossImage1
				bossBackground[0] = room10Placeholder
				bossMusic[0] = "boss1st"
			}
			if mlvl2Unlocked{
				levelImageMenu[1] = level2image
				levelBackground[1] = lvl2menubg
				levelMusic[1] ="lvl2st"
			}
			//for menu separation to update
			lvlBestLetter[3] = "Z"
			lvlBestLetter[2] = "Z"
			lvlBestLetter[1] = mbestLetterScore2
			lvlBestLetter[0] = mbestLetterScore

			lvlBestCollected[3] = 0 
			lvlBestCollected[2] = 0
			lvlBestCollected[1] = mbestCollected2
			lvlBestCollected[0] = mbestCollected

			bossBestLetter[3] = "Z"
			bossBestLetter[2] = "Z"
			bossBestLetter[1] = "Z"
			bossBestLetter[0] = mBoss1LetterScore

			bossBestTime[3] = 999
			bossBestTime[2] = 999
			bossBestTime[1] = 999
			bossBestTime[0] = mBoss1Time
			
		loadedSave = 1;
		}
		switch(menu_cursor){
			case 2:
			if(right1) && (currentMenu == lvlSelect){
				subMenuCursor++;
				if(subMenuCursor>= subMenuItems) subMenuCursor = 0;
				audio_play_sound(aMenuMove,1,false)
		
			}

			if(left1) && (currentMenu == lvlSelect){
				subMenuCursor--;
				if(subMenuCursor < 0) subMenuCursor = subMenuItems - 1;
				audio_play_sound(aMenuMove,1,false)
		
			}

			if (keyboard_check_released(vk_alt)) && (currentMenu == lvlSelect){
				currentMenu = bosslvlSelect;
				menu_items = array_length_1d(bosslvlSelect);
				menu_committed = -1; 
				menu_control = true;
				imageMenu = bossImageMenu;
			}
			break;
			
		}
		
			//when u press enter for lvlSelect
		if(menu_committed != -1){
			switch (menu_committed){
				case 2:
					if menu_cursor == 2 && currentMenu == lvlSelect{
						switch (subMenuCursor) {
						case 0:
							instance_create_layer(31,44,"Player",obj_player)
							room_goto(Line1)
						break;
					
						case 1:
							if mlvl2Unlocked{
								instance_create_layer(5,52,"Player",obj_player)
								room_goto(Room11)
							} else{
							menu_committed = -1; 
							menu_control = true;
							}
						break;

						case 2:
							menu_committed = -1; 
							menu_control = true;
						break;
						
						case 3:
							instance_create_layer(12,123,"Player",obj_player)
							room_goto(TESTROOM)
					//		menu_committed = -1; 
					//		menu_control = true;
						break;
						}
					}
				break;
				case 1:
					currentMenu = bosslvlSelect
					menu_items = array_length_1d(bosslvlSelect);
					menu_committed = -1; 
					menu_control = true;
					imageMenu = bossImageMenu;
				break;
				case 0:
					currentMenu = menu
					menu_items = array_length_1d(menu);
					menu_committed = -1; 
					menu_control = true;
					imageMenu = noImageMenu
				break;
			}
		}
		
		case bosslvlSelect:
			switch(menu_cursor){
				case 2:
				if(right1) && (currentMenu == bosslvlSelect){
					subMenuCursor++;
					if(subMenuCursor>= subMenuItems) subMenuCursor = 0;
					audio_play_sound(aMenuMove,1,false)
		
				}

				if(left1) && (currentMenu == bosslvlSelect){
					subMenuCursor--;
					if(subMenuCursor < 0) subMenuCursor = subMenuItems - 1;
					audio_play_sound(aMenuMove,1,false)
		
				}
				
				if (keyboard_check_released(vk_alt)) && (currentMenu == bosslvlSelect){
					currentMenu = lvlSelect
					menu_items = array_length_1d(lvlSelect);
					menu_committed = -1; 
					menu_control = true;
					imageMenu = levelImageMenu;
				}
		
				break;
			
			}
			//when u press enter for bossSelect
		if(menu_committed != -1){
			switch (menu_committed){
				case 2:
					if menu_cursor == 2 && currentMenu == bosslvlSelect{
						switch (subMenuCursor) {
						case 0:
							if mBossUnlocked{ 
								instance_create_layer(13,-10,"Player",obj_player)
								room_goto(Room9)
							} else{
							menu_committed = -1; 
							menu_control = true;
							}
						break;
					
						case 1:
							menu_committed = -1; 
							menu_control = true;
						break;
						
						case 2:
							menu_committed = -1; 
							menu_control = true;
						break;
						
						case 3:
							menu_committed = -1; 
							menu_control = true;
						break;
						}
					}
				break;
				case 1:
					currentMenu = lvlSelect
					menu_items = array_length_1d(lvlSelect);
					menu_committed = -1; 
					menu_control = true;
					imageMenu = levelImageMenu;
				break;
				case 0:
					currentMenu = menu
					menu_items = array_length_1d(menu);
					menu_committed = -1; 
					menu_control = true;
					imageMenu = noImageMenu
				break;
			}
		}
}
