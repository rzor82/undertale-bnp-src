if keyboard_check_pressed(global.keybind[2])
{
    if (selected3 == 0)
        selected3 = 1
}
if keyboard_check_pressed(global.keybind[0])
{
    if (selected3 == 1)
        selected3 = 0
}
buffer += 1
if (control_check_pressed(0) && selected3 == 0)
{
    if (buffer > 20)
    {
        caster_stop(-3)
        room_goto_next()
    }
}
if (control_check_pressed(0) && selected3 == 1)
{
    if (buffer > 10)
        selected3 = 0
}
