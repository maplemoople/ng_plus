time = 0;
cTime = 0;
touched = 0;
ends = 0;
collected = 0;
coinScore = 0;
dCol = 0;
tCol = 0;
bdCol = 0;
btCol = 0;
BossdCol = 0;
BosstCol = 0;
bestTime = 999999999;
bestDeaths = 999999;
bestLetterScore = "Z";
bestCollected = 0
boss1End = 0;
bestBoss1Time = 999999999999;
bestBoss1LetterScore = "Z";
bestBoss1Deaths = 9999999;
boss1Deaths = 999999;
boss1Time = 999999;
boss1LetterScore = "Z"; 

if (file_exists("savedgame.save")){
			var _buffer = buffer_load("savedgame.save")
			var _string = buffer_read(_buffer,buffer_string);
			buffer_delete(_buffer);
	
			var _loadData = json_parse(_string);
			var _loadScore = _loadData[0]
			if variable_struct_names_count(_loadScore) == 8{
				bestTime = _loadScore.bestTime ;
				bestDeaths = _loadScore.bestDeaths;
				bestLetterScore = _loadScore.letterScore;
				bestCollected = _loadScore.collected;
				bossUnlocked = _loadScore.bossUnlocked;
				bestBoss1Time = _loadScore.boss1Time;
				bestBoss1Deaths = _loadScore.boss1Deaths;
				bestBoss1LetterScore = _loadScore.boss1LetterScore;
			} else saveData.firstSave = 0;
}
bgradeColor = c_black;
BossgradeColor = c_black;
bestOutline = c_white;
bestOutlineSize = 0;
bestBossOutline = c_white;
bestBossOutlineSize = 0;
scoreOutline = c_white
scoreOutlineSize = 0;
endScore = 0;
letterScore = 0;
gradeColor = c_black
currentDeaths = 0;
endTime = 1000000000;
endDeaths = 100000000;
endCollected = 0;
loaded = 0;
saved = 0;