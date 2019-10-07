/// @description Insert description here
// You can write your code in this editor

totalStayingTime = 300;
currentStayingTime = totalStayingTime + 105;
rSpd = .1 + random(.2);

image_index = floor(random(3));

TweenFire(id, EaseInOutQuad, 0, false, 0, 60, x__, room_width + 384, room_width - 384);

alarm_set(0, 60);