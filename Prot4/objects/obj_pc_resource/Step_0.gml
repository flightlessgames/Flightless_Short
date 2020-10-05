/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (pc_power <= 0) && (pc_battery >= 1)	//every cycle of power usage, a unit of battery is exchanged
{
	pc_power = pc_maxpower;
	pc_battery -= 1;
	if (pc_battery <= 0)
		pc_battery = 0;
}

if (obj_pc1.key_k == 1) && (distance_to_object(obj_pc1) <= charge_distance) && (vsp==0) && (hsp==0)
{
	pc_power += charge_rate;
	if (pc_power >= pc_maxpower)
	{
		pc_battery += 1;
		pc_power -= pc_maxpower;
		if (pc_battery >= pc_battery_max)
			pc_battery = pc_battery_max;
	}
}