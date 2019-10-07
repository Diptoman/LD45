/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_up)
	speedY -= accel
else if keyboard_check(vk_down)
	speedY += accel
else if abs(speedY)>0
	speedY -= speedY/abs(speedY)*brake
   
if keyboard_check(vk_left)
	speedX -= accel
else if keyboard_check(vk_right)
	speedX += accel
else if abs(speedX)>0
	speedX -= speedX/abs(speedX)*brake

if (speedX > maxSpeed)
	speedX = maxSpeed;
else if (speedX < -maxSpeed)
	speedX = -maxSpeed;

if (speedY > maxSpeed)
	speedY = maxSpeed;
else if (speedY < -maxSpeed)
	speedY = -maxSpeed;
	
if (ds_list_size(XOffsetList) > 0)
{
	currentMaxXOffset = max(ds_list_find_value(XOffsetList, ds_list_size(XOffsetList) - 1), 0);
	currentMinXOffset = abs(min(ds_list_find_value(XOffsetList, 0), 0));
}
else
{
	currentMaxXOffset = 0;
	currentMinXOffset = 0;
}
	
if (ds_list_size(YOffsetList) > 0)
{
	currentMaxYOffset = max(ds_list_find_value(YOffsetList, ds_list_size(YOffsetList) - 1), 0);
	currentMinYOffset = abs(min(ds_list_find_value(YOffsetList, 0), 0));
}
else
{
	currentMaxYOffset = 0;
	currentMinYOffset = 0;
}

if (x + speedX + currentMaxXOffset > room_width)
	speedX = 0;
if (x + speedX - currentMinXOffset < 0)
	speedX = 0;
if (y + speedY + currentMaxYOffset > room_height)
	speedY = 0;
if (y + speedY - currentMinYOffset < 0)
	speedY = 0;

x += speedX
y += speedY