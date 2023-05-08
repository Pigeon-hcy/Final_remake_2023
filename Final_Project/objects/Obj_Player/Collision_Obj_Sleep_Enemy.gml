//kick back player depend where they are
x_speed = x_speed * -3;
y_speed = 20;

//kick back player when stop
if(x_speed = 0)
{	
	if(point_direction(x,y,other.x,other.y) < 270 && point_direction(x,y,other.x,other.y) > 90)
	{
		x_speed = -8;
	}else
	{
		x_speed = 8;
	}
}

part_particles_create(self.part_system,x,y,PS_Circle,1);
part_particles_create(self.part_system,x,y,PS_Hit,60);
audio_play_sound(Snd_player_hurt,300,false);