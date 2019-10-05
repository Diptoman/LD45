
if (lerpAttached==0) 
{
	if (distance_to_point(obj_MainShip.x, obj_MainShip.y)<obj_MainShip.attachRadius)
	{
		attachX = x - obj_MainShip.x;
		attachY = y - obj_MainShip.y;
		lerpAttached = 1;
	}
	else
	{
		x -= xSpeed;
	}
}
else if (lerpAttached == 1)
{
	attachX = x - obj_MainShip.x;
	attachY = y - obj_MainShip.y;
	x = lerp(x, obj_MainShip.x + attachX, attachStrength) - xSpeed;
	y = lerp(y, obj_MainShip.y + attachY, attachStrength);
}

else if attached == 2
{
	x = obj_MainShip.x + attachX
	y = obj_MainShip.y + attachY
}

//Ship collision
var l_Coll = collision_circle(x,y, 64, obj_ship, 0, 1);
if (l_Coll > 0)
{
	if (attached == 0)
	{
		alarm_set(0, attachTime);
		attached = 1;
	}
	isShipColliding = true;
	isAttaching = true;
	alarm_set(1, -1);
}
else
{
	isShipColliding = false;
	
	if (isAttaching == true)
	{
		if (alarm_get(1) < 0)
		{
			alarm_set(1, detachTimeBuffer);
		}
		isAttaching = false;
	}
}