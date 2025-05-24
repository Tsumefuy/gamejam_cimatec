event_inherited();

script_execute(get_inputs);

#region COLISÃO E MOV

if (key_up and !place_meeting(x, y+vspd, obj_wall) or key_down and !place_meeting(x, y+vspd, obj_wall)) {
	y+=vspd;
}
	
if (key_right and !place_meeting(x+hspd, y, obj_wall) or key_left and !place_meeting(x+hspd, y, obj_wall)) {
	x+=hspd;
}

state();

#endregion