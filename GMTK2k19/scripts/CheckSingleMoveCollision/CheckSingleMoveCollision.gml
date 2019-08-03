result[0] = argument1;
result[1] = argument2;

if(place_meeting(x+argument1,y,argument0))
{
	while(!place_meeting(x+sign(argument1),y,argument0))
	{
		x = x + sign(argument1);
	}
	result[0] = 0;
}
if(place_meeting(x,y+argument2,argument0))
{
	while(!place_meeting(x,y+sign(argument2),argument0))
	{
		y = y + sign(argument2);
	}
	result[1] = 0;
}

return result;