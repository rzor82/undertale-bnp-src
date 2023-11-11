selected3 = 0
saved = 0
buffer = 0
exit_buffer = 0
gsprite = 1157
gdraw = 0
var flasherroomname = room_get_name(room)
if (string_pos("core", flasherroomname) != 0 && string_pos("precore", flasherroomname) == 0)
{
    with (instance_create(0, 0, obj_alarmflasher))
    {
        if (scr_murderlv() < 12)
        {
            instance_destroy()
            return;
        }
        else
            active = true
    }
}
if (room == room_truelab_hub || global.flag[493] >= 12)
    global.flag[477] = 1
if (global.flag[477] == 0)
{
    i = 481
    while (i < 493)
    {
        if (global.flag[i] > 0)
        {
            global.flag[477] = 1
            break
        }
        else
        {
            i++
            continue
        }
    }
}
menusurf = -1
global.menusurfx = -320
global.menusurfy = 0
global.menuoutx = -320
global.menuouty = 0
SCR_BORDERSETUP()
arrowdraw = 0
