/// @description Insert description here
// You can write your code in this editor
//@feather ignore GM2017

fearlevel = clamp(fearlevel, 0, 100);

if(obj_character_player.ghostworld_state == true) {
	obj_level_background.sprite_index = spr_background_play;
	
}

else {
	obj_level_background.sprite_index = spr_background_play_human;
}

if(interestLevel >= 100) {
	room_goto(5);
}

if(peopleAmount <= 0) {
	room_goto(7);
}

prevFearLevel = fearlevel;