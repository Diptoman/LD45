image_xscale = size
image_yscale = size

offsetY = y-obj_starMovement.starYoffset*obj_starMovement.parallaxYMultiplier*(obj_starMovement.maxStarSize - size)
y = lerp(startY, offsetY, 0.2)

previousOffsetY = offsetY


draw_self()