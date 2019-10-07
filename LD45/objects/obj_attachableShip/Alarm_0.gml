if (instance_number(obj_MainShip) > 0)
{
	attached = 2;
	lerpAttached = 2;
	attachX = x - obj_MainShip.x;
	attachY = y - obj_MainShip.y;
	obj_controller.armadaSize +=1;
	TweenFire(id, EaseOutQuad, 0, false, 0, 30, image_xscale__, -1, 1); 
	
	passcol = make_color_rgb(119, 255, 94);
	create_text(x, y - 32, "Attached!", 2, 48, 90, passcol, fnt_small);
	
	XOffset = x - obj_MainShip.x;
	YOffset = y - obj_MainShip.y;
	
	ds_list_add(obj_MainShip.XOffsetList, XOffset);
	ds_list_add(obj_MainShip.YOffsetList, YOffset);
	ds_list_sort(obj_MainShip.XOffsetList, true);
	ds_list_sort(obj_MainShip.YOffsetList, true);
	
	/*if (y > obj_MainShip.currentMaxYOffset + obj_MainShip.y)
		obj_MainShip.currentMaxYOffset = abs(y - obj_MainShip.y);
		
	if (x > obj_MainShip.currentMaxXOffset + obj_MainShip.x)
		obj_MainShip.currentMaxXOffset = abs(x - obj_MainShip.x);
		
	if (y < obj_MainShip.y - obj_MainShip.currentMinYOffset)
		obj_MainShip.currentMinYOffset = abs(y - obj_MainShip.y);
		
	if (x < obj_MainShip.x - obj_MainShip.currentMinXOffset)
		obj_MainShip.currentMinXOffset = abs(x - obj_MainShip.x);*/
}