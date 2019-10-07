/// @description Insert description here
// You can write your code in this editor

//Decrease perStageTime
if (perStageTime > 0)
{
	perStageTime -= 1;
}
else
{
	//difficulty += 1;
	//perStageTime = maxStageTime;
	stage = 3;
	alarm_set(0, -1);
	alarm_set(1, -1);
	alarm_set(2, -1);
	
	if (!instance_exists(obj_planet))
	{
		instance_create_layer(room_width + 384, room_height/2, "Control", obj_planet);
	}
}

if (stage == 2)
{
	//Ships
	if (alarm_get(0) < 0)
	{
		alarm_set(0, (480 + floor(random(120)) + difficulty * 10));
	}
	
	//Asteroids
	if (alarm_get(1) < 0)
	{
		alarm_set(1, (240 - floor(random(30)) - min(difficulty * 20, 180)));
	}
}