/// @description Orbial/Radial Movement
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//parent overrides
if distance_to_object(obj_pc_ship1) < r_min
	key_down = 0;

//movement mechanics
theta = point_direction(x,y,obj_pc_ship1.x,obj_pc_ship1.y);	//direction nose is pointed
image_angle = theta + 180;

//radial movement
r_move = key_down - key_up;
r_radians = theta / 180 * pi;

hsp = cos(r_radians) * r_move;
vsp = -sin(r_radians) * r_move;	//"drawing axis" is reversed from "math axis"

//orbital movement
o_move = key_right - key_left;

o_theta = theta + 90;	//perpendicular to radius
o_radians = o_theta / 180 * pi;

hsp += cos(o_radians) * o_move;
vsp -= sin(o_radians) * o_move;

//normalize speed to limit?
total_magnitude = abs(hsp) + abs(vsp);
if total_magnitude == 0
{
	hsp = 0;
	vsp = 0;
}
else
{
	hsp = hsp / total_magnitude * movespeed;
	vsp = vsp / total_magnitude * movespeed;
}

//follow ship1 when not in control
if !(obj_gui.con_tar == my_id)
{
	hsp	= obj_pc_ship1.hsp;
	vsp	= obj_pc_ship1.vsp;
}

//special mechanics
//tractor beam
if obj_gui.con_tar == my_id
	key_j = keyboard_check(ord("J"));	//replace checkpressed with check
else
	key_j = 0;