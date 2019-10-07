/// @description Insert description here
// You can write your code in this editor
if (isAttaching == false) && (attached < 2)
{
	instance_destroy();
	
	create_text(x, y, "Too far!", 2, 48, 120, c_yellow, fnt_small);
	
	if (!audio_is_playing(snd_shipdisconnect))
		audio_play_sound(snd_shipdisconnect, 10, 0);
}