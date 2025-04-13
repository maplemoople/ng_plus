/// @desc Gui/Vars/Menu Setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width/2; // + 200 for animation or something
menu_y = (gui_height/2)+200;
menu_x_target = (gui_width/2) - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
subMenuTotalWidth = 0;
menu_committed = -1;
menu_control = true;

setLoaded = 0;
amFullscreen = NaN;
if window_get_fullscreen()
isFullscreen = "YES";
else
isFullscreen = "NO";

menu[2] = "Play";
menu[1] = "Options";
menu[0] = "Quit";

options[3] = "SFX Volume: " + string(oSoundController.sfxVolume * 100);
options[2] = "Music Volume: " + string(oSoundController.musicVolume * 100);
options[1] = "Fullscreen: " + string(isFullscreen);
options[0] = "Back";

subSelection[1] = "  Bosses  "
subSelection[0] = "  Levels  "

sublvlMenu[3] = "   Area 4   ";
sublvlMenu[2] = "   Area 3   ";
sublvlMenu[1] = "   Area 2   ";
sublvlMenu[0] = "   Area 1   ";

subBossMenu[3] = "   Boss 4   ";
subBossMenu[2] = "   Boss 3   ";
subBossMenu[1] = "   Boss 2   ";
subBossMenu[0] = "   Boss 1   ";

lvlSelect[2] = sublvlMenu;
lvlSelect[1] = "  Levels >";
lvlSelect[0] = "Back";

bosslvlSelect[2] = subBossMenu;
bosslvlSelect[1] = "< Bosses  "
bosslvlSelect[0] = "Back";

noImageMenu[0] = "";

levelImageMenu[3] = lockedImage;
levelImageMenu[2] = lockedImage;
levelImageMenu[1] = lockedImage;
levelImageMenu[0] = levelImage1;

bossImageMenu[3] = lockedImage;
bossImageMenu[2] = lockedImage;
bossImageMenu[1] = lockedImage;
bossImageMenu[0] = lockedImage;

levelBackground[3] = Line0
levelBackground[2] = Line0
levelBackground[1] = Line0
levelBackground[0] = Line0

bossBackground[3] = Line0
bossBackground[2] = Line0
bossBackground[1] = Line0
bossBackground[0] = Line0

levelMusic[3] = "lvl1st"
levelMusic[2] = "lvl1st" 
levelMusic[1] = "lvl1st" 
levelMusic[0] = "lvl1st"

bossMusic[3] = "lvl1st"
bossMusic[2] = "lvl1st"
bossMusic[1] = "lvl1st"
bossMusic[0] = "lvl1st"

currentMenu = menu;
subMenu = subSelection;
imageMenu = noImageMenu;

menu_items = array_length_1d(menu);
subMenuItems = array_length_1d(subSelection)
menu_cursor = 2;
subMenuCursor = 0;

lvlBestLetter[3] = "Z"
lvlBestLetter[2] = "Z"
lvlBestLetter[1] = "Z"
lvlBestLetter[0] = "Z"

lvlBestCollected[3] = 0 
lvlBestCollected[2] = 0
lvlBestCollected[1] = 0
lvlBestCollected[0] = 0

bossBestLetter[3] = "Z"
bossBestLetter[2] = "Z"
bossBestLetter[1] = "Z"
bossBestLetter[0] = "Z"

bossBestTime[3] = 999
bossBestTime[2] = 999
bossBestTime[1] = 999
bossBestTime[0] = 999

mbestTime = 999;
mbestDeaths = 999;
mbestLetterScore = "Z";
mbestCollected =-1;
mBossUnlocked = 0;
mBoss1Deaths = 999;
mBoss1LetterScore = "Z";
mBoss1Time = 999
mlvl2Unlocked = 0;
mbestTime2 =999;
mbestDeaths2 =999;
mbestLetterScore2 = "Z";
mbestCollected2 = -1;
gameVer = 0;

if (file_exists("savedgame.save")){
	var _buffer = buffer_load("savedgame.save")
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	var _loadScore = _loadData[0]
	test = variable_struct_names_count(_loadScore)
	if variable_struct_names_count(_loadScore) != 13{
		saveData.firstSave = 0;
	}
} else saveData.firstSave = 0;


window_set_cursor(cr_none)