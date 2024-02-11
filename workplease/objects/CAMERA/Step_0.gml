//upadte camera view
wHalf = camera_get_view_width(cam) / 2;
hHalf = camera_get_view_height(cam);


//THE CAMERA WONT FOLLOW PLAYER IF THE SCREENSHAKE ENDING KEEPS RESETING THE CAMERA TO A STATIC POSITION (end step event) <---- PLEASE CHANGE OR ELSE YOU WILL BE FRUSTRATED AND SPEND LIKE AN HOUR OR MORE TRYING TO FIX LOGICALLY SOUND CODE :))))))))))))))))))))))))
if room == Boss1{
	y += (obj_player.y - y) / 5;
	hHalf = camera_get_view_height(cam) / 2;
	y = clamp (y,hHalf,room_height-hHalf);
	x += (xTo - x) / 5;
	wHalf = camera_get_view_width(cam);
	x = clamp (x,wHalf,room_width-wHalf);
}



/*
//update end point
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}


//move object (higher divide slower the camera smoothing)
x += (xTo - x) / 5;
y += (yTo - y) / 5;

//keeps camera inside room
x = clamp(x,wHalf+buff,room_width-wHalf-buff);
y = clamp (y,hHalf+buff,room_height-hHalf-buff);
*/

//screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));


//camera view
camera_set_view_pos(cam, x, y - hHalf);
cursor_sprite = cr_none