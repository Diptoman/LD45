/// @description Insert description here
// You can write your code in this editor
event_inherited();

attachStrength = 0.1;
attachTime = 90;
xSpeed = 2 + random(2);

shield = instance_create_layer(x, y, "Shield", obj_shield);
shield.parentShip = id;