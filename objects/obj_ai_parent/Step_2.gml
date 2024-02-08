/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017
//show_debug_message("endstep");
newMoveDirection = point_direction(xprevious, yprevious, x, y);
if(x == xprevious && y == yprevious) {
	moving = false;
	if(obj_character_player.ghostworld_state == true) {
		sprite_index = spr_humans_ghostworld;
	}
	else {
		sprite_index = get_sprite(idle_dir_constant);
	}
}

