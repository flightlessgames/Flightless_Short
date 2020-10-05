/// @description Insert description here
// You can write your code in this editor
block = 0;

if instance_exists(block_id)
	block = block_id;

start_x = block.x;
start_y = block.y;

cooldown = false;
alarm_length = 90;

function telefunction()
{
	block.x = start_x;
	block.y = start_y;
}