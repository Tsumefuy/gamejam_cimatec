if (instance_exists(obj_player)) {
	x_to = obj_player.x;
	y_to = obj_player.y;
}

x+= (x_to - x)/17;
y+= (y_to - y)/17;

camera_set_view_pos(view_camera[0],x-(cam_w*0.5), y-(cam_h*0.5));

if (obj_player.hspd > 0) {
	if (obj_player.vspd < 0) angle = acceleration(angle, -max_angle, acc_angle);
	else angle = acceleration(angle, max_angle, acc_angle);
}
else if (obj_player.hspd < 0) {
	if (obj_player.vspd < 0) angle = acceleration(angle, max_angle, acc_angle);
	else angle = acceleration(angle, -max_angle, acc_angle);
}
else angle = acceleration(angle, 0, acc_angle);

camera_set_view_angle(view_camera[0], angle);

if (global.ansiedade >= 75 or instance_position(x,y,obj_safeZone)) {
	view_xport = 0;
	view_yport = 0;
} else if (global.ansiedade >= 50) {
	view_xport = random_range(-1, 1);
	view_yport = random_range(-1, 1);
} else if (global.ansiedade >= 25) {
	view_xport = random_range(-1.5, 1.5);
	view_yport = random_range(-1.5, 1.5);
} else {
	view_xport = random_range(-2, 2);
	view_yport = random_range(-2, 2);
}


