if (attached!=2)
{
	create_text(x, y, "Collision!", 2, 48, 120, c_yellow, fnt_small);
	
	if (!audio_is_playing(snd_shipToShipCollision))
		audio_play_sound(snd_shipToShipCollision, 10, 0);
	
	instance_destroy();
}