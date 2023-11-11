if (argument0 == 0)
{
    if (keyboard_check(global.keybind[4]) || keyboard_check(global.keybind[5]))
        return 1;
}
if (argument0 == 1)
{
    if (keyboard_check(global.keybind[6]) || keyboard_check(global.keybind[7]))
        return 1;
}
if (argument0 == 2)
{
    if (keyboard_check(global.keybind[8]) || keyboard_check(global.keybind[9]))
        return 1;
}
if (argument0 == 3)
{
    if keyboard_check(global.keybind[11])
        return 1;
}
if (global.osflavor >= 4)
    return global.control_state[argument0];
else if (obj_time.j_ch > 0)
    return global.control_state[argument0];
