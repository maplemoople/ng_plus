// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_outlined(argument0, argument1, argument2, argument3, argument4, argument5){
//draw_text_outlined(x, y, outline color, string color, outline thickness, string)  
var xx,yy;  
xx = argument0;  
yy = argument1;  
  
//Outline  
draw_set_color(argument2);  
draw_text(xx+argument4, yy+argument4, argument5);  
draw_text(xx-argument4, yy-argument4, argument5);  
draw_text(xx,   yy+argument4, argument5);  
draw_text(xx+argument4,   yy, argument5);  
draw_text(xx,   yy-argument4, argument5);  
draw_text(xx-argument4,   yy, argument5);  
draw_text(xx-argument4, yy+argument4, argument5);  
draw_text(xx+argument4, yy-argument4, argument5);  
  
//Text  
draw_set_color(argument3);  
draw_text(xx, yy, argument5);  
}