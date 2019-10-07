/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_big);
draw_set_alpha(image_alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_white);

if (obj_controller.armadaSize > obj_controller.requiredArmadaSize)
{
	draw_text_outline(x, y - 48, "Armada Size Bonus", 4, c_black, 16);
	passcol = make_color_rgb(119, 255, 94);

	draw_set_color(c_aqua);
	draw_set_halign(fa_center);
	draw_text_outline(x - 2, y, string(obj_controller.armadaSize - obj_controller.requiredArmadaSize) + " x 1000", 4, c_black, 16);
}

if (obj_controller.armadaSize < obj_controller.requiredArmadaSize)
{
	draw_text_outline(x, y, "Insufficient Armada Size!", 4, c_black, 16);
}