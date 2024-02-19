//draw textbox
draw_sprite(textbox, 0, x,y);

//draw text
draw_set_font(EpicFont);
if charCount < string_length(text[page]){
charCount += 0.5;
}
textPart = string_copy(text[page],1,charCount);
//draw name
draw_set_halign(fa_center);
draw_text(x+boxWidth/2,y+yBuffer, name);
draw_set_halign(fa_left);
//draw part of text
draw_text_ext(x+xBuffer,y+stringHeight+yBuffer,textPart,stringHeight,boxWidth);
