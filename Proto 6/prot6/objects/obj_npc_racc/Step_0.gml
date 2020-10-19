/// @description Insert description here
// You can write your code in this editor

if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	switch(obj_pc1.quest2_state)
	{
		case 2:
			//dialog
			obj_gui.dialog_box[0] = "My room sure is a mess";
			obj_gui.dialog_box[1] = "But that's how I like it.";
			obj_gui.dialog_box[2] = "The Clam might be in here somewhere.";
			
			break;
		
		default:
			//dialog
			obj_gui.dialog_box[0] = "Hey, how's it going?";
			obj_gui.dialog_box[1] = "Did you find any cool treasure";
			obj_gui.dialog_box[2] = "under all of my trash?";
			
			break;
	}
}