vendooPlayer = false;

velocidadeInimigo = 3;

path_start(caminho , velocidadeInimigo , path_action_reverse , false);

angulo_original = image_angle;
if (image_angle >= 180){
	angulo_voltando = image_angle - 180;
}
else{
	angulo_voltando = image_angle + 180;
}