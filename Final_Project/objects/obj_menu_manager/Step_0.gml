/// @description Insert description here
// You can write your code in this editor
background_x-= scroll_speed;
if(background_x <= (-1920 - scroll_speed)) {
	background_x = 0;
	state = !state;
}