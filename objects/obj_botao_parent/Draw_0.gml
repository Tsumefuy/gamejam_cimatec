draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (image_index == 1){
	draw_set_color(c_fuchsia);
}else{
draw_set_color(c_red);
}
draw_text(x, y, textoBotao);
