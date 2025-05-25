if (place_meeting(x+spd, y, obj_inimigo_cima)) {
	hspd = 0;
	vspd = -spd;
	dir = acceleration(dir, 90, -30);
}

if (place_meeting(x+spd, y, obj_inimigo_baixo)) {
	hspd = 0;
	vspd = spd;
	dir = acceleration(dir, 270, -30);
}

if (place_meeting(x+spd, y, obj_inimigo_direita)) {
	hspd = spd;
	vspd = 0;
	dir = acceleration(dir, 0, -30);
}

if (place_meeting(x+spd, y, obj_inimigo_esquerda)) {
	hspd = -spd;
	vspd = 0;
	dir = acceleration(dir, 180, -30);
}

image_angle = dir;

x+=hspd;
y+=vspd;