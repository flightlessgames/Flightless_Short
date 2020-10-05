/// @description Insert description here
// You can write your code in this editor
if variable_instance_exists(controller_instance_id, "state")
	controller_state = variable_instance_get(controller_instance_id, "state");

if variable_instance_exists(controller_instance_id2, "state")
	controller_state2 = variable_instance_get(controller_instance_id2, "state");

if controller_state == true || controller_state2 == true
	controller_state = true;

if (can_move == true)
{
	if (controller_state == true)
	{
		y -= move_speed;
		if (y < starting_y - move_distance)
			can_move = false;
	}
	else if (y < starting_y)
	{
		if !(place_meeting(x,y+move_speed,obj_pc_parent) || place_meeting(x,y+move_speed,obj_pc3))
			y += move_speed;
	}
}

if can_move == false && is_lock == false
{
	if (controller_state == false)
		can_move = true;
}