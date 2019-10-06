image_xscale = size
image_yscale = size

offsetY = startY-obj_starMovement.starYoffset*obj_starMovement.parallaxYMultiplier*(obj_starMovement.maxStarSize - size)
y = lerp(y, offsetY, 0.05)

draw_self()

//draw_set_alpha(0.2)
//x += 16
//draw_self()

//draw_set_alpha(0.05)
//x += 16
//draw_self()

//x-=32
//draw_set_alpha(1)