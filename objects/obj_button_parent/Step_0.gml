/// @description Insert description here
// You can write your code in this editor

hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left))
{
	clicked = true;
}

if (mouse_check_button_released(mb_left))

{
	clicked = false;
	
	if (hovering)
	{
		audio_play_sound(snd_button_click, 1, false);
		activate_button();
	}
	
}

if (clicked)

{
	image_index = 2;
}

else if (hovering && sound_has_played == false)

{
	image_index = 1;
	audio_play_sound(snd_button_hover, 1, false);
	sound_has_played = true;
	exit_sound_has_played = false;
}

else if (hovering) 
{
	image_index = 1;
}

else if (!hovering && exit_sound_has_played == false)
{
	audio_play_sound(snd_button_hover, 1, false);
	exit_sound_has_played = true;
	sound_has_played = false;
	image_index = 0;
}

else
{
	image_index = 0;
}