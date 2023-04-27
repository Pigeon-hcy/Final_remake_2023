//increase y_speed 
if(jump_time)
{
	audio_play_sound(Snd_jump,10,false);
	y_speed = 15;
	jump_time = false;
}