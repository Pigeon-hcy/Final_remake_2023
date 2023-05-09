/// @description Insert description here
// You can write your code in this editor
if(state) {
	draw_sprite_stretched(spr_bg_menu_loop_2,1,background_x,0,1920,768);
	draw_sprite_stretched(spr_bg_menu_loop_2,0,background_x+1920,0,1920,768);
}
else {
	draw_sprite_stretched(spr_bg_menu_loop_2,0,background_x,0,1920,768);
	draw_sprite_stretched(spr_bg_menu_loop_2,1,background_x+1920,0,1920,768);
}

draw_set_font(fnt_title);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(room_width/2, 200, "You failed the mission!");
draw_set_font(fnt_buttons);
draw_text(room_width/2, 400, "Quick! Press SPACE to get back \nto defeating the shadow government!");