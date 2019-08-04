
if (place_meeting(x+hspd, y, oPushableBlock)) 
{
	var block = instance_place(x+hspd, y, oPushableBlock);
	with (block)
	{
		hspd = other.hspd;
		ref_hspd = [self, "hspd"];
		ref_vspd = [self, "vspd"];
		MoveCollision(oGround, ref_hspd, ref_vspd);
		MoveCollision(oSparseGround, ref_hspd, ref_vspd);
		MoveCollision(oBase, ref_hspd, ref_vspd);

		x = x + hspd;
		y = y + vspd;
	}
}