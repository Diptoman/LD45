/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_asteroidDestroy, 10, 0);

instance_destroy();
with (other) instance_destroy();
if (size < 3)
{
	ast = instance_create_layer(x, y, "Asteroids", obj_asteroid);
	ast.size = size + 1;
	ast.direction = direction - 90;
	ast = instance_create_layer(x, y, "Asteroids", obj_asteroid);
	ast.size = size + 1;
	ast.direction = direction + 90;
}