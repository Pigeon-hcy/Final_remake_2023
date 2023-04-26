//update distance and direction
distanceToPlayer = distance_to_object(Obj_Player);
directionToPlayer = point_direction(x,y,Obj_Player.x,Obj_Player.y);


// if player close change into notice
if(distanceToPlayer < 450)
{
	notice = true;
}else
{
	notice = false;
}

//if player get too close start move
if(distanceToPlayer < 200)
{
	follow = true;
}else
{
	follow = false;
}

//change the direction depend on the angle of player
if(directionToPlayer < 270 && directionToPlayer > 90)
{
	move_speed = -4;
	image_xscale = -1/7
	
}else
{
	move_speed = 4;
	image_xscale = 1/7
}

//change the notice spr
if(notice)
{
	sprite_index = Spr_enemy_notice;
}


//change back if player leave
if(!notice)
{
	sprite_index = Spr_enemy;
}

//change the ai after player get too close
if(follow && !place_meeting(x + move_speed,y,Obj_wall) 
|| on_hit && !place_meeting(x + move_speed,y,Obj_wall))
{
	x += move_speed;
	sprite_index = Spr_enemy_attack;
}

//trigger something when hp is lower than 0
if(HP < 0)
{
	Obj_shake.time = 10;
	instance_destroy();
}

