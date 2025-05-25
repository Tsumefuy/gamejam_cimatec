hspd = 0;
vspd = 0;

move_h = 0;
move_v = 0;
move_dir = 0;

spd_v = 0;
spd_h = 0;
spd_max = 6;
acc = .5;
dcc = .1;

global.ansiedade = 100;

state_free = function() {
	
	move_h = key_right - key_left != 0;
	move_v = key_down - key_up != 0;
	
	if (move_h or move_v) {
		sprite_index = spr_player_run;
		
		move_dir = point_direction(0,0,key_right - key_left,key_down-key_up);
		
		if (move_v) {
			spd_v = spd_max
		} else {
			spd_v = spd_max
		}
	
		if (move_h) {
			spd_h = spd_max;
		} else {
			spd_h = spd_max;
		}
		
		
		hspd = lengthdir_x(spd_h, move_dir);
		vspd = lengthdir_y(spd_v, move_dir);
		
	} else {
		hspd = 0;
		vspd = 0;
		sprite_index = spr_player_idle;
	}
}

state = state_free;
