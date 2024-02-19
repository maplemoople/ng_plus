var far = layer_get_id("Mountains")
var middle = layer_get_id("Bushes")
var bottomGrass= layer_get_id("GrassBottom")
var topGrass = layer_get_id("GrassTop")
var SPACE = layer_get_id("Sky")
var fogclouds = layer_get_id("clouds")
var dirt = layer_get_id("Stars")
var grassmorefront = layer_get_id("dirtForeground")
var MOON = layer_get_id("Sun")
var FOG = layer_get_id("FOG")
//var far2 = layer_get_id("mountainfar")
//var far3 = layer_get_id("mountainfarthest")


//if cPause.pause layer_hspeed(fogclouds,0) else layer_hspeed(fogclouds,-0.03)
//if cPause.pause layer_hspeed(FOG,0) else layer_hspeed(FOG,0.01)
layer_x(far, lerp(0,camera_get_view_x(view_camera[0]), 0.9) );
layer_x(bottomGrass, lerp(0,camera_get_view_x(view_camera[0]), 0.05) );
layer_x(topGrass, lerp(0,camera_get_view_x(view_camera[0]), 0.03) );
layer_x(middle, lerp(0,camera_get_view_x(view_camera[0]), 0.15) );
//layer_x(hillsforeground, lerp(0,camera_get_view_x(view_camera[0]), -0.01) );
layer_x(dirt, lerp(0,camera_get_view_x(view_camera[0]), -0.3) );
layer_x(grassmorefront, lerp(0,camera_get_view_x(view_camera[0]), -0.8) );
layer_x(MOON, lerp(0,camera_get_view_x(view_camera[0]), 0.95) );
layer_x(dirt, lerp(0,camera_get_view_x(view_camera[0]), 0.95) );
layer_x(fogclouds, lerp(0,camera_get_view_x(view_camera[0]), 0.85) );
//layer_x(far2, lerp(0,camera_get_view_x(view_camera[0]), 0.05) );
//layer_x(far3, lerp(0,camera_get_view_x(view_camera[0]), 0.05) );
