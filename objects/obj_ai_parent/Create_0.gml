/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017



// Inherit the parent event
event_inherited();

enum ai_states {
	idle,
	chase,
	flee
}

//chaseMoveSpeed = moveSpeed + 2;

ai_state = ai_states.idle;

did_start_chase = false;
did_start_flee = false;
did_start_idle = false;

target_x = 0;
target_y = 0;

path = path_add();

newMoveDirection = 0;
oldMoveDirection = 0;

fleeMoveSpeed = 5;



function flee_method()
 {
	show_debug_message("flee subroutine");
	show_debug_message(id);
	show_debug_message("");
	//show_debug_message(moveSpeed);
	//moveSpeed = fleeMoveSpeed;
	path_delete(path);
	//show_debug_message("deleted path!");

	path = path_add();
	//show_debug_message("added new path!");

	//update new target position
	target_x = random_range(0, 2400);
	target_y = 2400;

	//use grid to make path
	mp_grid_path(obj_setup_pathway.grid, path, x, y, target_x, target_y, true);
	//show_debug_message("created pathway!");
	

	//ride on path
	path_start(path, moveSpeed, path_action_stop, true);
	//show_debug_message("riding on pathway!");
	moving = true;
	state = states.scared;
 }
 
 