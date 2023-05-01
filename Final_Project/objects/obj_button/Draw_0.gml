/// @description Insert description here
// You can write your code in this editor


draw_set_font(fnt_buttons);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x,y,button_name);

if(hover) {
	//if(button_name == "Start" || button_name == "Quit") {
		draw_sprite_stretched(spr_option_circles,animation_counter,x-170,y-180,350,350);
	//} else {
	//	draw_sprite_stretched(spr_option_small_circles,animation_counter,x,y,350,350);
	//}
}