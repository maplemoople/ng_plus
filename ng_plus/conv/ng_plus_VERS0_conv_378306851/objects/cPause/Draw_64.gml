/// @desc draw menu

draw_set_font(fMenu);
draw_set_halign(fa_middle);
draw_set_valign(fa_bottom);


if pause{
	draw_set_color(c_black);
	draw_set_alpha(0.60);
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
	
	draw_set_color(c_white);
	draw_set_alpha(1.00);
	for (var i = 0; i < pmenu_items; i++){
	
		var offset = 2;
		var txt = currentpMenu[i];
		if (pmenu_cursor == i){
			txt = string_insert("[",txt,0);
			txt = string_insert("]",txt,string_length(txt)+1)
			var col = c_white;
		} else {
			var col = c_black;
		}
	
		var xx = pmenu_x;
		var yy = pmenu_y - (pmenu_itemheight * (i * 1.5));
		draw_set_color(col);
		draw_text(xx,yy,txt);
	}
} else {
}
