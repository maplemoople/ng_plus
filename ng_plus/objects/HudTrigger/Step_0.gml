if keyboard_check_pressed(ord("Z")) toggled++;
//toggle thingy
if toggled%2 != 0{
	noFadeOut = true;
	oneTime = false;
		fadeTimer = 120;
		if opacity < 1{
			opacity = opacity + 1/fadeInFrames
		}// else opacity = 1;
} else {
	if !oneTime{
	fadeTimer = 0;
	oneTime = true;
	}
	noFadeOut = false;
}

//Timer till it fades out
if !noFadeOut{
	if place_meeting(x,y,obj_player){
			fadeTimer = 1;
	}else fadeTimer = 0;
	if fadeTimer <= 0{
		if opacity > 0 {
		opacity = opacity - 1/fadeOutFrames
		} else opacity = 0;
	}
}
if !oTimeController.firstTime{
	if obj_player.currentDeaths > playerDeathOld{
		opacity = 1;
		playerDeathOld = obj_player.currentDeaths
	}
}