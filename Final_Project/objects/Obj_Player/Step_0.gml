//move the character
x += x_speed;
y -= y_speed;


//press D to keep increase the speed of the x_speed until 10
if(keyboard_check(ord("D")) && x_speed < 10)
{
	x_speed += 1;
	player_direction = "R";
}

//reset the x_speed to 0 when player release D
if(x_speed > 0 && !keyboard_check(ord("D")))
{
	x_speed -= 1;
}

//press A to keep increase the speed of the x_speed until -10
if(keyboard_check(ord("A")) && x_speed > -10)
{
	x_speed -= 1;
	player_direction = "L";
}

//reset the x_speed to 0 when player release D
if(x_speed < 0 && !keyboard_check(ord("A")))
{
	x_speed += 1;
}

//fall on ground when player on the air
if((place_meeting(x,y - y_speed,Obj_ground) || place_meeting(x,y - y_speed,Obj_plstform)) && y_speed <= 0 )
{
	y_speed = 0;
	jump_time = true;
}else
{
	y_speed -= 0.5;
}

if(place_meeting(x + x_speed,y,Obj_wall))
{
	x_speed = 0
}

if(y > room_height + 50)
{
	audio_stop_all();
	
	if(checkpoint)
	{
		x = respawn_x;
		y = respawn_y;
	}else
	{
		room_restart();
	}
}

show_debug_message(player_bounce);

//player_bounce reset
if(x_speed = 0) {
	player_bounce = false;
}


//player sprites

if(!player_bounce){
	if(x_speed == 0) {
		sprite_index = spr_player_idle;
		image_yscale = 1/3;
		if(player_direction = "R") {
			image_xscale = 1/3;
		} else if(player_direction = "L") {
			image_xscale = -1/3;
		}
	} else if(x_speed > 0) {
		sprite_index = spr_player_run;
		image_xscale = 1/6;
		image_yscale = 1/6;
		if(place_meeting(x,y - y_speed,Obj_ground) || place_meeting(x,y - y_speed,Obj_plstform)) {
			image_speed = 7/10;
		} else if(y_speed > 3) {
			image_speed = 0;
			image_index = 1;
		} else if(y_speed >= -5) {
			image_speed = 0;
			image_index = 2;
		} else if(y_speed <-3) {
			image_speed = 0;
			image_index = 3;
		}
	
	} else if(x_speed < 0) {
		image_speed = 7/10;
		sprite_index = spr_player_run;
		image_xscale = -1/6;
		image_yscale = 1/6
	}
}
else{
	sprite_index = spr_squirrel_be_attacked;
	image_yscale = 1/6;
	if(player_direction = "R") {
			image_xscale = 1/6;
		} else if(player_direction = "L") {
			image_xscale = -1/6;
		}
}