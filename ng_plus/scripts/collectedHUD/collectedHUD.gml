//collectedHUD(collected)
function collectedHUD(collected){
		switch(collected){
				case 0:
				return "";

				case 1:
				return "O";

				case 2:
				return "O O";

				case 3:
				return "O O O";

				case 4:
				return "O O O O";

				case 5:
				return "O O O O O";

				default:
				return "";
			}
}