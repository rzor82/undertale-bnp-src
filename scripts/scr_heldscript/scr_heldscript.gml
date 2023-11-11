doit = 0
if keyboard_check_pressed(global.keybind[argument0])
{
    doit = 1
    frames_held[argument0] = 0
}
if (keyboard_check(global.keybind[argument0]) && frames_held[argument0] >= waittime)
{
    if (frames_held[argument0] >= speedy)
    {
        if ((frames_held[argument0] % 2) == 0)
            doit = 1
    }
    else if ((frames_held[argument0] % 3) == 0)
        doit = 1
}
if keyboard_check(global.keybind[argument0])
    frames_held[argument0]++
else
    frames_held[argument0] = 0
