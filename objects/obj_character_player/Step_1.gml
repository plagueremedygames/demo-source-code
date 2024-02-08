/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017


// Inherit the parent event
event_inherited();

//right side?
if(place_meeting(self.x+1, self.y, obj_wall_transparent) && stuck_right == false && !stuck) {
	stuck_right = true;
	//show_debug_message("right")
}

//left side?
if(place_meeting(self.x-1, self.y, obj_wall_transparent) && stuck_left == false && !stuck) {
	stuck_left = true;
	//show_debug_message("left")
}

//up?
if(place_meeting(self.x, self.y+1, obj_wall_transparent) && stuck_up == false && !stuck) {
	stuck_up = true;
	//show_debug_message("down")
}

//down?
if(place_meeting(self.x, self.y-1, obj_wall_transparent) && stuck_down == false && !stuck) {
	stuck_down = true;
	//show_debug_message("up")
}

if(stuck_left && stuck_right && ghostworld_state == false || stuck_down && stuck_up && ghostworld_state == false) {
	stuck = true;
	//show_debug_message("help! I'm stuck!");
	obj_hud_and_gameloop.fearlevel -= 50;
	ghostworld_cooldown_timer = 600;
	get_un_stuck();
	stuck_right = false;
	stuck_left = false;
	stuck_up = false;
	stuck_down = false;
}

else {
	move_towards_point(1200, 1200,0);
}

stuck = false;
stuck_right = false;
stuck_left = false;
stuck_up = false;
stuck_down = false;



//set input values to keydownsj
inputX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
inputY = keyboard_check(ord("S")) - keyboard_check(ord("W"));

if(keyboard_check_pressed(vk_shift) && obj_hud_and_gameloop.fearlevel != 0 && ghostworld_cooldown_state == false) {
	ghostworld_state = true;
	audio_play_sound(snd_sfx_worldtransition, 1, false, 50);
	//show_debug_message("set ghostworld_state to true");
}

else if(ghostworld_state == true && obj_hud_and_gameloop.fearlevel == 0) {
	ghostworld_state = false;
	audio_play_sound(snd_sfx_worldtransition, 1, false, 50);
	ghostworld_cooldown_state = true;
	ghostworld_cooldown_timer = 300;
			alarm[0] = 1;
}


if(keyboard_check_released(vk_shift)) {
	
	if(ghostworld_state == true) {
		
		ghostworld_state = false;
		audio_play_sound(snd_sfx_worldtransition, 1, false, 50);
		show_debug_message("set ghostworld_state to false");
		
		if(ghostworld_cooldown_state == false) {
			
			ghostworld_cooldown_state = true;
			ghostworld_cooldown_timer = 300;
			alarm[0] = 1;
			
		}
		
	}
	
}

//check for escape key
if keyboard_check(vk_escape) {
	room_goto(0);
}

if(obj_hud_and_gameloop.fearlevel >= 33 && obj_hud_and_gameloop.fearlevel < 66) {
	state = fear_states.scary;
}

else if(obj_hud_and_gameloop.fearlevel >= 66) {
	state = fear_states.terrifying;
	
}

else {
	state = fear_states.idle;
	
}