/// @description Insert description here
// You can write your code in this editor
if (attached == 2)
{
	obj_controller.armadaSize -= 1;
	
	if (instance_number(obj_MainShip) > 0)
	{
		ds_list_delete(obj_MainShip.XOffsetList, ds_list_find_index(obj_MainShip.XOffsetList, XOffset));
		ds_list_delete(obj_MainShip.YOffsetList, ds_list_find_index(obj_MainShip.YOffsetList, YOffset));
	}
}