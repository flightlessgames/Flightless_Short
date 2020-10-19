/// @description Animate While Moving
// You can write your code in this editor
if abs(hsp) + abs(vsp) <> 0
{
	image_speed = 1;
	if image_index < 1
		image_index = 1;
	show_debug_message("Image_Index: " + string(image_index));
}
else
{
	image_speed = 0;
	image_index = 0;
}