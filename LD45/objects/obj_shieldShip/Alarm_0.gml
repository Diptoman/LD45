event_inherited();

if (instance_number(obj_MainShip) > 0)
{
	shield = instance_create_layer(x, y, "Shield", obj_shield);
	shield.parentShip = id;
}