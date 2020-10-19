/// @description Insert description here
// You can write your code in this editor

if (distance_to_point(mouse_x, mouse_y)<=1) && (mouse_check_button_pressed(mb_left)) 
{
	if obj_pc1.quest1_state[0] == 0
	{
		//bread dialog
		obj_gui.dialog_box[0] = "I'm so, soo hungry.";
		obj_gui.dialog_box[1] = "I sure could use a nice meal right about now.";
		obj_gui.dialog_box[2] = "I'll let you borrow my Keycard for a sandwich.";
			
		obj_gui.quest1_hint = "Find Bread";
	}
	else if obj_pc1.quest1_state[1] == 0
	{
		//dialog
		obj_gui.dialog_box[0] = "You can't make a sandwich with only bread";
		obj_gui.dialog_box[1] = "It's just not healthy.";
		obj_gui.dialog_box[2] = "A good sandwich has layers, and vegetables.";
		
		obj_gui.quest1_hint = "Find Lettuce";
	
	}
	else if obj_pc1.quest1_state[2] == 0
	{
		//Bread, No Cucumber dialog
		obj_gui.dialog_box[0] = "So far so good, but it could really use some flavor,";
		obj_gui.dialog_box[1] = "Do you want to check the Garden out back?";

		obj_gui.quest1_hint = "Find Cucumber";
	}
	else if obj_pc1.quest1_state[3] == 0
	{
		//dialog
		obj_gui.dialog_box[0] = "Almost perfect, although a good sandwich has condiments.";
		obj_gui.dialog_box[1] = "See if you can procure something nice";
			
		obj_gui.quest1_hint = "Find Mayo";
	}
	else
	{
		//has all ingredients?
		state = true;
		
		for (i = 0; i < array_length(obj_pc1.quest1_state); i++)
		{
			if obj_pc1.quest1_state[i] == 0
				state = false;
		}
		
		if state
		{
			//dialog
			obj_gui.dialog_box[0] = "Thank you so, soo much!";
			obj_gui.dialog_box[1] = "You can borrow my Keycard,";
			obj_gui.dialog_box[2] = "Just until I finish eating.";

			my_state = true;
			obj_gui.quest1_hint = "You have Duck's Keycard";
			if obj_pc1.quest2_state = 5
				obj_gui.door.warp_state = true;
		}
		else
		{
			//dialog
			obj_gui.dialog_box[0] = "SANDWICH ERROR.";
			show_debug_message("Sandwich Error");	
		}
	}
}