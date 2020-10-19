/// @description Refuel Ship1
// You can write your code in this editor
if can_refuel == true
{
	other.fuel += fuel_value;
	if other.fuel > other.fuel_max
		other.fuel = other.fuel_max;

	can_refuel = false;
	alarm_set(0,refuel_timer);
}