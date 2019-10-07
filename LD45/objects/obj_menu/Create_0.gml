/// @description Insert description here
// You can write your code in this editor

TweenFire(id, EaseOutQuad, 0, false, 0, 45, x__, - 1366, x);

TweenFire(id, EaseOutQuad, 0, false, 0, 60, image_alpha__, 0, 1);

data = file_text_open_read("GameData.arm");
if (data == -1)
{
	data = file_text_open_write("GameData.arm");
	file_text_close(data);
}
else
{
	ds_list_read(global.gamedata, file_text_read_string(data));
	file_text_close(data);
}

if (ds_list_size(global.gamedata) == 0)
{
	ds_list_add(global.gamedata, 0);
	data = file_text_open_write("GameData.arm");
	file_text_write_string(data, ds_list_write(global.gamedata));
	file_text_close(data);
}

global.hiscore = ds_list_find_value(global.gamedata, 0);