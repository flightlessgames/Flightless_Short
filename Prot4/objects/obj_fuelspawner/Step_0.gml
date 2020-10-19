/// @description Periodically Spawn Fuel
// You can write your code in this editor
if can_spawn == true
{
	can_spawn = false;
	alarm_set(1,spawn_timer);	
	
	x_jit = random_range(-2,2) * 8;
	y_jit = random_range(-2,2) * 8;
	children = instance_create_depth(x+x_jit, y+y_jit, 0, obj_fuel);
	//eject animation
}