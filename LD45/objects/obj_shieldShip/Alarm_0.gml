event_inherited();

if (instance_number(obj_MainShip) > 0)
{
	shield = instance_create_layer(x, y, "Shield", obj_shield);
	shield.parentShip = id;
}

if (obj_controller.difficulty == 3) && (obj_controller.stage == 1)
{
	obj_controller.stage = 2;
}