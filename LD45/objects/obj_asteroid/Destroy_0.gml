/// @description Insert description here
// You can write your code in this editor

burst = instance_create_depth(x,y, 100, obj_particleBurst);
burst.partSprite = spr_particleAsteroid;
burst.partIndexAmount = 1;

if (size == 1)
{
	burst.num = 20;
	burst.minLife = 10;
	burst.maxLife =20;
	burst.minSize = 1;
	burst.maxSize = 1.5;
	burst.minSpeed = 6;
	burst.maxSpeed = 12;
	burst.type = 2;
}

if (size == 2)
{
	burst.num = 15;
	burst.minLife = 8;
	burst.maxLife = 16;
	burst.minSize = 0.7;
	burst.maxSize = 1;
	burst.minSpeed = 6;
	burst.maxSpeed = 12;
	burst.type = 2;
}

if (size == 3)
{
	burst.num = 10;
	burst.minLife = 5;
	burst.maxLife = 15;
	burst.minSize = .5;
	burst.maxSize = .75;
	burst.minSpeed = 5;
	burst.maxSpeed = 10;
	burst.type = 2;
}