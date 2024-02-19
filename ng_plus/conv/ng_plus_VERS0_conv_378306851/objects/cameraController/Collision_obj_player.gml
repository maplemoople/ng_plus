cam = view_camera[0];
camCW = camera_get_view_width(cam);
camCH = camera_get_view_height(cam);
camWidth = lerp(camCW, camNW, 0.03)
camHeight = lerp(camCH,camNH, 0.03)


camera_set_view_size(cam,camWidth,camHeight);
