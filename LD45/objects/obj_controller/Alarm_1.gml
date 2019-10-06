/// @description Insert description here
// You can write your code in this editor

var asteroid, chance;

chance = floor(random(3));

if (chance == 0)
{
	asteroid = instance_create_layer(room_width + 128, 64 + floor(random(room_height - 128)), "Asteroids", obj_asteroid);
}
else if (chance == 1)
{
	asteroid = instance_create_layer(room_width - 160 + floor(random(160)), - 128, "Asteroids", obj_asteroid);
}
else if (chance == 2)
{
	asteroid = instance_create_layer(room_width - 160 + floor(random(160)), room_height + 128, "Asteroids", obj_asteroid);
}