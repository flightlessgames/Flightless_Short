// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function quest1_sandwich_check()
{
	if obj_pc1.quest1_state[0] == 0
		obj_gui.quest1_hint = "Find Bread";
	
	else if obj_pc1.quest1_state[1] == 0
		obj_gui.quest1_hint = "Find Lettuce";
	
	else if obj_pc1.quest1_state[2] == 0
		obj_gui.quest1_hint = "Find Cucumber";
	
	else if obj_pc1.quest1_state[3] == 0
		obj_gui.quest1_hint = "Find Mayo";
	
	else
	{
		state = true;
		
		for (i = 0; i < array_length(obj_pc1.quest1_state); i++)
		{
			if obj_pc1.quest1_state[i] == 0
				state = false;
		}
		
		if state
			obj_gui.quest1_hint = "Trade Duck a Sandwich for their Keycard";
		else
			obj_gui.quest1_hint = "Error";
	}
}