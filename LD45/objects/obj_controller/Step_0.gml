/// @description Insert description here
// You can write your code in this editor

//Decrease perStageTime
if (perStageTime > 0)
{
	perStageTime -= 1;
}
else
{
	difficulty += 1;
	perStageTime = maxStageTime;
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