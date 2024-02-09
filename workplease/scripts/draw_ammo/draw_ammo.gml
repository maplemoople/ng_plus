// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_ammo(){
	draw_set_color(c_yellow)
	draw_set_font(AMMO)
	draw_text(camera_get_view_x(view_camera[0]) + 40,camera_get_view_y(view_camera[0]) + 110,pGun.ammo)
}