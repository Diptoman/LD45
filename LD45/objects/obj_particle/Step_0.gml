life-=1
if image_index == 1
	image_angle += 10
	
if life<fadeStart
	image_alpha = life/fadeStart
if(life<=0)
	instance_destroy()
