/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017


// Inherit the parent event
event_inherited();

moveSpeed = 3;
ghostworldMoveSpeed = 5;

//are we in the ghost world?
ghostworld_state = false;
//are we in cooldown?
ghostworld_cooldown_state = false;
//time left in cooldown
ghostworld_cooldown_timer = 0;

//are we stuck?
stuck = false;

stuck_left = false;
stuck_right = false;
stuck_down = false;
stuck_up = false;

fear_states = {
	idle: {
		right: spr_mg_idleRight,
		left: spr_mg_idleLeft,
		up: spr_mg_idleUp,
		down: spr_mg_idleDown,
		ur: spr_mg_idleDiagonalUR,
		ul: spr_mg_idleDiagonalUL,
		dr: spr_mg_idleDiagonalDR,
		dl: spr_mg_idleDiagonalDL
	},
	scary: {
		right: spr_mg_idleScaryRight,
		left: spr_mg_idleScaryLeft,
		up: spr_mg_idleScaryUp,
		down: spr_mg_idleScaryDown,
		ur: spr_mg_idleScaryDiagonalUR,
		ul: spr_mg_idleScaryDiagonalUL,
		dr: spr_mg_idleScaryDiagonalDR,
		dl: spr_mg_idleScaryDiagonalDL
	},
	terrifying: {
		right: spr_mg_idleTerrifyingRight,
		left: spr_mg_idleTerrifyingLeft,
		up: spr_mg_idleTerrifyingUp,
		down: spr_mg_idleTerrifyingDown,
		ur: spr_mg_idleTerrifyingDiagonalUR,
		ul: spr_mg_idleTerrifyingDiagonalUL,
		dr: spr_mg_idleTerrifyingDiagonalDR,
		dl: spr_mg_idleTerrifyingDiagonalDL
	}

}

state = fear_states.idle;

function get_un_stuck() {
	//show_debug_message("called get unstuck was called")
	if(stuck) {
		move_towards_point(1200, 1200, moveSpeed);
		//show_debug_message("moving towards center");
	}
	else {
		//show_debug_message("error with get_un_stuck, not stuck!");
		
	}
}