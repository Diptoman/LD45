/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_UI_ProgressBarMarker, 0, 16, room_height - 48);

if (stage == 2)
{
	for(i = 0; i < 5; i++)
	{
		draw_sprite(spr_UI_ProgressBar, 0, -335 + 8 + 335*(perStageTime / maxStageTime) + i*384, room_height - 32);
	}
}