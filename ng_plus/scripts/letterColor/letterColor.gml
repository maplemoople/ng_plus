//letterColor(letter)
function letterColor(letter){
		switch (letter){
			case "S":
				return make_color_rgb(252, 186, 3);

			case "A":
				return make_color_rgb(184, 184, 184);

			case "B":
				return make_color_rgb(181, 119, 62);
				
			default:
				return c_black;
			}
}