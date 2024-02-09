function draw_health() {
	draw_healthbar(
	x - sprite_width/2,
	y - 35,
	x + sprite_width/2,
	y - 30,
	100 * (currentHp / maxHp),
	c_black,
	c_red,
	c_green,
	0 ,
	true, false)


}
