/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017

//spawn_speed = 3;

moveSpeed = 0;

fearlevel = 50;
prevFearLevel = 50;
maxFearLevel = 100

interestLevel = 0;
maxInterestLevel = 100;

peopleAmount = 10;

//ghostworld_cooldown_timer = 0;

fearbar_width = 500;
fearbar_height = 50;
fearbar_x = display_get_gui_width() - 525;
fearbar_y = 25;

interestbar_width = 500;
interestbar_height = 50;
interestbar_x = display_get_gui_width() - 525;
interestbar_y = 125;

target_x = 0;
target_y = 0;

path = path_add();

adults = [obj_character_ai_enemy_adult1, obj_character_ai_enemy_adult2, obj_character_ai_enemy_adult3, obj_character_ai_enemy_adult4];

//alarm_set(0, room_speed * spawn_speed);
//alarm[0] = 1;
	
