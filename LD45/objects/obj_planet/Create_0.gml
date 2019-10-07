/// @description Insert description here
// You can write your code in this editor

totalStayingTime = 240;
currentStayingTime = totalStayingTime + 105;
rSpd = .1 + random(.2);

image_index = floor(random(3));

TweenFire(id, EaseInOutQuad, 0, false, 0, 60, x__, room_width + 384, room_width - 384);

alarm_set(0, 60);

if (obj_controller.armadaSize < obj_controller.requiredArmadaSize)
{
	if (obj_controller.scr > global.hiscore)
	{
		ds_list_replace(global.gamedata, 0, obj_controller.scr);
		data = file_text_open_write("GameData.arm");
		file_text_write_string(data, ds_list_write(global.gamedata));
		file_text_close(data);
		global.hiscore = obj_controller.scr;
	}
}