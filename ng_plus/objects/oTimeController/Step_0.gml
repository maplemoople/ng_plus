
	/*
	if(!loaded){
		if (file_exists("savedgame.save")){
				var _buffer = buffer_load("savedgame.save")
				var _string = buffer_read(_buffer,buffer_string);
				buffer_delete(_buffer);
	
				var _loadData = json_parse( _string);
				var _loadScore = _loadData[0]
				_loadScore.bestTime = bestTime;
				_loadScore.bestDeaths = bestDeaths;
				_loadScore.letterScore = bestLetterScore;
				_loadScore.collected = bestCollected
		} else{
			bestTime = 999999999;
			bestDeaths = 999999;
			bestLetterScore = "D";
			bestCollected = 0;
		}
		loaded = 1;
	}

	*/
if instance_exists(obj_player) && instance_exists(oTimeStart) && instance_exists(saveData){
	cTime = oTimeStart.time / 60

	if ends && room != Boss1{
		bossUnlocked = 1
		endTime = cTime;
		endDeaths = obj_player.currentDeaths;
		endCollected = collected
		if endCollected > bestCollected {bestCollected = endCollected}
			bestScore = 3*bestTime + (5 * bestDeaths) - bestCollected * 20
		if endScore < bestScore{
			bestLetterScore = letterScore
			bestTime = endTime
			bestDeaths = endDeaths
		}
		saveData.saved = 0;
		ends = 0;
	}
	
	if boss1End{
		bestBoss1Score = 5*bestBoss1Time + (5 * bestBoss1Deaths)
		if endScore < bestBoss1Score{
			bestBoss1Time = boss1Time;
			bestBoss1Deaths = boss1Deaths;
			bestBoss1LetterScore = boss1LetterScore;
		}
	}


	if (obj_player.currentDeaths < 18) dCol = make_color_rgb(obj_player.currentDeaths * 15,0,0) else dCol = make_color_rgb(255,0,0)

	if (cTime < 255) tCol = make_color_rgb(cTime,0,0) else tCol = make_color_rgb(255,0,0)
		
		
	if (bestDeaths < 18) bdCol = make_color_rgb(bestDeaths * 15,0,0) else bdCol = make_color_rgb(255,0,0)

	if (bestTime < 255) btCol = make_color_rgb(bestTime,0,0) else btCol = make_color_rgb(255,0,0)


	if (bestBoss1Deaths < 18) BossdCol = make_color_rgb(bestBoss1Deaths * 15,0,0) else BossdCol = make_color_rgb(255,0,0)

	if (bestBoss1Time < 255) BosstCol = make_color_rgb(bestBoss1Time,0,0) else BosstCol = make_color_rgb(255,0,0)
	switch(collected){
		case 0:
		collectedW = "";
		break;
		case 1:
		collectedW = "O";
		break;
		case 2:
		collectedW = "O O";
		break;
		case 3:
		collectedW = "O O O";
		break;
		case 4:
		collectedW = "O O O O";
		break;
		case 5:
		collectedW = "O O O O O";
		break;
	}

	coinScore = collected * 20
	if room !=Boss1 && room != Room10{
		endScore = 3*cTime + (5 * obj_player.currentDeaths) - coinScore
		if endScore < 100{
			letterScore = "S";
			gradeColor = make_color_rgb(252, 186, 3)
		}
		else if(endScore < 150){
				letterScore = "A";
				gradeColor = make_color_rgb(184, 184, 184)
			}
			else if(endScore < 200){
					letterScore = "B";
					gradeColor = make_color_rgb(181, 119, 62)
				}
				else if(endScore < 250){
						letterScore = "C";
						gradeColor = c_black
					}
					else if(endScore < 300){
							letterScore = "D";
							gradeColor = c_black
						}
						else if(endScore < 350){
								letterScore = "F";
								gradeColor = c_black
							}
	} else{
		endScore = cTime + 2 * obj_player.currentDeaths //Boss Score
		if endScore < 30{ //30 seconds no deaths
			letterScore = "S";
			gradeColor = make_color_rgb(252, 186, 3)
		}
		else if(endScore < 110){ //1:30 with 10 deaths
				letterScore = "A";
				gradeColor = make_color_rgb(184, 184, 184)
			}
			else if(endScore < 400){ //5:00 with 50 deaths
					letterScore = "B";
					gradeColor = make_color_rgb(181, 119, 62)
				}
				else if(endScore < 800){ //10:00 with 100 deahts
						letterScore = "C";
						gradeColor = c_black
					}
					else if(endScore < 1300){ //15:00 with 200 deaths
							letterScore = "D";
							gradeColor = c_black
						}
						else{
							letterScore = "F";
							gradeColor = c_black
							}
	}
	switch (bestLetterScore){
			case "S":
				bgradeColor = make_color_rgb(252, 186, 3)
			break;
			case "A":
				bgradeColor = make_color_rgb(184, 184, 184)
			break;
			case "B":
				bgradeColor = make_color_rgb(181, 119, 62)
			break;
			}
	switch (bestBoss1LetterScore){
			case "S":
				BossgradeColor = make_color_rgb(252, 186, 3)
			break;
			case "A":
				BossgradeColor = make_color_rgb(184, 184, 184)
			break;
			case "B":
				BossgradeColor = make_color_rgb(181, 119, 62)
			break;
			case"Z":
				BossgradeColor = c_black
			break;
			}
}