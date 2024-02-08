/*global.res = 
{
	width: 1920,
	height: 1080,
	scale: 1
}

var _width = global.res.width * global.res.scale;
var _height = global.res.width * global.res.scale;

//set resolution
surface_resize(application_surface, _width, _height);

//window
window_set_size(_width, _height);

display_set_gui_size(_width, _height);

var _displayWidth = display_get_width();
var _displayHeight = display_get_width();

window_set_position(
	_displayWidth/2 - _width/2,
	_displayHeight/2 - _height/2
);