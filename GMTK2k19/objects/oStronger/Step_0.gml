/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var tmphspd = hspd;
var pushableBlock = instance_place(x+hspd, y, oPushableBlock);
if (pushableBlock != noone)
{
	with (pushableBlock)
	{
		hspd = tmphspd;
		vspd = vspd + grv;

		ref_hspd = [self, "hspd"];
		ref_vspd = [self, "vspd"];

		MoveCollision(oBase, ref_hspd, ref_vspd);
		MoveCollision(oGround, ref_hspd, ref_vspd);
		MoveCollision(oSparseGround, ref_hspd, ref_vspd);

		x = x + hspd;
		y = y + vspd;
		
		hspd = 0;
	}
}