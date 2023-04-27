//decrease hp and start on get when get hit
on_hit = true;
HP --;
audio_play_sound(Snd_enemy_hit,10,false);
follow = true;
	if(!played)
	{
		audio_play_sound(Snd_notice,20,false)
		played = true;
	}