hspd = 2;
vspd = 0;

spd = 3;

dir = image_angle - 270;
time = 2;

player_proximo = false;

retorna_mov = false;
okay = false;
distraido = false;

state_free = function() {
	player_proximo = place_meeting(x + hspd, y, obj_player);
	
	if (player_proximo) {
		state = state_parado;
		dir_anterior =  dir;
	}

	if (instance_position(x-(lengthdir_x(sprite_width, dir))/2, y, obj_inimigo_pare) and !okay) {
		dir_anterior =  dir;
		state = state_parado;
		alarm[0] = game_get_speed(gamespeed_fps) * 3;
	}
	
	if (retorna_mov) {
		dir = dir_anterior;
		switch (dir) {
			case 0:
				hspd = spd; vspd = 0;
				break;
			case -90:
				hspd = 0; vspd = spd;
				break;
			case -180:
				hspd = -spd; vspd = 0;
				break;
			case -270:
				hspd = 0; vspd = -spd;
				break;
		}
		retorna_mov = false;
	}
	
	if (place_meeting(x + spd, y, obj_inimigo_cima)) {
		hspd = 0;
		vspd = -spd;
		dir = acceleration(dir, 90, -30);
	}

	if (place_meeting(x + hspd, y, obj_inimigo_baixo)) {
		hspd = 0;
		dir = acceleration(dir, 270, -45);
		vspd = spd;
	}

	if (place_meeting(x + spd, y, obj_inimigo_direita)) {
		hspd = spd;
		vspd = 0;
		dir = acceleration(dir, 0, -30);
	}

	if (place_meeting(x + spd, y, obj_inimigo_esquerda)) {
		hspd = -spd;
		vspd = 0;
		dir = acceleration(dir, 180, -30);
	}

	if (image_angle <= -360) {
		image_angle = 0;
		dir = 0;
	} else {
		image_angle = dir;
	}
};

state = state_free;

state_parado = function() {
	
	player_proximo = place_meeting(x + hspd, y, obj_player);
	
	if (!player_proximo and !place_meeting(x+hspd, y, obj_inimigo_pare)) {
		state=state_free;
		retorna_mov = true;
		exit;
	} 
	
	if (place_meeting(x+hspd, y, obj_inimigo_pare) and okay) {
		retorna_mov = true;
		alarm[1] = game_get_speed(gamespeed_fps) * 2;
		state = state_free;
	}
	
	hspd = 0;
	vspd = 0;
};

state_distraido = function() {
	instance_deactivate_object(obj_distracao_zone);
	
	if (instance_exists(obj_projectile)) 
		image_angle = point_direction(x,y, obj_projectile.x, obj_projectile.y);
	else {
		retorna_mov = true;
	}
	
	if (retorna_mov) {
		dir = dir_anterior;    
		state = state_free;
	}
	hspd = 0;
	vspd = 0;
};
