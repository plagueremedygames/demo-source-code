/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017

show_debug_message("chase subroutine");
show_debug_message(id);
show_debug_message("");

if(ai_state == ai_states.chase) {
	
	if(obj_character_player.ghostworld_state == false) {
		//show_debug_message("movement speed");
		//show_debug_message(moveSpeed);
		//delete old path, create new one
		path_delete(path);
		//show_debug_message("deleted path!");

		path = path_add();
		//show_debug_message("added new path!");

		//update new target position
		target_x = obj_character_player.x;
		target_y = obj_character_player.y;

		//use grid to make path
		mp_grid_path(obj_setup_pathway.grid, path, x, y, target_x, target_y, true);
		//show_debug_message("created pathway!");

		//ride on path
		path_start(path, moveSpeed, path_action_stop, true);
		//show_debug_message("riding on pathway!");
		moving = true;

		//loop
		alarm_set(0, 30);
		//show_debug_message("Beginning new countdown!");
	}
}