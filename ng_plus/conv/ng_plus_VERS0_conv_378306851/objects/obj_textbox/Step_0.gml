if (keyboard_check_pressed(ord("F"))){
	//increase page if no crash
	if(page+1 < array_length_1d(text)){
		page++;
		charCount= 0;
	} else{
		instance_destroy();
		creator.alarm[1] = 1;	
	}
}