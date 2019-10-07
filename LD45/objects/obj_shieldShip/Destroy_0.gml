/// @description Insert description here
// You can write your code in this editor
event_inherited();
burst = instance_create_depth(x,y, 100, obj_particleBurst);
burst.num = 15;
burst.partSprite = spr_particleBlue;
burst.partIndexAmount = 3;
burst.minLife = 5;
burst.maxLife = 15;
burst.minSize = .6;
burst.maxSize = 1;
burst.type = 1;