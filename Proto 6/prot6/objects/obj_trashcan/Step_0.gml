/// @description Insert description here
// You can write your code in this editor

if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	if obj_pc1.quest1_state[1] == 0
	{
		obj_pc1.quest1_state[1] = 1;
		
		obj_pc1.pickup_txt = "+1 Lettuce";
		obj_pc1.alarm[0] = obj_pc1.alarm_time;
		
		quest1_sandwich_check();
	}
}