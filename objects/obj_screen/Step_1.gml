if (global.inbattle == 0 && global.flag[18] == 0)
    script_execute(scr_begin)
if spec
{
    global.autotarget = 0
    if (room == room_battle && control_check_pressed(0))
    {
        if (drop < 1)
        {
            drop = irandom(7)
            control_clear(0)
        }
        else
            drop -= 1
    }
}
