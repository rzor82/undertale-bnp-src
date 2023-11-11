myinteract = 0
con = 0
heartx = 0
hearty = 0
trigger = 0
dirdir = 0
ourx = 0
oury = 0
rectaur = 0
rect = 0
obj_mainchara.cutscene = true
if (room == room_truelab_elevatorinside || room == room_truelab_castle_elevator)
{
    fake = scr_marker(x, y, sprite_index)
    fake.depth = depth
    instance_destroy()
}
else if (room == room_fire_finalelevator && global.flag[492] == 0)
{
    with (obj_speedrun_tracker)
        alphys = 1
}
var theroomname = room_get_name(room)
if (string_pos("core", theroomname) != 0)
    sprite_index = spr_elevatorpanel_core
if (string_pos("lab", theroomname) != 0)
    sprite_index = spr_elevatorpanel_lab
