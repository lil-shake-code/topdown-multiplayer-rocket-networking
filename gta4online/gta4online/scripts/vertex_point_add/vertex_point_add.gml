// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vertex_point_add() 
{
/// @param vbuffer
/// @param xx
/// @param yy
/// @param zz
/// @param nx
/// @param ny
/// @param nz
/// @param utex
/// @param vtex
/// @param color
/// @param alpha

var vbuffer = argument0;
var xx = argument1;
var yy = argument2;
var zz = argument3;
var nx = argument4;
var ny = argument5;
var nz = argument6;
var utex = argument7;
var vtex = argument8;
var color = argument9;
var alpha = argument10;

// Collapse four function calls into a single one
vertex_position_3d(vbuffer, xx, yy, zz);
vertex_normal(vbuffer, nx, ny, nz);
vertex_texcoord(vbuffer, utex, vtex);
vertex_color(vbuffer, color, alpha);
}