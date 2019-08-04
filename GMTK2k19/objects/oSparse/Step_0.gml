/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

key_jump = keyboard_check(vk_space);

var move = key_right - key_left;
var isGrounded = IsGrounded();

if(key_jump) && (isGrounded)
{
	vspd = -jump_str;
}

hspd = move * moveSpd;
vspd = vspd + grv;

ref_hspd = [self, "hspd"];
ref_vspd = [self, "vspd"];
MoveCollision(oBase, ref_hspd, ref_vspd);
MoveCollision(oGround, ref_hspd, ref_vspd);

x = x + hspd;
y = y + vspd;