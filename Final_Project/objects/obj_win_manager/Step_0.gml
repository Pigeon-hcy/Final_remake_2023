/// @description Insert description here
// You can write your code in this editor

background_x-= scroll_speed;
if(background_x <= (-3840 - scroll_speed)) {
	background_x = 0;
}
if(keyboard_check_released(vk_space)) {
	room_goto(Rm_main_menu);
}