if(place_meeting(x,y,obj_player)){
	//check if i created textbox
if(keyboard_check_pressed(ord("F"))){
	if (myTextbox == noone){
	myTextbox = instance_create_layer(x,y,"Text",obj_textbox);
	myTextbox.text = myText;
	myTextbox.creator = self;
	myTextbox.name = myName;
	}
	}
} else {
	if(myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	}
}
