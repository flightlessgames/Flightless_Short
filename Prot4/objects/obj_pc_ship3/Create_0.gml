/// @description Missile, Explode Function
// You can write your code in this editor
event_inherited();
my_id = 3;

//movement mechanics
propulsionspeed = 2;
theta = 0;
theta_speed = 0.03;

//resource mechanics
max_fuel = 100;
fuel = max_fuel;

function explode()
{
	obj_pc_ship1.ship3_instance = 0;
	//destroy blocks
	instance_create_depth(x,y,0,fx_explode);
	
	instance_destroy();
}