//bounce back
x_speed = x_speed * -1;
y_speed -= 3;
//keep the speed_rate
x_speed_rate = x_speed_rate * -1;

part_particles_create(self.part_system,x,y,PS_Circle,1);
part_particles_create(self.part_system,x,y,PS_Hit,60);
