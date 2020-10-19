/// @description Insert description here
// You can write your code in this editor
if distance_to_point(mouse_x, mouse_y) <= 1 && mouse_check_button(mb_left) && state == false
{
	x = mouse_x;
	y = mouse_y;
	
	with obj_fish_socket
	{
		if distance_to_object(other.id) < 1
		{
			if my_id == other.my_id
			{
				other.state = true;
				other.x = x;
				other.y = y;
			}
		}
	}
}