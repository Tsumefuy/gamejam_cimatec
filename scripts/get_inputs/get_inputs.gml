if keyboard_check(vk_left) or keyboard_check(ord("A"))
{
	key_left=1;
}
else
{
	key_left=0;
}

if keyboard_check(vk_right) or keyboard_check(ord("D"))
{
	key_right=1;
}
else
{
	key_right=0;
}

if keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down) 
{
	fall=true;
}
else
{
	fall=false;
}

if (keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)) and fall = false
{
	key_jump=1;
}
else
{
	key_jump=0;
}

if keyboard_check(vk_lshift) or keyboard_check(vk_rshift) 
{
	key_dash=true;
}
else
{
	key_dash=false;
}

if keyboard_check(vk_enter)
{
	key_enter=true;
}
else
{
	key_enter=false;
}

//Alteração