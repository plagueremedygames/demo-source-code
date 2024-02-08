/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017



//draw "fear" and "interest" texts
draw_sprite_stretched(spr_feartext, 0, fearbar_x-175, fearbar_y-16, 200, 82);
draw_sprite_stretched(spr_interesttext, 0, interestbar_x-225, interestbar_y-16, 200, 82);

//draw fear bar border and stretch center
draw_sprite_stretched(spr_fearmeter_inside,0,fearbar_x,fearbar_y,(fearlevel/maxFearLevel) * fearbar_width, fearbar_height);

//draw the ghostworld shift cooldown
draw_healthbar(fearbar_x, fearbar_y + 40, fearbar_x+fearbar_width, fearbar_y + 45, obj_character_player.ghostworld_cooldown_timer/3, 0, c_white, c_white, 0, false, false);

draw_sprite_stretched(spr_fearbar_border_new,0,fearbar_x-16,fearbar_y-16, fearbar_width+32, fearbar_height+32);

//draw interest bar border and stretch center
draw_sprite_stretched(spr_interestmeter_inside,0,interestbar_x,interestbar_y,(interestLevel/maxInterestLevel) * interestbar_width, interestbar_height);
draw_sprite_stretched(spr_fearbar_border_new,0,interestbar_x-16,interestbar_y-16, interestbar_width+32, interestbar_height+32);

