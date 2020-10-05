/// @description Insert description here
// You can write your code in this editor
my_pair = 0;

if instance_exists(pair_instance_id)
	my_pair = pair_instance_id;
	
cooldown = false;
alarm_length = 60;

function telefunction()
{
	if cooldown == false
	{
		other.x = my_pair.x
		other.y = my_pair.y - 16;
		
		image_index = 1;
		cooldown = true;
		
		my_pair.image_index = 1;
		my_pair.cooldown = true;
	}
	
	alarm[0] = alarm_length;
	my_pair.alarm[0] = alarm_length;
}