/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
if string_length(dialog_box[0]) > 0
{
	draw_text(32,304, dialog_box[0]);
	draw_text(32,328, dialog_box[1]);
	draw_text(32,352, dialog_box[2]);
	draw_text(32,376, dialog_box[3]);
	
	draw_text(400,376, "[Click] to Continue");
	
}
else
{
	draw_text(16,280, "Current Objectives:");
	draw_text(32,304, quest1_hint);
	draw_text(32,328, quest2_hint);
	draw_text(32,352, quest3_hint);
	draw_text(32,376, quest4_hint);
}