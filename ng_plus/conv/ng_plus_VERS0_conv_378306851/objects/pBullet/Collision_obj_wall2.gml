 with (instance_create_layer(x,y,"Bullets", pBulletP)){
		 direction = other.image_angle;
		 if (direction > 90) && (direction < 270) && (place_meeting(x,y,obj_wall2))
		 image_angle = 0;
	 }
instance_destroy();