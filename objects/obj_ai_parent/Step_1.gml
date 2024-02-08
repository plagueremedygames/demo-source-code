/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017
//show_debug_message("begin step, ai_state: ");
//show_debug_message(ai_state);

//are we chasing? did we already begin chasing?
if(ai_state == ai_states.chase && did_start_chase == false) {
	
	show_debug_message("started chase");
	show_debug_message(id);
	show_debug_message("");
	
	//did not start other things
	did_start_idle = false;
	did_start_flee = false;
	
	//stop alarm 1
	alarm[1] = -1;
	
	//start alarm 0
	alarm[0] = 1;
	
	//started chase
	did_start_chase = true;
	//moveSpeed = chaseMoveSpeed;
}

//are we fleeing? did we already begin fleeing?
else if(ai_state == ai_states.flee && did_start_flee == false) {
	
	//stop everything else
	did_start_chase = false;
	did_start_idle = false
	
	//stop alarms
	alarm[0] = -1;
	alarm[1] = -1;
	
	
	//flee
	flee_method();
	did_start_flee = true;
}


//idle
else if(ai_state == ai_states.idle && did_start_idle == false) {
	
	//stop everything else
	did_start_chase = false;
	did_start_flee = false;
	
	alarm[0] = -1;
	alarm[1] = 1;
	did_start_idle = true;
}

if(obj_hud_and_gameloop.fearlevel > obj_hud_and_gameloop.prevFearLevel) {
	show_debug_message("calling react...");
	show_debug_message(id);
	show_debug_message("");
	react();
}