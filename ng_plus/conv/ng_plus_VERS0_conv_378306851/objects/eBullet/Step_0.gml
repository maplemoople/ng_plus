
//Added this here instead of collision event for future NG+ canges
if place_meeting(x,y,obj_wallvert){
	repeat(30){
		instance_create_layer(x,y,"Bullets",pBulletP)
	}

	audio_play_sound(aBulletDie,1,false)

	instance_destroy();
}