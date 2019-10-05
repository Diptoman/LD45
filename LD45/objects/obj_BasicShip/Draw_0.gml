draw_self()
if(alarm_get(0)>0)
	draw_rectangle(x-20, y+32, x+20-40*alarm_get(0)/attachTime, y+36, c_white)