/// @description Insert description here
// You can write your code in this editor
state = false

if herring_input.state && salmon_input.state && tuna_input.state
	state = true;

if state
	room_goto(asset_get_index("Room1"));