offroom = 0
myinteract = 4
global.msc = 15
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (global.hp < global.maxhp)
    global.hp = global.maxhp
global.msg[0] = "* (The power of error messages&  in your video games...)/"
global.msg[1] = "* (It fills you&  with determination.)/%%"
snd_play(snd_power)
if (room == room_castle_front)
    offroom = 1
if (room == room_castle_throneroom)
    offroom = 1
if (room == room_castle_finalshoehorn)
    offroom = 1
if (room == room_castle_prebarrier)
    offroom = 1
if (room == room_sanscorridor)
    offroom = 1
if (room == room_castle_elevatorout)
    offroom = 1
if (room == room_truelab_hub)
    offroom = 1
if (room == room_truelab_bedroom)
    offroom = 1
if (scr_murderlv() > 0 && global.plot < 36)
    global.msg[0] = scr_gettext("obj_savepoint_101")
var roomname = room_get_name(room)
if (string_pos("tundra", roomname) != 0)
{
    snowdined = 1
    waterfalled = 0
    hotlanded = 0
}
else if (string_pos("water", roomname) != 0)
{
    snowdined = 0
    waterfalled = 1
    hotlanded = 0
}
else if (string_pos("fire", roomname) != 0)
{
    snowdined = 0
    waterfalled = 0
    hotlanded = 1
}
if (scr_murderlv() >= 2 && global.flag[27] == 0)
{
    if (snowdined == 1)
    {
        if (global.flag[27] == 0)
        {
            global.msc = 0
            pop = (16 - global.flag[203])
            if (pop < 0)
                pop = 0
            if (scr_murderlv() >= 2)
                global.msg[0] = scr_gettext("obj_savepoint_97", string(pop))
            if (scr_murderlv() == 5)
                global.msg[0] = scr_gettext("obj_savepoint_99")
            if (global.flag[57] == 2 && pop <= 0)
                global.msg[0] = scr_gettext("obj_savepoint_101")
            if (pop <= 0 && global.flag[57] != 2)
                global.msg[0] = scr_gettext("obj_savepoint_103")
        }
    }
}
if (scr_murderlv() >= 8 && global.flag[27] == 0)
{
    if (waterfalled == 1)
    {
        if (global.flag[27] == 0)
        {
            global.msc = 0
            pop = (18 - global.flag[204])
            if (pop < 0)
                pop = 0
            if (scr_murderlv() >= 8)
                global.msg[0] = scr_gettext("obj_savepoint_118", string(pop))
            if (pop <= 0)
                global.msg[0] = scr_gettext("obj_savepoint_120")
        }
    }
}
if (scr_murderlv() >= 12 && global.flag[27] == 0)
{
    if (hotlanded == 1)
    {
        if (global.flag[27] == 0)
        {
            global.msc = 0
            pop = (40 - global.flag[205])
            if (pop < 0)
                pop = 0
            if (scr_murderlv() >= 12)
                global.msg[0] = scr_gettext("obj_savepoint_135", string(pop))
            if (pop <= 0)
                global.msg[0] = scr_gettext("obj_savepoint_137")
        }
    }
}
if (scr_murderlv() >= 16)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_savepoint_145")
}
if (offroom == 0)
    mydialoguer = instance_create(0, 0, obj_dialoguer)
