/// @description Insert description here
// You can write your code in this editor
if variable_instance_exists(button_id, "state")
	state = variable_instance_get(button_id, "state");
	
if state == true
	obj_gui.win = true;