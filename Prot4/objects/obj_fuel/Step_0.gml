/// @description Tractor Beam from Ship2
// You can write your code in this editor
if (obj_pc_ship2.key_j == 1) && (distance_to_object(obj_pc_ship2) < obj_pc_ship2.tractor_dist)
{
	hsp = x - obj_pc_ship2.x;
	vsp = y - obj_pc_ship2.y;
}else
{
	hsp = 0;
	vsp = 0;
}

x -= hsp / movespeed;
y -= vsp / movespeed;