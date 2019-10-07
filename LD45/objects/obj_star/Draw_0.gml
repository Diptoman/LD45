image_xscale = size
image_yscale = size

offsetY = startY-obj_starMovement.starYoffset*obj_starMovement.parallaxYMultiplier*(obj_starMovement.maxStarSize - size)
y = lerp(y, offsetY, 0.05)

draw_self()

if(size<obj_starMovement.maxStarSize/1.5 && irandom(100)<1)
{
	image_xscale*=2
	image_yscale = image_xscale
	draw_self()
	image_xscale/=2
	image_yscale = image_xscale
}
