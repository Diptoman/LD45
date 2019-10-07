/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);
draw_sprite(spr_UI_ProgressBarMarker, 0, 16, room_height - 48);

if (stage == 1 || stage == 2 || stage == -1)
{
	for(i = 0; i < 7; i++)
	{
		draw_sprite(spr_UI_ProgressBar, 0, -335 + 8 + 335*(perStageTime / maxStageTime) + i*384, room_height - 32);
		
		if (i == 1)
		{
			draw_set_font(fnt_small);
			draw_set_alpha(1);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			passcol = make_color_rgb(119, 255, 94);
			if (armadaSize < requiredArmadaSize)
				draw_set_color(c_red);
			else
				draw_set_color(passcol);
			draw_text_outline(-345 + 335*(perStageTime / maxStageTime) + i*384, room_height - 29, string(requiredArmadaSize), 4, c_black, 64);
		}
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
draw_text_outline(16, 16, "Armada Size: ", 4, c_black, 8);

passcol = make_color_rgb(119, 255, 94);
if (armadaSize < requiredArmadaSize)
	draw_set_color(c_red);
else
	draw_set_color(passcol);

draw_text_outline(220, 16, string(armadaSize) + "/" + string(requiredArmadaSize), 4, c_black, 8);
draw_set_halign(fa_right);
draw_set_color(c_white);
draw_text_outline(room_width - 16, 16, string(scr), 4, c_black, 8);

//Tutorial
if (stage == 1)
{
	draw_set_font(fnt_normal);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(c_white);
	
	if (difficulty == 1)
	{
		draw_text_outline(room_width/2, room_height - 128, "Use Arrow Keys to move.#Attach your ship to another by staying inside its circular zone.", 4, c_black, 8);
	}
	else if (difficulty == 2)
	{
		draw_text_outline(room_width/2, room_height - 96, "Keep X/Space pressed to fire after attaching to a fire-ship.", 4, c_black, 8);
	}
	else if (difficulty == 3)
	{
		draw_text_outline(room_width/2, room_height - 96, "Shield ships have a one-time use shield.", 4, c_black, 8);
	}
}