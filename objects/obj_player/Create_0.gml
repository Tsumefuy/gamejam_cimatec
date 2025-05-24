event_inherited();

state_free = function() {
	
	move_h = key_right - key_left != 0;
	move_v = key_down - key_up != 0;
	
	if (move_h or move_v) {
		move_dir = point_direction(0,0,key_right - key_left,key_down-key_up);
		
		if (move_v) {
			spd_v = acceleration(spd_v, spd_max, acc);
		} else {
			spd_v = acceleration(spd_h, 0, dcc);
		}
	
		if (move_h) {
			spd_h = acceleration(spd_h, spd_max, acc);
		} else {
			spd_h = acceleration(spd_v, 0, dcc);
		}
		
		
		hspd = lengthdir_x(spd_h, move_dir);
		vspd = lengthdir_y(spd_v, move_dir);
		
	} else {
		hspd = acceleration(hspd, 0, .1);
		vspd = acceleration(vspd, 0, .1);
	}
}

state = state_free;
