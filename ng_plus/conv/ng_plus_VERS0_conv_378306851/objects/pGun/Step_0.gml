if (reload){
	sprite_index = sEGunR
	image_speed = 1;
	if animation_end(){
		reload = false
		ammo = ammoMax
	}
}
if (ammo < ammoMax) && keyboard_check_pressed(ord("R"))
	reload = true;
	
if !reload {
	sprite_index = sEGun;
	image_speed = 0;
}
	