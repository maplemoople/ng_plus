if whatsBelowMe > 0{
	oldDistance = distance;
	distance = things[| 0].bbox_top - y;
	if oldDistance != distance{
			image_yscale = distance/heightOfSprite;
	}
	ds_list_clear(things);
	whatsBelowMe = 0;
} else whatsBelowMe = collision_line_list(x,y,x,999,collide,false,true,things,true)