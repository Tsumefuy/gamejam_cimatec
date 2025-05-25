
vendooPlayer = false;


var anguloEntreRaios = 2;
var direcaoRaio = 1;
var direcao = image_angle;
	
for (var raios = 0 ; raios <= quantidadeRaios ; raios++){
	for (var tamanhoLinha = 0 ; tamanhoLinha < tamanho_raios ; tamanhoLinha++){
		var xx = x + lengthdir_x(tamanhoLinha, direcao);
		var yy = y + lengthdir_y(tamanhoLinha, direcao);
			
		if (position_empty(xx, yy) == false) {
				
			if(instance_place(xx, yy, obj_wall) != noone) {
				break;
			}
			if(instance_place(xx, yy, obj_player) != noone) {
				vendooPlayer = true;
				break;
			}
		}
			
		draw_set_color(c_lime);
		draw_point(xx, yy);			
	}
		
direcao += (anguloEntreRaios * raios) * direcaoRaio;
direcaoRaio *= -1;
	
}

if (path_speed > 0){
	image_angle = angulo_original;
}
if (path_speed < 0){
	image_angle = angulo_voltando;
}

