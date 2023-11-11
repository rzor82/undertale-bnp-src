var dir = argument0
var val = argument1
if global.__argument_relative
{
    dir += gravity_direction
    val += gravity
}
gravity = val
gravity_direction = dir
