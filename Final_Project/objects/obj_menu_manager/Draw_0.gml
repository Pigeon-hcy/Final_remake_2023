/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(spr_bg_trainning_room,0,background_x,0,5000,1000);
if(background_x < -3000) {
	draw_sprite_stretched(spr_bg_trainning_room,0,background_x+5000,0,5000,1000);
}