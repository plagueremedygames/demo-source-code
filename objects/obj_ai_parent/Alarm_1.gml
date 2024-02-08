/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017

show_debug_message("idle subroutine");
show_debug_message(id);
show_debug_message("");

if(moves && ai_state == ai_states.idle){
	
	//delete old path
	path_delete(path);
	//show_debug_message("deleted path!");

	//create new path
	path = path_add();
	//show_debug_message("added new path!");

	//update new target position
	var _targetX = irandom_range(xstart - moveRange, xstart + moveRange);
	var _targetY = irandom_range(ystart - moveRange, ystart + moveRange);

	//use grid to make path
	//mp_grid_path(obj_setup_pathway.grid, path, x, y, _targetX, _targetY, true);
	//show_debug_message("created pathway!");
	
	if(mp_grid_path(obj_setup_pathway.grid, path, x, y, _targetX, _targetY, true)) {
		//ride on path
		path_start(path, moveSpeed, path_action_stop, true);
		//show_debug_message("riding on pathway!");
		moving = true;
	}

	//loop
	alarm_set(1, irandom_range(minMoveTime, maxMoveTime));
	//show_debug_message("Beginning new countdown!");
}

