/// @description Insert description here
// You can write your code in this editor

TweenFire(id, EaseOutQuad, 0, false, 0, 45, y__, room_height + 384, room_height / 2 - 128);

hiscore = false;
scr = 0;

if (obj_controller.scr > global.hiscore)
	{
		ds_list_replace(global.gamedata, 0, obj_controller.scr);
		data = file_text_open_write("GameData.arm");
		file_text_write_string(data, ds_list_write(global.gamedata));
		file_text_close(data);
		global.hiscore = obj_controller.scr;
		hiscore = true;
	}
	
scr = obj_controller.scr;

obj_controller.stage = -1;