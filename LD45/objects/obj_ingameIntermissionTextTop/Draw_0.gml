/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_big);
draw_set_alpha(image_alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text_outline(x, y, "Armada Size", 4, c_black, 16);
passcol = make_color_rgb(119, 255, 94);
if (obj_controller.armadaSize >= obj_controller.requiredArmadaSize)
	draw_set_color(passcol);
else
	draw_set_color(c_red);
draw_set_halign(fa_right);
draw_text_outline(x - 2, y + 48, string(obj_controller.armadaSize), 4, c_black, 16);
draw_set_halign(fa_left);
draw_set_color(c_aqua);
draw_text_outline(x + 2, y + 48, "/" + string(obj_controller.requiredArmadaSize), 4, c_black, 16);