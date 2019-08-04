/// @description Insert description here
// You can write your code in this editor
if(target != noone) && (!isTriggered)
{
	with(target)
	{
		opening = true;
		sprite_index = sDoorOpening;
	}
	image_index++;
	isTriggered = true;
}