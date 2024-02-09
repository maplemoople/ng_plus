function draw_health_HUD() {
	draw_healthbar(
	camera_get_view_x(view_camera[0]) + 30,
	camera_get_view_y(view_camera[0]) + 30,
	camera_get_view_x(view_camera[0]) + obj_player.maxHp*2,
	camera_get_view_y(view_camera[0]) + 37,
	100 * (obj_player.currentHp / obj_player.maxHp),
	c_ltgray,
	c_maroon,
	c_maroon,
	0 ,
	true, false)


}
