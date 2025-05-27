if(global.pause){
	image_speed = 0;
	exit;
}else{
	image_speed = 1;
}

script_execute(get_inputs);

#region COLISÃO E MOV

if place_meeting(x+hspd, y, obj_wall) {
	while !place_meeting(x+sign(hspd), y, obj_wall) {
		x+=sign(hspd);
	}
	hspd=0;
}


if place_meeting(x, y+vspd, obj_wall) {
	while !place_meeting(x, y+sign(vspd), obj_wall) {
		y+=sign(vspd);
	}
	vspd=0;
}

if (key_up and !place_meeting(x, y+vspd, obj_wall) and !place_meeting(x, y+vspd, obj_entity) or key_down and !place_meeting(x, y+vspd, obj_wall) and !place_meeting(x, y+vspd, obj_entity)) {
	y+=vspd;
}
	
if (key_right and !place_meeting(x+hspd, y, obj_wall) and !place_meeting(x+hspd, y, obj_entity) or key_left and !place_meeting(x+hspd, y, obj_wall) and !place_meeting(x+hspd, y, obj_entity)) {
	x+=hspd;
}

state();

#endregion


if(global.pause){
	image_speed = 0;
	exit;
}else{
	image_speed = 1;
}
dir = point_direction(x, y, mouse_x, mouse_y);

if instance_position(x,y,obj_safeZone) {
	if (global.ansiedade < 100) global.ansiedade += 0.02;
} else {
	with obj_inimigo {
		if (vendooPlayer) global.ansiedade = acceleration(global.ansiedade, 0, .1);
		else global.ansiedade = acceleration(global.ansiedade, 0, .003);
	}
}

if (global.ansiedade == 0){
	room_goto(rm_GameOver);
}