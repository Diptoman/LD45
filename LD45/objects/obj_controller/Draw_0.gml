/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_UI_ProgressBarMarker, 0, 16, room_height - 48);

if (stage == 2)
{
	for(i = 0; i < 7; i++)
	{
		draw_sprite(spr_UI_ProgressBar, 0, -335 + 8 + 335*(perStageTime / maxStageTime) + (i - 1)*384, room_height - 32);
	}
}
else
{
	for(i = 0; i < 5; i++)
	{
		draw_sprite(spr_UI_ProgressBar, 0, 8 + 48*(obj_planet.currentStayingTime / (obj_planet.totalStayingTime + 105)) + (i - 1)*384, room_height - 32);
	}
}

draw_set_font(fnt_big2);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text_outline(16, 16, "Armada Size: " + string(armadaSize), 4, c_black, 8);