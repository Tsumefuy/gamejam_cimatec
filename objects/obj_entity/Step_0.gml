if(global.pause){
	image_speed = 0;
	exit;
}else{
	image_speed = 1;
}

with (obj_inimigo) {
	if (instance_exists(obj_projectile) && instance_exists(obj_distracao_zone)) {
		if (obj_projectile.spd == 0) {
			if (position_meeting(obj_projectile.x, obj_projectile.y, obj_distracao_zone) &&
			    position_meeting(x, y, obj_distracao_zone)) {
				dir_anterior = dir;
				state = state_distraido;
				distraido = true;
			}
		}
	}
}


state();

x+=hspd;
y+=vspd;

