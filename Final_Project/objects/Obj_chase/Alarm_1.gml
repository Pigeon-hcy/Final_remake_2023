if(angry = false)
{
audio_play_sound_at(Snd_roar,x,y,0,1000,10,1,false,30);
alarm[1] = 150;
}

if(angry = true)
{
audio_play_sound_at(Snd_roar_higher,x,y,0,1000,20,1,false,30);
alarm[1] = 150;
}