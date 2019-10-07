/// @description Insert description here
// You can write your code in this editor
if (alarm_get(0) < 0)
{
	draw_set_font(font);
	draw_set_alpha(image_alpha);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_color(color);
	
	draw_text_outline(x, y, text, outlineSize, c_black, 16);
}