repeat(30){
		instance_create_layer(x,y,"Bullets",pBulletP)
}

audio_play_sound(aBulletDie,1,false)

instance_destroy();