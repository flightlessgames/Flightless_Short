/// @description Insert description here
// You can write your code in this editor
if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	obj_pc1.quest2_state = 5;
	obj_gui.quest2_hint = "You Have Cat's Keycard";
	
	if obj_npc_duck.my_state = true
		obj_gui.door.warp_state = true;
	
	obj_pc1.pickup_txt = "+1 Keycard";
	obj_pc1.alarm[0] = obj_pc1.alarm_time;
	
	instance_destroy();
}