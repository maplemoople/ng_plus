/// @desc draw menu

for (var i = 0; i < menu_items; i++){
	if (i == 0){
		draw_set_color(c_black);
		draw_set_alpha(0.60);
		draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
	}
	
	draw_set_font(fMenu);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_bottom);
	draw_set_alpha(1.00);
	
	var txt = currentMenu[i]
	if(typeof(currentMenu[i]) == "string"){
		if (menu_cursor == i){
			txt = string_insert("[",txt,0);
			txt = string_insert("]",txt,string_length(txt)+1)
			var col = c_white;
		} else {
			var col = c_black;
		}
		var xx = menu_x;
		var yy = menu_y - (menu_itemheight * (i * 1.75));
		draw_set_color(col);
		draw_text(xx,yy,txt);
	}
	if (typeof(currentMenu[i]) == "array"){
		subMenu = currentMenu[i];
		subMenuItems = array_length_1d(currentMenu[i]);
		for (var j = 0; j < subMenuItems; j++){
			var subtxt = subMenu[j]
			if (menu_cursor == 2){
				if (subMenuCursor == j){
					var subcol = c_black;
				} else {
					var subcol = c_gray;
				}
				var sxx = (menu_x - (string_width(subMenu[0]) * ((array_length(subMenu)-1)/2))) + (string_width(subMenu[0]) * (j));
				var syy = menu_y - (menu_itemheight * (i * 1.75) + 310);
				if ((imageMenu[0] != "") && (subMenuCursor == j)){
					image_speed = 0.25;
					draw_sprite_ext(imageMenu[j],image_index,sxx,syy,1,1,0,c_white,1)
				} else {
					draw_sprite_ext(imageMenu[j],0,sxx,syy,1,1,0,c_gray,1)
				}
			} else {
				var sxx = (menu_x - (string_width(subMenu[0]) * ((array_length(subMenu)-1)/2))) + (string_width(subMenu[0]) * (j));
				var syy = menu_y - (menu_itemheight * (i * 1.75) + 310);
				var subcol = c_gray;
				draw_sprite_ext(imageMenu[j],0,sxx,syy,1,1,0,c_gray,1)
			}
				
			if (currentMenu == lvlSelect){
				if (mbestLetterScore != "Z"){
					draw_set_color(mgradeColor);
					draw_set_halign(fa_right);
					draw_text(sxx + 75, syy + 287, mbestLetterScore);
					draw_set_color(subcol);
					draw_set_halign(fa_left);
					draw_text(sxx - 75 , syy + 287, mcollectedW);
				}
				draw_set_color(subcol);
				draw_set_halign(fa_middle);
				draw_text(sxx, syy, subtxt);
			} else if (currentMenu == bosslvlSelect){
				if(mBoss1LetterScore != "Z"){
					draw_set_color(mgradeColor);
					draw_set_halign(fa_right);
					draw_text(sxx + 75, syy + 287, mBoss1LetterScore);
					draw_set_color(subcol);
					draw_set_halign(fa_left);
					draw_text(sxx - 75 , syy + 287, mBoss1Time);
				}
				draw_set_color(subcol);
				draw_set_halign(fa_middle);
				draw_text(sxx, syy, subtxt);
			}
		}
	}
}

if (currentMenu == lvlSelect) || (currentMenu == bosslvlSelect){
	draw_set_font(fTitle);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_bottom);
	draw_set_color(c_white);
	draw_text(xx, gui_height/2, "")
} else{
	draw_set_font(fTitle);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_bottom);
	draw_set_color(c_white);
	draw_text(xx, gui_height/2, "NG")
}