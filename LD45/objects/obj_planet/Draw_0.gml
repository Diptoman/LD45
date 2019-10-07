/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(fnt_big);
draw_set_alpha(image_alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

if (alarm_get(0) < 0)
{
if (obj_controller.armadaSize >= obj_controller.requiredArmadaSize)
{
	passcol = make_color_rgb(119, 255, 94);
	draw_set_color(passcol);
	draw_text_outline(x, y, "Planet Invaded!", 4, c_black, 64);	
}
else
{
	draw_set_color(c_red);
	draw_text_outline(x, y, "Not enough ships.#Game Over!#Press R to retry.", 4, c_black, 64);	
}
}