/// @description Insert description here
// You can write your code in this editor

if (hspd != 0)
{
	tmphspd = sign(hspd);
}

ref_hspd = [self, "hspd"];
ref_vspd = [self, "vspd"];
MoveCollision(oBase, ref_hspd, ref_vspd);
MoveCollision(oGround, ref_hspd, ref_vspd);
MoveCollision(oSparseGround, ref_hspd, ref_vspd);

hspd = tmphspd

if((place_meeting(x+sign(hspd), y, oMovingPlatformLimit)) || (place_meeting(x+sign(hspd), y, oGround)) || (place_meeting(x+sign(hspd), y, oBase)))
{
	hspd = -1*hspd;
}

x = x + hspd;

if (instance_exists(oBase))
{
	if(place_meeting(x, y-1, oBase))
	{
		var player = instance_place(x,y-1, oBase);
		player.hspd_carry = hspd;		
	}
}

if (instance_exists(oPushableBlock))
{
	if(place_meeting(x, y-1, oPushableBlock))
	{
		var player = instance_place(x,y-1, oPushableBlock);
		player.hspd_carry = hspd;
	}
}