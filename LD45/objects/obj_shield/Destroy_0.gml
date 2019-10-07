/// @description Insert description here
// You can write your code in this editor
burst = instance_create_depth(x,y, 100, obj_particleBurst);
burst.num = 30;
burst.partSprite = spr_particleShield;
burst.partIndexAmount = 3;
burst.minLife = 10;
burst.maxLife = 20;
burst.minSize = .75;
burst.maxSize = 1;
burst.minSpeed = 7;
burst.maxSpeed = 15;
burst.type = 1;

create_text(other.x, other.y, "Shield Down!", 2, 48, 60, c_aqua, fnt_small);