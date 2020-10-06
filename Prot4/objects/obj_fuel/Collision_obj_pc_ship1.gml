/// @description Refuel Ship1
// You can write your code in this editor
other.fuel += fuel_value;
if other.fuel > other.fuel_max
	other.fuel = other.fuel_max;

instance_destroy();