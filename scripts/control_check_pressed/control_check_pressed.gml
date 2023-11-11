if (argument0 == 0)
{
    if (keyboard_check_pressed(global.keybind[4]) || keyboard_check_pressed(global.keybind[5]))
        return 1;
}
if (argument0 == 1)
{
    if (keyboard_check_pressed(global.keybind[6]) || keyboard_check_pressed(global.keybind[7]))
        return 1;
}
if (argument0 == 2)
{
    if (keyboard_check_pressed(global.keybind[8]) || keyboard_check_pressed(global.keybind[9]))
        return 1;
}
if (argument0 == 3)
    return keyboard_check_pressed(global.keybind[11]);
if (global.osflavor >= 4)
    return global.control_pressed[argument0];
else if (obj_time.j_ch > 0)
    return global.control_pressed[argument0];
