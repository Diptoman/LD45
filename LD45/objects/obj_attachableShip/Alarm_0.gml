if (instance_number(obj_MainShip > 0))
{
	attached = 2;
	lerpAttached = 2;
	attachX = x - obj_MainShip.x;
	attachY = y - obj_MainShip.y;
	TweenFire(id, EaseOutQuad, 0, false, 0, 30, image_xscale__, -1, 1); 
	
	if (y > obj_MainShip.currentMaxYOffset + obj_MainShip.y)
		obj_MainShip.currentMaxYOffset = obj_y;
}