processAttack(sPBullet,sPBullet,3,10,sPBullet)
repeat(10){
		instance_create_layer(x,y,"Bullets",pBulletP)
}
	other.hitFrom = hitDirection;
	other.launched = 0;
	instance_destroy();