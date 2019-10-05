/// @description Insert description here
// You can write your code in this editor

if (stage == 2)
{
	//Ships
	if (alarm_get(0) < 0)
	{
		alarm_set(0, (480 + floor(random(120)) + difficulty * 10));
	}
}