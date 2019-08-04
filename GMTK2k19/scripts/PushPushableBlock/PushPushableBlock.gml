
if (place_meeting(x+hspd, y, oPushableBlock)) 
{
	var block = instance_place(x+hspd, y, oPushableBlock);
	with (block)
	{
		hspd = oStronger.hspd;
		ref_hspd = [self, "hspd"];
		ref_vspd = [self, "vspd"];
		CheckMoveCollision(ref_hspd, ref_vspd);


		x = x + hspd;
		y = y + vspd;
	}
}