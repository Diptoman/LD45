/// @description create_text(x,y,str,borderwidth,moveAmount,time,color,font)
/// @param x
/// @param y
/// @param str
/// @param borderwidth
/// @param moveAmount
/// @param time
/// @param color
/// @param font

inst = instance_create_layer(argument0, argument1, "Control", obj_text);
inst.text = argument2;
inst.outlineSize = argument3;
inst.yOffset = argument4;
inst.time = argument5;
inst.color = argument6;
inst.font = argument7;