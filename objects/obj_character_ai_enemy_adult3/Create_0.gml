/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017


// Inherit the parent event
event_inherited();
gender = genders.female;
moveSpeed = 2;


states = {
	calm: {
		right: spr_adult3_calm_walk_right,
		left: spr_adult3_calm_walk_left,
		up: spr_adult3_calm_walk_up,
		down: spr_adult3_calm_walk_down,
		ur: spr_adult3_calm_walk_right,
		ul: spr_adult3_calm_walk_left,
		dr: spr_adult3_calm_walk_right,
		dl: spr_adult3_calm_walk_left,
		idle: spr_adult3_calm_front
	},
	scared: {
		right: spr_adult3_scared_walk_right,
		left: spr_adult3_scared_walk_left,
		up: spr_adult3_scared_walk_up,
		down: spr_adult3_scared_walk_down,
		ur: spr_adult3_scared_walk_right,
		ul: spr_adult3_scared_walk_left,
		dr: spr_adult3_scared_walk_right,
		dl: spr_adult3_scared_walk_left,
		idle: spr_adult3_calm_front
	}
}

state = states.calm;

ai_state = ai_states.idle;


