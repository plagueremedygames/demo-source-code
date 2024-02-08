/// @description Insert description here
// You can write your code in this editor
///@feather ignore GM2017

//create a grid
grid = mp_grid_create(0, 0, room_width/10 + 500, room_height/10 + 500, 50, 50);

mp_grid_add_instances(grid, obj_mp_grid_boundary, 0);
