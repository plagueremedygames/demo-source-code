/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017


// Inherit the parent event
event_inherited();

//set to chase if we are less than 200 pixels away
if(ai_state == ai_states.idle && mp_grid_path(obj_setup_pathway.grid, path, x, y, target_x, target_y, true) && path_get_length(path) < 600) {
	if(obj_character_player.ghostworld_state == false) {
		ai_state = ai_states.chase;
		show_debug_message("starting chase from proximity");
		show_debug_message(id);
		show_debug_message("");
		//show_debug_message("step: set state to chase");
	}
}

//set to idle if we are more than 300 pixels away
if(ai_state == ai_states.chase && ai_state != ai_states.flee  && ai_state != ai_states.idle && distance_to_object(obj_character_player) > 650) {
	ai_state = ai_states.idle;
}



//Normalize movement direction, get corect sprite
if(newMoveDirection != oldMoveDirection && moving = true) {
	//normalize move direction to right
	if(newMoveDirection >= 0.00 && newMoveDirection < 67.50 || newMoveDirection >= 292.500 && newMoveDirection <= 360.00) {
		newMoveDirection = 0;
	}
	//normalize to up
	else if(newMoveDirection >= 67.50 && newMoveDirection < 112.50) {
		newMoveDirection = 90;
	}
	//normalize to left
	else if(newMoveDirection >= 112.50 && newMoveDirection < 247.50) {
		newMoveDirection = 180;
	}
	//normalize to down
	else if(newMoveDirection >= 225.00 && newMoveDirection < 315.00) {
		newMoveDirection = 270;
	}
	
	/*else {
		sprite_index = get_sprite(idle_dir_constant);
	}*/
	sprite_index = get_sprite(newMoveDirection);
	
	oldMoveDirection = newMoveDirection;
}