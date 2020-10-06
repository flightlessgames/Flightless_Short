/// @description Create Children, Die
// You can write your code in this editor
if is_parent == true
{
	if children < child_max
	{
		randomize();
		jit_x = x + random(child_jitter);
		jit_y = y + random(child_jitter);
		child = instance_create_depth(jit_x,jit_y,0,fx_explode)
		child.is_parent = false;
		child.image_angle = random(360);
		children++;
		show_debug_message("Creating Child: " + string(children));
	}
}

if image_index > image_number - 1
	instance_destroy();