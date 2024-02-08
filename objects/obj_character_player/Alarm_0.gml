/// @description Insert description here
// You can write your code in this editor

if(ghostworld_cooldown_state == true) {
	//show_debug_message("ghostworld state was detected as true");
	if(ghostworld_cooldown_timer == 0) {
		ghostworld_cooldown_state = false;
	}
	ghostworld_cooldown_timer--;
	//show_debug_message(ghostworld_cooldown_timer);
	alarm_set(0, 1);
}
