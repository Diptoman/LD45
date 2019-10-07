/// @description Insert description here
// You can write your code in this editor

//Decrease perStageTime
if (perStageTime > 0)
{
	if (stage == 2)
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
		instance_create_layer(room_width + 384, room_height/2, "Instances", obj_planet);
	}
}

if (stage == 2)
{
	//Ships
	if (alarm_get(0) < 0)
	{
		alarm_set(0, max(360 - floor(random(60)) - difficulty * 10, 180));
	}
	
	//Asteroids
	if (alarm_get(1) < 0)
	{
		alarm_set(1, (150 - floor(random(30)) - min(difficulty * 5, 60)));
	}
	
	if (difficulty > 5)
	{
		alarm_set(2, (180 - floor(random(30)) - min((difficulty - 5) * 5, 60)));
	}
	
	if (difficulty > 10)
	{
		alarm_set(3, (180 - floor(random(30)) - min((difficulty - 10) * 5, 60)));
	}
	
	scrTimer += 1;
	
	if ((scrTimer mod 10) == 0)
		scr += 1;
}

//Stage 1 (tutorial part)
if (stage == 1)
{
	scrTimer = 0;
	if (difficulty == 1)
	{
		if (instance_number(obj_BasicShip) == 0)
		{
			instance_create_layer(room_width + 64, 72 + floor(random(room_height - 160)), "Control", obj_BasicShip);
		}
	}
	else if (difficulty == 2)
	{
		if (instance_number(obj_shootyShip) == 0)
		{
			instance_create_layer(room_width + 64, 64 + floor(random(room_height - 160)), "Control", obj_shootyShip);
		}
	}
	else if (difficulty == 3)
	{
		if (instance_number(obj_shieldShip) == 0)
		{
			instance_create_layer(room_width + 64, 64 + floor(random(room_height - 160)), "Control", obj_shieldShip);
		}
	}
	else
	{
		stage = 2;
	}
}