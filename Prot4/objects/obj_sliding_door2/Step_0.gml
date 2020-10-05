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
	if move_speed > 0
	{
		if (controller_state == true)
		{
			x -= move_speed;
			if (x < starting_x - move_distance)
				can_move = false;
		}
		else if (x < starting_x)
		{
			if !(place_meeting(x+move_speed,y,obj_pc_parent) || place_meeting(x+move_speed,y,obj_pc3))
				x += move_speed;
		}
	} else if move_speed < 0
		if (controller_state == true)
		{
			x -= move_speed;
			if (x > starting_x - move_distance)
				can_move = false;
		}
		else if (x > starting_x)
		{
			if !(place_meeting(x+move_speed,y,obj_pc_parent) || place_meeting(x+move_speed,y,obj_pc3))
				x += move_speed;
		}
}

if (can_move == false)
{
	if (controller_state == false)
		can_move = true;
}
