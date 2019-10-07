/// @description Insert description here
// You can write your code in this editor

if (obj_controller.armadaSize >= obj_controller.requiredArmadaSize)
{
	obj_controller.stage = 1;
	obj_controller.difficulty += 1;
	
	obj_controller.maxStageTime = min(obj_controller.maxStageTime + 120, 3600);
	obj_controller.perStageTime = obj_controller.maxStageTime;
	
	if (obj_controller.requiredArmadaSize < 15)
		obj_controller.requiredArmadaSize += 2;
	else
		obj_controller.requiredArmadaSize += 1;
	
	instance_destroy();
}
else
{
	room_restart();
}