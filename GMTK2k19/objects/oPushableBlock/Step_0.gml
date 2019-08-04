/// @description Insert description here
// You can write your code in this editor
vspd = vspd + grv;

ref_hspd = [self, "hspd"];
ref_vspd = [self, "vspd"];

MoveCollision(oBase, ref_hspd, ref_vspd);
MoveCollision(oGround, ref_hspd, ref_vspd);
MoveCollision(oSparseGround, ref_hspd, ref_vspd);

x = x + hspd;
y = y + vspd;

var obj = instance_place(x, y + 1, oBase);
if(obj != noone)
{
	with(obj)
	{
		instance_destroy(self);
	}
}