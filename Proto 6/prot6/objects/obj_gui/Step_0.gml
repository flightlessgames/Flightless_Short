/// @description Insert description here
// You can write your code in this editor
if string_length(dialog_box[0]) > 0
{
	obj_pc1.dialogue_pause = true;	
	
	if mouse_check_button_pressed(mb_left)
		dialog_box[0] = "";
}
else
{
	obj_pc1.dialogue_pause = false;
	dialog_box[1] = "";
	dialog_box[2] = "";	
	dialog_box[3] = "";	
}

if (mouse_check_button_pressed(mb_left))
{
	clicked = true;	
	alarm_set(0,5);
}