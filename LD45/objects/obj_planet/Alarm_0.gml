/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, "Control", obj_ingameIntermissionText);
instance_create_layer(x, y, "Control", obj_ingameIntermissionTextTop);

if (obj_controller.armadaSize > obj_controller.requiredArmadaSize)
{
	obj_controller.scr += (obj_controller.armadaSize - obj_controller.requiredArmadaSize) * 100;
}

if (obj_controller.armadaSize >= obj_controller.requiredArmadaSize)
{
	alarm_set(1, totalStayingTime);
	audio_play_sound(snd_checkpoint, 10, 0);
}
else
{
	audio_play_sound(snd_mainShipDestroy, 10, 0);
}