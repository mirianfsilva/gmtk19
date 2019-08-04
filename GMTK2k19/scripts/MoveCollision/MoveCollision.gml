h_spd = variable_instance_get(argument1[0], argument1[1]);
v_spd = variable_instance_get(argument2[0], argument2[1])

if(place_meeting(x + h_spd, y, argument0))
{
	while(!place_meeting(x + sign(h_spd), y, argument0))
	{
		x = x + sign(h_spd);
	}
	variable_instance_set(argument1[0], argument1[1], 0);
}
if(place_meeting(x, y + v_spd, argument0))
{
	while(!place_meeting(x, y + sign(v_spd), argument0))
	{
		y = y + sign(v_spd);
	}
	variable_instance_set(argument2[0], argument2[1], 0);
}