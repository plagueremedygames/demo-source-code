/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017



// Inherit the parent event

if(ghostworld_state == true) {
	moveSpeed = ghostworldMoveSpeed;
	//x += inputX * moveSpeed;
	//y += inputY * moveSpeed;
	move_and_collide(inputX * moveSpeed, inputY * moveSpeed, obj_ghostworld_boundary);
	obj_hud_and_gameloop.fearlevel -= 1;
}

else {
	moveSpeed = 3;
	move_and_collide(inputX * moveSpeed, inputY * moveSpeed, obj_wall_transparent);
}
//temporary, set direction

	if (inputX = 1 && inputY == 0) {
		moveDirection = 0;
	}
	
	else if (inputX = 1 && inputY == 1){
		moveDirection = 315;
	}
	
	else if (inputX = 1 && inputY == -1){
		moveDirection = 45;
	}
	
	else if (inputX = -1 && inputY == 0){
		moveDirection = 180;
	}
	
	else if (inputX = -1 && inputY == 1){
		moveDirection = 225;
	}
	
	else if (inputX = -1 && inputY == -1){
		moveDirection = 135;
	}
	
	else if (inputX = 0 && inputY == 1){
		moveDirection = 270;
	}
	else if (inputX = 0 && inputY == -1){
		moveDirection = 90;
	}
	else
		moveDirection = 0;
	
sprite_index = get_sprite(moveDirection);