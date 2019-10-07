/// @description Insert description here
// You can write your code in this editor

var ship;
var chance;

if (stage == 2)
{
	if (difficulty == 1)
	{
		ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Ships", obj_BasicShip);
	}
	else if (difficulty == 2)
	{
		chance = floor(random(65));

		if (chance < 35)
			ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Ships", obj_BasicShip);
		else if (chance < 65)
			ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Ships", obj_shootyShip);
	}
	else
	{
		if (instance_number(obj_shootyShip) == 0)
		{
			chance = floor(random(100));

			if (chance < 10)
				ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Ships", obj_BasicShip);
			else if (chance < 90)
				ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Ships", obj_shootyShip);
			else
				ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Ships", obj_shieldShip);
		}
		else
		{
			chance = floor(random(100));

			if (chance < 35)
				ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Ships", obj_BasicShip);
			else if (chance < 65)
				ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Ships", obj_shootyShip);
			else
				ship = instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Ships", obj_shieldShip);
		}
	}
}