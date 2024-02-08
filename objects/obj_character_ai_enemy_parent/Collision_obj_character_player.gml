/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017



if(!did_get_scared && obj_character_player.ghostworld_state == false && unscarable == false) {
	
	show_debug_message("got scared");
	show_debug_message(id);
	show_debug_message("");
	
	//does not need to exist (i think)
	did_get_scared = true;	
	
	reacting = true;
	
	did_start_chase = false;
	did_start_idle = false;
	
	ai_state = ai_states.flee;

	//show_debug_message("set state to flee!!");
	
		if(gender == genders.male) {
			
			scream_index = irandom(2);
			switch (scream_index) {
				case 0:
					audio_play_sound(screams.male.male1, 1, 0);
				break;
		
				case 1:
					audio_play_sound(screams.male.male2, 1, 0);
				break;
		
				case 2:
					audio_play_sound(screams.male.male3, 1, 0);
				break;
			}
		}
			
		else {
			
			scream_index = irandom(2);
			switch (scream_index) {
				case 0:
					audio_play_sound(screams.female.female1, 1, 0);
				break;
		
				case 1:
					audio_play_sound(screams.female.female2, 1, 0);
				break;
		
				case 2:
					audio_play_sound(screams.female.female3, 1, 0);
				break;
			}
			
		}
	
	obj_hud_and_gameloop.fearlevel += 20;
}

