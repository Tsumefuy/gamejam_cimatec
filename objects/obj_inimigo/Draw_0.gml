event_inherited();

if (debug) {
	var anguloEntreRaios = 4.5;
	var direcaoRaio = 1;
	var direcao = image_angle;
	
	for (var raios = 0 ; raios <= quantidadeRaios ; raios++){
		for (var tamanhoLinha = 0 ; tamanhoLinha < tamanho_raios ; tamanhoLinha++){
			var xx = x + lengthdir_x(tamanhoLinha, direcao);
			var yy = y + lengthdir_y(tamanhoLinha, direcao);
			
			if (position_empty(xx, yy) == false) {
				
				if(instance_position(xx,yy,obj_wall) != noone) {
					draw_set_color(c_fuchsia);
					draw_circle(xx, yy, 5, false);
					break;
				}
				
				if(instance_place(xx, yy, obj_player) != noone) {
					draw_set_color(c_fuchsia);
					draw_circle(xx, yy, 5, false);
					break;
				}
			}
			
			draw_set_color(c_lime);
			draw_point(xx, yy);			
		}
		
	direcao += (anguloEntreRaios * raios) * direcaoRaio;
	direcaoRaio *= -1;
	
	}
}

if (vendooPlayer){
	draw_sprite(spr_ViuOPlayer, 0 , x, y - 50);
}