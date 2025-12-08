cam = view_camera[0];


//x = obj_player.x
	x = 0;
if room == Boss1{

	y = obj_player.y;
}else if room == Room30{
	x = obj_player.x
	y = obj_player.y
} else y = camera_get_view_height(cam);




target = obj_player
follow = target;
wHalf = camera_get_view_width(cam) / 2;
hHalf = camera_get_view_height(cam) / 2;
xTo = follow.x;
yTo = follow.y;
vertical = false

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 3;
