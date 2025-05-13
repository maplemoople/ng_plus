
if instance_exists(HudTrigger){
	draw_set_alpha(HudTrigger.opacity)
} else{draw_set_alpha(1)}

	switch(whichLevel){
		case "lvl1":
			if room == Line2{
					//This is the end of Level 1 before you get to the boss areas and it shows you the scores
					draw_set_font(fStats)
					draw_set_halign(fa_left)
					draw_set_valign(fa_bottom);
					draw_set_color(tCol)
		
					// Current time
					draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 36 / 100, c_white, tCol, 0, "Time: " + string(cTime));
					// Current Deaths
					draw_set_color(dCol)
					draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 44 / 100, c_white, dCol, 0, "Deaths: " + string(obj_player.currentDeaths));
					// Current Collected
						draw_set_color(c_black);
						draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 60 / 100, c_white, c_black, 0, string(collectedHUD(collected)));
					// Current Grade
					draw_set_color(gradeColor);
					draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 52 / 100, scoreOutline, gradeColor, scoreOutlineSize, "Grade: " + string(letterScore));

					//times to beat and whatnot
						if bestLetterScore != ("Z"){
							draw_set_font(fStats)
							draw_set_halign(fa_right)
							draw_set_valign(fa_bottom);
							// Best Time
							draw_set_color(btCol)
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 36 / 100, c_white, btCol, 0, "Best Time: " + string(bestTime));
							// BEst Deaths
							draw_set_color(bdCol)
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 44 / 100, c_white, bdCol, 0, "Best Deaths: " + string(bestDeaths));
							// Best COllected
							draw_set_color(c_black);
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 60 / 100, c_white, c_black, 0, string(collectedHUD(bestCollected)));
							// Best Letter Score
							draw_set_color(bgradeColor);
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 52 / 100, bestOutline, bgradeColor, bestOutlineSize, "Best Grade: " + string(bestLetterScore));

						}
			} else if (room != Menu && room != Room8 && room != Room9) {
		
						//this is for when you are in the level and it shows it to you
						if bestLetterScore != ("Z"){
				
							//Best HUD displays
							draw_set_font(fMenu)
							draw_set_halign(fa_right)
							draw_set_valign(fa_bottom);
							// Best Time Display
							draw_set_color(btCol)
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 87 / 100, c_white, btCol, 3, "Time: " + string(bestTime));
							// Best Death Display
							draw_set_color(bdCol)
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 91 / 100, c_white, bdCol, 3, "Deaths: " + string(bestDeaths));
							// Best Collected DIsplay
							draw_set_color(c_black);
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 99 / 100, c_white, c_black, 3, string(collectedHUD(bestCollected)));
							// Best Grade Display
							draw_set_color(bgradeColor);
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 95 / 100, c_white, bgradeColor,3, "Grade: " + string(bestLetterScore));

							//Current HUD displays
							draw_set_font(fMenu)
							draw_set_halign(fa_left)
							draw_set_valign(fa_bottom);
							// Current Grade Display
							draw_set_color(gradeColor);
							draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 95 / 100, c_white, gradeColor, 3, "Grade: " + string(letterScore));
							// Current Death Display
							draw_set_color(dCol)
							draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 91 / 100, c_white, dCol, 3, "Deaths: " + string(obj_player.currentDeaths));
							// Current Time Display
							draw_set_color(tCol)
							draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 87 / 100, c_white, tCol, 3, "Time: " + string(cTime));
							// Current COllectables
							draw_set_color(c_black);
							draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 99 / 100, c_white, c_black, 3, string(collectedHUD(collected)));
						} else {
							draw_set_font(fStats)
							draw_set_halign(fa_left)
							draw_set_valign(fa_bottom);

							draw_set_color(c_black);
							draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 93 / 100, c_white, c_black, 10, string(collectedHUD(collected)));
						}
					}
		break;
		case"boss1":
			 if room == Line3 {
						//This is end of boss1
				draw_set_font(fStats)
				draw_set_halign(fa_left)
				draw_set_valign(fa_bottom);
				draw_set_color(tCol)
				// Current time
				draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 36 / 100, c_white, tCol, 0, "Time: " + string(cTime));
				// Current Deaths
				draw_set_color(dCol)
				draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 44 / 100, c_white, dCol, 0, "Deaths: " + string(obj_player.currentDeaths));
		
				// Current Grade
				draw_set_color(gradeColor);
				draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 52 / 100, scoreOutline, gradeColor, scoreOutlineSize, "Grade: " + string(letterScore));

					if bestLetterScore != ("Z"){
						draw_set_font(fStats)
						draw_set_halign(fa_right)
						draw_set_valign(fa_bottom);
						// Best Boss Time
						draw_set_color(btCol)
						draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 36 / 100, c_white, btCol, 0, "Best Time: " + string(bestBoss1Time));
						// BEst Boss Deaths
						draw_set_color(bdCol)
						draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 44 / 100, c_white, bdCol, 0, "Best Deaths: " + string(bestBoss1Deaths));
						// Best Boss Letter Score
						draw_set_color(bgradeColor);
						draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 52 / 100, bestBossOutline, BossgradeColor, bestBossOutlineSize, "Best Grade: " + string(bestBoss1LetterScore));
					}
			} else {
						// this is for the boss room HUD displays
					if(oTimeStart.drawThingy == 1){
						draw_set_font(fMenu)
						draw_set_halign(fa_left)
						draw_set_valign(fa_bottom);

			//I MOVED ALL THINGS INTO THE AFTER THING SO YOU DONT SEE ANYTHING ON FIRST PLAYTHROUGH (OTHER THAN COLLECTABLES) <----- VERY IMPORTANT PLEASE READ PLEASE I BEG YOU

			//I MOVED THE NORMAL GRADE SCORE TO ONLY BE DISPLAYED AFTER YOU GET A COMPLETION SO IT IS BELLOW IN THE IF ('Z') SECTION VVV

						if bestBoss1LetterScore!= ("Z"){
							draw_set_font(fMenu)
							draw_set_halign(fa_right)
							draw_set_valign(fa_bottom);
							// BEst Boss TIme
							draw_set_color(BosstCol)
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 87 / 100, c_white, BosstCol, 3, "Time: " + string(bestBoss1Time))
							// Best boss Deaths
							draw_set_color(BossdCol)
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 91 / 100, c_white, BossdCol, 3, "Deaths: " + string(bestBoss1Deaths))
							// Best Boss Grade
							draw_set_color(BossgradeColor);
							draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 95 / 100, c_white, BossgradeColor, 3, "Grade: " + string(bestBoss1LetterScore))

							//so you cant see what grade you get before youve actually beaten the level :)
							draw_set_font(fMenu)
							draw_set_halign(fa_left)
							draw_set_valign(fa_bottom);
							//Boss Grade Display
							draw_set_color(gradeColor);
							draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 95 / 100, c_white, gradeColor, 3, "Grade: " + string(letterScore))
							//Boss Death COunter Display
							draw_set_color(dCol)
							draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 91 / 100, c_white, dCol, 3, "Deaths: " + string(obj_player.currentDeaths))
							//Boss Time Display
							draw_set_color(tCol)
							draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 87 / 100, c_white, tCol, 3, "Time: " + string(cTime))
						}
					}
			}
			
			break;
		case"lvl2":
			if room !=Room22{
				if room == Room21{
						//This is the end of Level 1 before you get to the boss areas and it shows you the scores
						draw_set_font(fStats)
						draw_set_halign(fa_left)
						draw_set_valign(fa_bottom);
						draw_set_color(tCol)
		
						// Current time
						draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 36 / 100, c_white, tCol, 0, "Time: " + string(cTime));
						// Current Deaths
						draw_set_color(dCol)
						draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 44 / 100, c_white, dCol, 0, "Deaths: " + string(obj_player.currentDeaths));
						// Current Collected
							draw_set_color(c_black);
							draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 60 / 100, c_white, c_black, 0, string(collectedHUD(collected)));
						// Current Grade
						draw_set_color(gradeColor);
						draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 52 / 100, scoreOutline, gradeColor, scoreOutlineSize, "Grade: " + string(letterScore));

						//times to beat and whatnot
							if bestLetterScore2 != ("Z"){
								draw_set_font(fStats)
								draw_set_halign(fa_right)
								draw_set_valign(fa_bottom);
								// Best Time
								draw_set_color(btCol)
								draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 36 / 100, c_white, btCol, 0, "Best Time: " + string(bestTime2));
								// BEst Deaths
								draw_set_color(bdCol)
								draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 44 / 100, c_white, bdCol, 0, "Best Deaths: " + string(bestDeaths2));
								// Best COllected
								draw_set_color(c_black);
								draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 60 / 100, c_white, c_black, 0, string(collectedHUD(bestCollected2)));
								// Best Letter Score
								draw_set_color(bgradeColor);
								draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 52 / 100, bestOutline, bgradeColor, bestOutlineSize, "Best Grade: " + string(bestLetterScore2));

							}
				} else if (room != Menu && room != Room8 && room != Room9) {
		
							//this is for when you are in the level and it shows it to you
							if bestLetterScore2 != ("Z"){
				
								//Best HUD displays
								draw_set_font(fMenu)
								draw_set_halign(fa_right)
								draw_set_valign(fa_bottom);
								// Best Time Display
								draw_set_color(btCol)
								draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 87 / 100, c_white, btCol, 3, "Time: " + string(bestTime2));
								// Best Death Display
								draw_set_color(bdCol)
								draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 91 / 100, c_white, bdCol, 3, "Deaths: " + string(bestDeaths2));
								// Best Collected DIsplay
								draw_set_color(c_black);
								draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 99 / 100, c_white, c_black, 3, string(collectedHUD(bestCollected2)));
								// Best Grade Display
								draw_set_color(bgradeColor);
								draw_text_outlined(display_get_gui_width() * 90/100, display_get_gui_height() * 95 / 100, c_white, bgradeColor, 3, "Grade: " + string(bestLetterScore2));

								//Current HUD displays
								draw_set_font(fMenu)
								draw_set_halign(fa_left)
								draw_set_valign(fa_bottom);
								// Current Grade Display
								draw_set_color(gradeColor);
								draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 95 / 100, c_white, gradeColor, 3, "Grade: " + string(letterScore));
								// Current Death Display
								draw_set_color(dCol)
								draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 91 / 100, c_white, dCol, 3, "Deaths: " + string(obj_player.currentDeaths));
								// Current Time Display
								draw_set_color(tCol)
								draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 87 / 100, c_white, tCol, 3, "Time: " + string(cTime));
								// Current COllectables
								draw_set_color(c_black);
								draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 99 / 100, c_white, c_black, 3, string(collectedHUD(collected)));
							} else {
								draw_set_font(fStats)
								draw_set_halign(fa_left)
								draw_set_valign(fa_bottom);

								draw_set_color(c_black);
								draw_text_outlined(display_get_gui_width() * 10/100, display_get_gui_height() * 93 / 100, c_white, c_black, 10, string(collectedHUD(collected)));
							}
						}
			}
		break;
	}

draw_set_alpha(1) //THIS IS NEEDED BECAUSE IT AFFECTS HOW EVERYTHING AFTER IS "DRAWN"
//restart R 
if instance_exists(obj_player){
	if obj_player.restartConfirm {
		draw_set_font(fTitle);
		draw_set_halign(fa_right)
		draw_set_valign(fa_bottom);
		// draw text normally then blink after 200 frames every 25 frames
		if (obj_player.restartCooldown < 400){
			restartDraw = 1;
		} else if obj_player.restartCooldown%15 == 0{
				if restartDraw == 1{
					restartDraw = 0
				} else if restartDraw == 0 {
						restartDraw = 1
				}
			}
		switch restartDraw{
			case 1:
				draw_text_outlined(display_get_gui_width() * 5/100, display_get_gui_height() * 10 / 100, c_blue, c_aqua, 10, "R");
			break;
		}
	}
}