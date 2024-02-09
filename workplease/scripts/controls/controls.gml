function controls() {
	right = (keyboard_check(ord("D")) || keyboard_check(vk_right));
	right1 = (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right));
	rightM = (keyboard_check_pressed(vk_right));
	left = (keyboard_check(ord("A")) || keyboard_check(vk_left));
	left1 = (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left));
	leftM = (keyboard_check_pressed(vk_left));
	jump = (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up));
	dashB = (keyboard_check_pressed(vk_lshift));
	attackKey = (keyboard_check_pressed(ord("F")));


}
