/// @description Free Flying, Create Ship3
// You can write your code in this editor

// Inherit the parent event
event_inherited();

move = (key_up - key_down) * movespeed * (fuel/fuel_max);	//take input, speedforce, proportional to fuel

theta_move = (key_right - key_left) * theta_speed;
theta += theta_move;
	
image_angle = -theta * 180 / pi;

hsp = cos(theta) * move;
vsp = sin(theta) * move;

if (abs(hsp) + abs(vsp) <> 0)	//use fuel when any movement
	fuel -= 1;
if fuel < 0
	fuel = 0;
	
if (ship3_instance == 0) && (key_j == 1) && (metals > 0)
{
	instance_create_depth(x,y,0,obj_pc_ship3);
	ship3_instance = obj_pc_ship3;
	ship3_instance.theta = theta;
	metals -= 1;
	obj_gui.con_tar = 3;
}