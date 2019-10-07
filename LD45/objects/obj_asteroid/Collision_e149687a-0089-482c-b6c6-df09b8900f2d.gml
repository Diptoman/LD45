/// @description Insert description here
// You can write your code in this editor

if (x < room_width + sprite_width/2)
{
audio_play_sound(snd_asteroidDestroy, 10, 0);

instance_destroy();
if (size < 3)
{
	ast = instance_create_layer(x, y, "Asteroids", obj_asteroid);
	ast.size = size + 1;
	ast.direction = direction - 90;
	ast = instance_create_layer(x, y, "Asteroids", obj_asteroid);
	ast.size = size + 1;
	ast.direction = direction + 90;
}

instance_create_depth(0,0, 99, obj_screenShake);
}

with (other) instance_destroy();