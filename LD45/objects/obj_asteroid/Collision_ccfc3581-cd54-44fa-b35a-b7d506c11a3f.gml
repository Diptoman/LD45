/// @description Insert description here
// You can write your code in this editor

if (other.attached == 2)
{
	create_text(other.x, other.y, "Ship Lost!", 2, 48, 60, c_red, fnt_small);
	with (other) instance_destroy();
}
	
if (size < 3)
{
	ast = instance_create_layer(x, y, "Asteroids", obj_asteroid);
	ast.size = size + 1;
	ast.direction = direction - 210 - floor(random(15));
	ast = instance_create_layer(x, y, "Asteroids", obj_asteroid);
	ast.size = size + 1;
	ast.direction = direction - 150 + floor(random(15));
}

instance_destroy();

if (!audio_is_playing(snd_shipCollide))
		audio_play_sound(snd_shipCollide, 10, 0);