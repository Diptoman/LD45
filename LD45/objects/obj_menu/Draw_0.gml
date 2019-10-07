/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("X")))
{
	audio_play_sound(snd_connect, 10, 0);
	room_goto(rm_main);
}

if (!audio_is_playing(snd_bg))
{
	audio_play_sound(snd_bg, 10, 1);
}

//draw_set_alpha(1);
draw_self();

draw_set_alpha(image_alpha);
draw_set_font(fnt_big);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_aqua);
draw_text_outline(room_width / 2, room_height / 2 + 16, "Press Enter To Begin.", 4, c_black, 64);

draw_set_color(c_white);
draw_set_font(fnt_normal);
draw_text_outline(room_width / 2, room_height / 2 + 160, "Current Hi-Score: " + string(global.hiscore), 4, c_black, 64);

draw_set_font(fnt_small);
if (os_browser == browser_not_a_browser)
	draw_text_outline(room_width / 2, room_height / 2 + 256, "Press F4 to toggle fullscreen.", 2, c_black, 64);
draw_text_outline(room_width / 2, room_height / 2 + 356, "Made by Diptoman Mukherjee (Programming, Design), Pranjal Bisht (Art, Design) and Joel Montpetit (Audio) for Ludum Dare 45.", 2, c_black, 64);