x = mouse_x
y = mouse_y

//if image_xscale && !image_yscale{
image_xscale = lerp(image_xscale, defaultValue, 0.05);
image_yscale = lerp(image_yscale, defaultValue, 0.05);
//}

//image_blend = make_color_rgb(fadeValue,maxColor,maxColor)

//fadeValue = lerp(fadeValue, maxColor, 0.05);

image_blend = make_color_hsv(hValue, 255, 255)

hValue = lerp(hValue,0,0.05)