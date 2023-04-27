x += x_speed;

//trigger something when hp is lower than 0
if(HP < 0)
{
	audio_play_sound(Snd_explode,20,false);
	Obj_shake.time = 10;
	instance_destroy();
}

