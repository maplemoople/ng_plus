function draw_stamina_HUD() {
	draw_healthbar(
	camera_get_view_x(view_camera[0]) + 30,
	camera_get_view_y(view_camera[0]) + 40,
	camera_get_view_x(view_camera[0]) + obj_player.staminaMax/3,
	camera_get_view_y(view_camera[0]) + 47,
	100 * (obj_player.stamina / obj_player.staminaMax),
	c_ltgray,
	c_teal,
	c_teal,
	0 ,
	true, false)


}