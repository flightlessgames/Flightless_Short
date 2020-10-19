/// @description Mothership
// You can write your code in this editor
event_inherited();
//parent overrides
movespeed = 2
my_id = 1;

//movement mechanics
theta = 0.0;
theta_speed = 0.03;

//resouces
metals = 5;	//used to create ship3
fuel_max = 1000;
fuel = fuel_max;

ship3_instance = 0;
if instance_exists(obj_pc_ship3)
	ship3_instance = obj_pc_ship3;