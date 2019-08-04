/// @description Insert description here
// You can write your code in this editor
if(target == noone)
{
	for(var i = 0; i < instance_number(oDoor); i++)
	{
		var d = instance_find(oDoor, i);
		if(d.act_index == self.act_index)
		{
			target = d;
			break;
		}
	}
}