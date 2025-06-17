if (ontop){
	if  image_index > 12 {
	image_speed = 0;
	obj_player.x = tpx
	obj_player.y = tpy
	} else {
		image_speed = 1;
	}
} else if image_index >1{
	image_speed = -1;
} else if image_index < 1{
	image_speed = 0;
}

with TP{
	if place_meeting(x,y,obj_player){
		owner.ontop = 1;
	} else owner.ontop = 0;
}