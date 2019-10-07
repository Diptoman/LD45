/// @description Insert description here
// You can write your code in this editor

with (other) instance_destroy();

if (!audio_is_playing(snd_mainShipDestroy))
		audio_play_sound(snd_mainShipDestroy, 10, 0);
		
instance_create_depth(0,0, 99, obj_screenShake);