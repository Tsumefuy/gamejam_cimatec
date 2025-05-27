
if(room != rm_Menu && room != rm_GameOver){
	var xx = obj_player.x;
	var yy = obj_player.y + 128;
if(keyboard_check_pressed(vk_escape)){
		//pausando o game
		instance_create_layer(xx,yy,l,obj_botao_desistir);
		global.pause = !global.pause;
};
}