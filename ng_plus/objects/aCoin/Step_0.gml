numberlol++
y += 0.05 * sin(0.05 * numberlol)

if potential{
	image_index = 1;
	image_xscale = 0.75;
	image_yscale = 0.75;
	x = obj_player.x;
	y = obj_player.y - 10;
	if room != startRoom{
		repeat(10){
		instance_create_layer(x,y,"Bullets",pCoinP)
		}
		oTimeController.collected++;
		if instance_exists(HudTrigger){
			HudTrigger.opacity = 1;
		}	
		audio_play_sound(aCoinCollect,1,false)
		instance_destroy();
	}
} else { 
	image_index = 0;
	image_xscale = 1;
	image_yscale = 1;
	if room != startRoom{
		instance_destroy();
	}
}

if obj_player.blowup == 1{
	x = ogX;
	y = ogY;
	potential = 0;
}
	