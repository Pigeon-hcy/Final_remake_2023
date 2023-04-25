//kick back player depend where they are
x_speed = x_speed * -3;
y_speed = 20;

//kick back player when stop
if(x_speed = 0 && !player_bounce)
{	
	if(point_direction(x,y,other.x,other.y) < 270 && point_direction(x,y,other.x,other.y) > 90)
	{
		x_speed = -8;
	}else
	{
		x_speed = 8;
	}
}
		player_bounce = true;


