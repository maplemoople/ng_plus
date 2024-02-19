draw_self();

if (active) {
	draw_line(x,y,mx,my);
}
if (flash > 0){
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}
