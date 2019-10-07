/// @description Insert description here
// You can write your code in this editor
difficulty = 1;
perStageTime = 600;
maxStageTime = 600;
armadaSize = 1;
requiredArmadaSize = 2;

stage = 1;

alarm_set(0, 60);
alarm_set(1, 120);

randomize();

audio_play_sound(snd_bg, 10, true);