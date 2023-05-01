/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white);
draw_set_font(fnt_score);
//draw_set_font(fnt_fanglin_test);
draw_set_valign(fa_center);
draw_set_halign(fa_left);

draw_text(100,100,"Ammo: "+string(ammo_count));
