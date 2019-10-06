if(instance_exists(obj_MainShip))
	starYoffset = obj_MainShip.speedY


if(starDensityUsed<starDensity && canSpawnStar)
{
	star = instance_create_layer(room_width+32, irandom_range(32, room_height-32), "BackStars", obj_star)
	star.image_index = irandom(3)
	star.size = random_range(minStarSize, maxStarSize)
	star.hspeed = -starSpeed*star.size
	
	starDensityUsed += star.size
	canSpawnStar = false
	alarm_set(0, spawnTimer*star.size)
}