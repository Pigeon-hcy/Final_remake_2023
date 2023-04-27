//initial distance and direction
distanceToPlayer = distance_to_object(Obj_Player);
directionToPlayer = point_direction(x,y,Obj_Player.x,Obj_Player.y);

//state of enemy
notice = false;
follow = false;

//do enemy get hit by player?
on_hit = false;

//movespeed of enemy will change after all
move_speed = 3;

//health of the enemy
HP = 5;

//sprite scale
image_xscale = 1/7
image_yscale = 1/7