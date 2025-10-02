if !instance_exists(owner){
		image_speed = -1
}

if image_index <= 1 {
	instance_destroy()
}