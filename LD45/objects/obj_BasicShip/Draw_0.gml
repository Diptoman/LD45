draw_self();
	
if (attached < 2)
{
	draw_healthbar_circular(x, y, 64, 0, 100, spr_shipCircle, .25);

	draw_set_alpha(1);

	if(alarm_get(0)>0)
	{
		//draw_rectangle(x-20, y+32, x+20-40*alarm_get(0)/attachTime, y+36, c_white)
		draw_healthbar_circular(x, y, 64, 270, 100 - (alarm_get(0)/attachTime)*100, spr_healthbar, 1);
	}
}