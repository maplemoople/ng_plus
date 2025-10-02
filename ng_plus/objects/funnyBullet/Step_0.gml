
//Added this here instead of collision event for future NG+ canges
if place_meeting(x,y,obj_wallvert){
	repeat(30){
		instance_create_layer(x,y,"Bullets",pBulletP)
	}
	audio_stop_sound(aBulletDie)
	audio_play_sound(aBulletDie,1,false)

	instance_destroy();
}
var xdiff = x - startx
var ydiff = y - starty
var length = sqrt(abs(power(xdiff,2) - power(ydiff,2)))
speed = speed + length/1000
vsp += grv + length/900

/*
if length >= 150{
	vsp += grv * 100
}else if length >= 50{
	vsp += grv
}else {vsp = vsp}
*/

y += vsp