/// @description Insert description here
// You can write your code in this editor
if(secondsToBlow > 0)
{
	secondsToBlow--;
	alarm[0] = 60;
}
else 
{
	instance_create_depth(x, y, -1, oPushableBlock);
	with (oBase)
	{
		if (distance_to_point(other.x, other.y) <= other.explosionRadius)
		{
			instance_destroy();
		}
	}
}