event_inherited();

vendooPlayer = false;
global.playervisto = false;

var anguloEntreRaios = 5;
var direcaoRaio = 1;
var direcao = image_angle;
	
for (var raios = 0 ; raios <= quantidadeRaios ; raios++){
	for (var tamanhoLinha = 0 ; tamanhoLinha < tamanho_raios ; tamanhoLinha++){
		var xx = x + lengthdir_x(tamanhoLinha, direcao);
		var yy = y + lengthdir_y(tamanhoLinha, direcao);
			
		if (position_empty(xx, yy) == false) {
			if(place_meeting(xx,yy,obj_wall)) {
					break;
			}
			
			if(place_meeting(xx, yy, obj_player)) {
				vendooPlayer = true;
				global.playervisto = true;
				break;
			}
		}
			
		draw_set_color(c_lime);
		draw_point(xx, yy);			
	}
		
direcao += (anguloEntreRaios * raios) * direcaoRaio;
direcaoRaio *= -1;
	
}