/// @description Insert description here
// You can write your code in this editor

var ship;
var chance;

if (stage == 2)
{
	chance = floor(random(100));

	if (chance < 35)
		ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Control", obj_BasicShip);
	else if (chance < 65)
		ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Control", obj_shootyShip);
	else
		ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Control", obj_shieldShip);
}