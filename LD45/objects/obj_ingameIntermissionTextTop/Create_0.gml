/// @description Insert description here
// You can write your code in this editor

TweenFire(id, EaseOutQuad, 0, false, 0, 30, y__, y, y - 350);
TweenFire(id, EaseOutQuad, 0, false, 0, 30, image_alpha__, 0, 1);
TweenFire(id, EaseOutQuad, 0, false, 30, 10, y__, y - 350, y - 320);
TweenFire(id, EaseOutQuad, 0, false, 0, 30, image_scale__, 0, 1.2);
TweenFire(id, EaseOutQuad, 0, false, 30, 10, image_scale__, 1.2, 1);

if (obj_controller.armadaSize >= obj_controller.requiredArmadaSize)
	alarm_set(0, obj_planet.totalStayingTime);