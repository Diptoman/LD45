image_xscale = size
image_yscale = size

offsetY = startY-obj_starMovement.starYoffset*obj_starMovement.parallaxYMultiplier*(obj_starMovement.maxStarSize - size)
y = lerp(y, offsetY, 0.05)

previousOffsetY = offsetY


draw_self()