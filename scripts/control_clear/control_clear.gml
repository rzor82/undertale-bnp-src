global.control_pressed[argument0] = 0
if (argument0 == 0)
{
    keyboard_clear(ord("Z"))
    keyboard_clear(vk_return)
}
else if (argument0 == 1)
{
    keyboard_clear(vk_lshift)
    keyboard_clear(vk_rshift)
    keyboard_clear(vk_shift)
    keyboard_clear(ord("X"))
}
else if (argument0 == 2)
{
    keyboard_clear(vk_control)
    keyboard_clear(ord("C"))
}
else if (argument0 == 3)
    keyboard_clear(vk_escape)
