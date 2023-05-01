/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_bg_menu_loop,0,background_x,0,3840,768);
if(background_x < -2000) {
	draw_sprite_stretched(spr_bg_menu_loop,0,background_x+3840,0,5000,768);
}

draw_set_font(fnt_title);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(room_width/2, 200, "Congratulations!");
draw_set_font(fnt_buttons);
draw_text(room_width/2, 400, "You have avoided all surveilance and\nsuccessuflly passed our [REDACTED]!\n\nPress SPACE to get back to the menu");