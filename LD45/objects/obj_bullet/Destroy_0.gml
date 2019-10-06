/// @description Insert description here
// You can write your code in this editor

burst = instance_create_depth(x,y, 100, obj_particleBurst);
burst.num = 10;
burst.partSprite = spr_particleBullet;
burst.partIndexAmount = 3;
burst.minLife = 5;
burst.maxLife = 10;
burst.minSize = .2;
burst.maxSize = .5;
burst.type = 1;