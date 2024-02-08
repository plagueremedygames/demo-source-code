/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017


// Inherit the parent event
event_inherited();

gender = genders.none;
scream_index = 0;

did_get_scared = false;
unscarable = false;
reacting = false;

pathLength = 0;
pathLengthGroupCutoff = 400;
pathLengthCuriousCutoff = 600;

camera_index = 0;

camerasnaps = {
	camera1: snd_sfx_camera1,
	camera2: snd_sfx_camera2,
	camera3: snd_sfx_camera3,
	camera4: snd_sfx_camera4
}

screams = {
	male: {
		male1: snd_sfx_male_scream1,
		male2: snd_sfx_male_scream2,
		male3: snd_sfx_male_scream3
	},
	female: {
		female1: snd_sfx_female_scream1,
		female2: snd_sfx_female_scream2,
		female3: snd_sfx_female_scream3
	}
}

enum genders {
	none,
	male,
	female
}

enum male_screams {
	male1,
	male2,
	male3
}

enum female_screams {
	female1,
	female2,
	female3
}

enum camerasnapsindices {
	camera1,
	camera2,
	camera3,
	camera4
}
	
 function get_react() {
	return reacting;
 }

function set_react(setting) {
	reacting = setting;
 }
 
 function react() {
	 
	if(!reacting) {
	
		//create path
		mp_grid_path(obj_setup_pathway.grid, path, x, y, obj_character_player.x, obj_character_player.y, true);
	
		//get path length
		pathLength = path_get_length(path);
	
		//check path lengths and choose options
		if(pathLength <= pathLengthGroupCutoff) {
			
			//count as part of group
			show_debug_message("group scare");
			show_debug_message(id);
			show_debug_message("");
			
			//become unscarable
			unscarable = true;
			
			//take picture
			camera_index = irandom(3);
			switch(camera_index) {
				
				case 0:
					audio_play_sound(snd_sfx_camera1, 1 ,false);
				break;
				
				case 1:
					audio_play_sound(snd_sfx_camera2, 1 ,false);
				break;
				
				case 2:
					audio_play_sound(snd_sfx_camera3, 1 ,false);
				break;
				
				case 3:
					audio_play_sound(snd_sfx_camera4, 1 ,false);
				break;
			}
			
			
			//leave level
			ai_state = ai_states.flee;
			
			//not worth any fear points, interest goes up
			obj_hud_and_gameloop.interestLevel += 30;
			reacting = true;
		}
	
		else if(pathLength <= pathLengthCuriousCutoff) {
			//set curious behaviour
			show_debug_message("curious");
			show_debug_message(id);
			show_debug_message("");
			ai_state = ai_states.chase;
			reacting = true;
		}
	
		else {
			//ignore
			show_debug_message("ignored");
			show_debug_message(id);
			show_debug_message("");
			reacting = true;
		}
		
		
	}
	
	else {
		show_debug_message("I'm too scared to react right now!");
		show_debug_message(id);
		show_debug_message("");
	}
	
	//reacting = false;
	
 }