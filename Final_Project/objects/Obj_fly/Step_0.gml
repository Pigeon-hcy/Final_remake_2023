x += x_speed;

//trigger something when hp is lower than 0
if(HP < 0)
{
	Obj_shake.time = 10;
	instance_destroy();
}

