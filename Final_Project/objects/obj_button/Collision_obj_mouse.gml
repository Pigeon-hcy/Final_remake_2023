/// @description Insert description here
// You can write your code in this editor

hover = true;

if(mouse_check_button_pressed(mb_left)) {
	if(button_name == "Start") {
		//Send to 1-1, first room;
	}
	else if(button_name == "Quit") {
		game_end();
	}
	else {
		obj_menu_manager.scroll_speed = scroll_speed;
	}
}