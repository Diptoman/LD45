starSpeed = 10
starDensity = 20 //number of stars on screen at the start.
starDensityUsed = 0 //bigger stars fill this up quicker, this maintains overall averageness of the starfield
spawnTimer = 10
canSpawnStar = true

minStarSize = 0.1
maxStarSize = 0.5


starYoffset = 0 //for vertical parallax/turning effect
parallaxYMultiplier = 30

while(starDensityUsed < starDensity)
{
	star = instance_create_layer(irandom(room_width), irandom_range(32, room_height-32), "BackStars", obj_star)
	star.image_index = irandom(3)
	star.size = random_range(minStarSize, maxStarSize)
	star.hspeed = -starSpeed*star.size
	starDensityUsed += star.size
}

