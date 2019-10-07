/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_escape))
{
	room_goto(rm_menu);
}

if (keyboard_check_pressed(ord("R")))
{
	room_restart();
}

draw_set_alpha(1);

draw_set_font(fnt_giant);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_red);
draw_text_outline(x, y, "Game Over!", 8, c_black, 64);

draw_set_color(c_white);
draw_set_font(fnt_big);
draw_text_outline(x, y + 192, "Score: " + string(scr), 4, c_black, 64);

if (hiscore == true)
{
	draw_set_color(c_aqua);
	draw_set_font(fnt_normal);
	draw_text_outline(x, y + 256, "New hi-score!", 4, c_black, 64);
	draw_set_color(c_white);
	draw_set_font(fnt_normal);
	draw_text_outline(x, y + 320, "Press R to retry.", 4, c_black, 64);
}
else
{
	draw_set_color(c_white);
	draw_set_font(fnt_normal);
	draw_text_outline(x, y + 256, "Press R to retry.", 4, c_black, 64);
}