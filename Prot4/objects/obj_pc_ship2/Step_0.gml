/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

theta = point_direction(x,y,obj_pc_ship1.x,obj_pc_ship1.y);	//direction nose is pointed
image_angle = theta + 180;

//radial movement
r_move = (key_down - key_up) * movespeed;
r_radians = theta / 180 * pi;

hsp = cos(r_radians) * r_move;
vsp = -sin(r_radians) * r_move;	//"drawing axis" is reversed from "math axis"

//orbital movement
o_move = (key_right - key_left) * movespeed;

o_theta = theta + 90;	//perpendicular to radius
o_radians = o_theta / 180 * pi;

hsp += cos(o_radians) * o_move;
vsp -= sin(o_radians) * o_move;

if (distance_to_object(obj_pc_ship1) < carry_distance) && !(obj_gui.con_tar == my_id)
{
	hsp	= obj_pc_ship1.hsp;
	vsp	= obj_pc_ship1.vsp;
}

//tractor beam