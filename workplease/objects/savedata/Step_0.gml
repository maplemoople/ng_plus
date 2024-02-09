//save array
var _saveData = array_create(0);
var _saveOptions = array_create(0);
//save values inside of oTimeController
if !saved{
	if (instance_exists(oTimeController)){	
		with(oTimeController){
			var _saveScore = {
				bestTime : bestTime,
				letterScore : bestLetterScore,
				bestDeaths : bestDeaths,
				collected : bestCollected,
				bossUnlocked : bossUnlocked,
				boss1Time : bestBoss1Time,
				boss1Deaths : bestBoss1Deaths,
				boss1LetterScore : bestBoss1LetterScore,
			}
			array_push(_saveData,_saveScore);
		}
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1)
	buffer_write( _buffer, buffer_string, _string)
	buffer_save( _buffer, "savedgame.save")
	buffer_delete( _buffer)
	show_debug_message("--------------------------game saved: " + _string)
	saved = 1;
	}
}
if !setSaved{
	var _saveSettings = {
		sfxVol : oSoundController.sfxVolume,
		musicVol : oSoundController.musicVolume,
		sFullscreen: window_get_fullscreen(),
	}
	array_push(_saveOptions,_saveSettings);
		
var _stringS = json_stringify(_saveOptions);
var _bufferS = buffer_create(string_byte_length(_stringS) + 1, buffer_fixed, 1)
buffer_write( _bufferS, buffer_string, _stringS)
buffer_save( _bufferS, "savedSettings.save")
buffer_delete( _bufferS)
show_debug_message("--------------------------game saved: " + _stringS)
setSaved = 1;
}

if !firstSave{
	
	var _saveData = array_create(0);

	var _saveScore = {
		bestTime : 999,
		letterScore : "Z",
		bestDeaths : 999,
		collected : -1,
		bossUnlocked : 0,
		boss1Time : 999,
		boss1Deaths : 999,
		boss1LetterScore : "Z",
	}
	array_push(_saveData,_saveScore);

	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1)
	buffer_write( _buffer, buffer_string, _string)
	buffer_save( _buffer, "savedgame.save")
	buffer_delete( _buffer)
	show_debug_message("--------------------------game saved: " + _string)
	firstSave = 1;
	}