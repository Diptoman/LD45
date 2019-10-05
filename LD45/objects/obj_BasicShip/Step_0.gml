
if attached==0 && distance_to_point(obj_MainShip.x, obj_MainShip.y)<obj_MainShip.attachRadius
{
	attached = 1
	attachX = x - obj_MainShip.x
	attachY = y - obj_MainShip.y
	alarm_set(0, attachTime)
}

else if attached == 1
{
	x = lerp(x, obj_MainShip.x + attachX, attachStrength)
	y = lerp(y, obj_MainShip.y + attachY, attachStrength)
}

else if attached == 2
{
	x = obj_MainShip.x + attachX
	y = obj_MainShip.y + attachY
}