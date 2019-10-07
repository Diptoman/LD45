event_inherited();

//Shoot
if ((keyboard_check(vk_space) || keyboard_check(ord("X"))) && (alarm_get(2) < 0) && (attached == 2))
{
	instance_create_layer(x + 8, y, "Ships", obj_bullet);
	alarm_set(2, 15);
}