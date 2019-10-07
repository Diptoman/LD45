/// @description Insert description here
// You can write your code in this editor

if (obj_controller.armadaSize >= obj_controller.requiredArmadaSize)
{
	obj_controller.stage = 2;
	obj_controller.difficulty += 1;
	obj_controller.perStageTime = obj_controller.maxStageTime;
	instance_destroy();
}
else
{
	room_restart();
}