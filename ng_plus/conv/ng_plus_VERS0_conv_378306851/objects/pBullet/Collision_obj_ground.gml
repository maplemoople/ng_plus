 with (instance_create_layer(x,y,"Bullets", pBulletP)){
		 direction = other.image_angle;
		 if (180 < direction) && (direction < 360) && (place_meeting(x,y,obj_ground))
		 image_angle = 270;
	 }
instance_destroy();