/// @description Insert description here
// You can write your code in this editor

//Destroy
if (x < -384)
{
	instance_destroy();
}

if (instance_exists(obj_planet))
{
	instance_destroy();
}

//Rotate
image_angle += speed / 10;

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