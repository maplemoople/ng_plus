/*draw_set_font(fStats)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom);
draw_set_color(tCol)

draw_text(display_get_gui_width() * 10/100
,display_get_gui_height() * 89 / 100
,"Time: " + string(cTime))

draw_set_font(fStats)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom);
draw_set_color(dCol)

draw_text(display_get_gui_width() * 10/100
,display_get_gui_height() * 93 / 100
,"Deaths: " + string(obj_player.currentDeaths))

draw_set_font(fStats)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom);
draw_set_color(c_black);

draw_text(display_get_gui_width() * 10/100
,display_get_gui_height() * 97 / 100
,string(collectedW))

draw_set_font(fStats)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom);
draw_set_color(c_black);

draw_text(display_get_gui_width() * 10/100
,display_get_gui_height() * 97 / 100
,"Grade: " + string(letterScore))
//draw_text(display_get_gui_width() * 50/100
//,display_get_gui_height() * 93 / 100			//save for later
//,"Score: " + string(endScore))
*/
if room == Line2 {
	draw_set_font(fTitle)
	draw_set_halign(fa_left)
	draw_set_valign(fa_bottom);
	draw_set_color(tCol)

	draw_text(display_get_gui_width() * 10/100
	,display_get_gui_height() * 36 / 100
	,"Time: " + string(cTime))

	draw_set_color(dCol)

	draw_text(display_get_gui_width() * 10/100
	,display_get_gui_height() * 44 / 100
	,"Deaths: " + string(obj_player.currentDeaths))

	draw_set_color(c_black);

	draw_text(display_get_gui_width() * 10/100
	,display_get_gui_height() * 60 / 100
	,string(collectedW))

	draw_set_color(gradeColor);

	draw_text(display_get_gui_width() * 10/100
	,display_get_gui_height() * 52 / 100
	,"Grade: " + string(letterScore))
	
	
	//times to beat and whatnot
	if bestLetterScore != ("Z"){
		draw_set_font(fTitle)
		draw_set_halign(fa_right)
		draw_set_valign(fa_bottom);
		draw_set_color(btCol)

		draw_text(display_get_gui_width() * 90/100
		,display_get_gui_height() * 36 / 100
		,"Best Time: " + string(bestTime))

		draw_set_color(bdCol)

		draw_text(display_get_gui_width() * 90/100
		,display_get_gui_height() * 44 / 100
		,"Best Deaths: " + string(bestDeaths))

		draw_set_color(c_black);

		draw_text(display_get_gui_width() * 90/100
		,display_get_gui_height() * 60 / 100
		,string(bestCollected) + " Collected")

		draw_set_color(bgradeColor);

		draw_text(display_get_gui_width() * 90/100
		,display_get_gui_height() * 52 / 100
		,"Best Grade: " + string(bestLetterScore))
	}
} else if (room == Boss1 || room == Room10){
		if(oTimeStart.drawThingy == 1){
			draw_set_font(fStats)
			draw_set_halign(fa_left)
			draw_set_valign(fa_bottom);
			draw_set_color(tCol)

			draw_text(display_get_gui_width() * 10/100
			,display_get_gui_height() * 87 / 100
			,"Time: " + string(cTime))

			draw_set_color(dCol)

			draw_text(display_get_gui_width() * 10/100
			,display_get_gui_height() * 91 / 100
			,"Deaths: " + string(obj_player.currentDeaths))

			draw_set_color(gradeColor);

			draw_text(display_get_gui_width() * 10/100
			,display_get_gui_height() * 95 / 100
			,"Grade: " + string(letterScore))
		
			//DEBUG
			if bestBoss1LetterScore!= ("Z"){
				draw_set_font(fStats)
				draw_set_halign(fa_right)
				draw_set_valign(fa_bottom);
				draw_set_color(BosstCol)

				draw_text(display_get_gui_width() * 90/100
				,display_get_gui_height() * 87 / 100
				,"Time: " + string(bestBoss1Time))


				draw_set_color(BossdCol)

				draw_text(display_get_gui_width() * 90/100
				,display_get_gui_height() * 91 / 100
				,"Deaths: " + string(bestBoss1Deaths))

				draw_set_color(BossgradeColor);

				draw_text(display_get_gui_width() * 90/100
				,display_get_gui_height() * 95 / 100
				,"Grade: " + string(bestBoss1LetterScore))
			}
		}
		
	} else if (room != Menu && room != Room8 && room != Room9) {
			draw_set_font(fStats)
			draw_set_halign(fa_left)
			draw_set_valign(fa_bottom);
			draw_set_color(tCol)

			draw_text(display_get_gui_width() * 10/100
			,display_get_gui_height() * 87 / 100
			,"Time: " + string(cTime))

			draw_set_color(dCol)

			draw_text(display_get_gui_width() * 10/100
			,display_get_gui_height() * 91 / 100
			,"Deaths: " + string(obj_player.currentDeaths))

			draw_set_color(c_black);

			draw_text(display_get_gui_width() * 10/100
			,display_get_gui_height() * 99 / 100
			,string(collectedW))

			draw_set_color(gradeColor);

			draw_text(display_get_gui_width() * 10/100
			,display_get_gui_height() * 95 / 100
			,"Grade: " + string(letterScore))
		
			//DEBUG
			if bestLetterScore != ("Z"){
				draw_set_font(fStats)
				draw_set_halign(fa_right)
				draw_set_valign(fa_bottom);
				draw_set_color(btCol)

				draw_text(display_get_gui_width() * 90/100
				,display_get_gui_height() * 87 / 100
				,"Time: " + string(bestTime))

				draw_set_color(bdCol)

				draw_text(display_get_gui_width() * 90/100
				,display_get_gui_height() * 91 / 100
				,"Deaths: " + string(bestDeaths))

				draw_set_color(c_black);

				draw_text(display_get_gui_width() * 90/100
				,display_get_gui_height() * 99 / 100
				,string(bestCollected))

				draw_set_color(bgradeColor);

				draw_text(display_get_gui_width() * 90/100
				,display_get_gui_height() * 95 / 100
				,"Grade: " + string(bestLetterScore))
			}
		}