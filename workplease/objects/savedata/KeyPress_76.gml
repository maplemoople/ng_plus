

//save array
var _saveData = array_create(0);

var _saveScore = {
	bestTime : 9999999999999,
	letterScore : "Z",
	bestDeaths : 999999999999,
	collected : -1,
	boss1Time : 99999999999999,
	boss1Deaths : 999999999999999,
}
array_push(_saveData,_saveScore);

var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1)
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "savedgame.save")
buffer_delete( _buffer)
show_debug_message("--------------------------game saved: " + _string)