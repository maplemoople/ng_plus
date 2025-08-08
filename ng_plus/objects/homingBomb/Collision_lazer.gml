if !collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,false){
	instance_create_layer(x,y,"Bullets",fatExplosion)
}
screenShake(10,3)
audio_play_sound(aEXPLODE,1,false)
		
repeat(100){
		xrand = random_range(-10,10)
		yrand = random_range(-10 + xrand, 10 - xrand)
		with (instance_create_layer(x + xrand,y + yrand,"Bullets",pBulletP2)){
			buh = 0.1
			size = random_range(0.5,2.5)
			palerand = random_range(0,150)
			image_xscale = size
			image_yscale = size
			image_blend = (make_color_rgb(255,palerand,palerand))
			vanishSpeed = random_range(0.03,0.15)
		}
}
instance_destroy()