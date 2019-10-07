/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, "Control", obj_ingameIntermissionText);
instance_create_layer(x, y, "Control", obj_ingameIntermissionTextTop);

alarm_set(1, totalStayingTime);