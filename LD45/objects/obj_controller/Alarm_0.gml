/// @description Insert description here
// You can write your code in this editor

var ship;
var chance;

chance = floor(random(100));

if (chance < 35)
	ship = instance_create_layer(room_width + 64, 64 + floor(random(room_height - 128)), "Control", obj_BasicShip);
else if (chance < 65)
	ship = instance_create_layer(room_width + 64, 64 + floor(random(room_height - 128)), "Control", obj_shootyShip);
else
	ship = instance_create_layer(room_width + 64, 64 + floor(random(room_height - 128)), "Control", obj_shieldShip);