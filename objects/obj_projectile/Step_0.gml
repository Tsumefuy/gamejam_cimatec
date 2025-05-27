if(global.pause){
	image_speed = 0;
	exit;
}else{
	image_speed = 1;
}

image_angle = acceleration(image_angle, image_angle + 50 * spd, 25);

if place_meeting(x + lengthdir_x(hspd, dir), y, obj_wall) {
    hspd *= -1;
}
x += lengthdir_x(hspd, dir);


if place_meeting(x, y + lengthdir_y(vspd, dir), obj_wall) {
    vspd *= -1;
}
y += lengthdir_y(vspd, dir);

hspd = acceleration(hspd, 0, 0.08);
vspd = acceleration(vspd, 0, 0.08);
spd  = acceleration(spd, 0, 0.12);

