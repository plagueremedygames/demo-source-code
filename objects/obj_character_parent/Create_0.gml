/// @description Insert description here
// input
///@feather ignore GM2017

inputX = 0;
inputY = 0;

//movement
moveSpeed = 1;

moving = false;
moveDirection = 0;

idle_dir_constant = -500;


get_sprite = function(dir) {
	if (dir == 0) return state.right;
	else if (dir == 45) return state.ur;
	else if (dir == 90) return state.up;
	else if (dir == 135) return state.ul;
	else if (dir == 180) return state.left;
	else if (dir == 225) return state.dl;
	else if (dir == 270) return state.down;
	else if (dir == 315) return state.dr;
	else if (dir == -500) return state.idle;
	
	return sprite_index;
}

set_state = function(newState) {
	if(state == newState) return;
	
	state = newState;
	image_index = 0;
}