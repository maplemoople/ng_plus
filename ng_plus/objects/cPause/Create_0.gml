/// @desc Gui/Vars/Menu Setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

pmenu_x = gui_width/2; // + 200 for animation or something
pmenu_y = (gui_height/2);//+200;
pmenu_x_target = (gui_width/2) - gui_margin;
pmenu_speed = 25; //lower is faster
pmenu_font = fMenu;
pmenu_itemheight = font_get_size(fMenu);
pmenu_committed = -1;
pmenu_control = false;


if window_get_fullscreen()
isFullscreen = "YES";
else
isFullscreen = "NO";

pmenu[2] = "Resume";
pmenu[1] = "Options";
pmenu[0] = "Main Menu";

poptions[3] = "SFX Volume: " + string(oSoundController.sfxVolume * 100);
poptions[2] = "Music Volume: " + string(oSoundController.musicVolume * 100);
poptions[1] = "Fullscreen: " + string(isFullscreen);
poptions[0] = "Back";

pquit[1] = "Yes"
pquit[0] = "No"

currentpMenu = pmenu

pmenu_items = array_length_1d(pmenu);
pmenu_cursor = 2;

pause = false;

oldFade = 0;