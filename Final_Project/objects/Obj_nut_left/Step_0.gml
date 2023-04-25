//increase the angle usieng x can make nut nail on the wall when don't move
angel = x;
//spin the angle
image_angle = angel;
//make the nut fall
y_speed --;
life_time --;

//make the x_speed decrease
if(x_speed != 0)
{
	x_speed -= x_speed_rate;
}

//move the nut
y -= y_speed;
x -= x_speed;

//destory the nut when x_speed  = 0
if (x_speed = 0 || life_time = 0)
{
	instance_destroy();
}
