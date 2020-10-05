/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

pc_maxpower = 100;
pc_power = 100;

pc_battery = 100;
pc_battery_max = 100;

charge_distance = 16;
charge_rate = 5;

function drain_power()	//power functions as "timer" for how fast battery drains	//see step function
{
	pc_power -= 1;
		if pc_power <= 0
			pc_power = 0;	
}