/// @description Insert description here
// You can write your code in this editor
image_angle = floor(random(360));

size = 1 + floor(random(3));

targetY = 64 + floor(random(room_height - 128));
targetX = floor(random(96));

direction = point_direction(x, y, targetX, targetY);
speed = 4 + random(2) + min((obj_controller.difficulty / 4), 4);

if (size == 1)
{
	sprite_index = spr_asteroid1;
}
else if (size == 2)
{
	sprite_index = spr_asteroid2;
}
else if (size == 3)
{
	sprite_index = spr_asteroid3;
}