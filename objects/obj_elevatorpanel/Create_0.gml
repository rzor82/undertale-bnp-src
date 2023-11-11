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
if (global.plot > 160)
    trigger = 1
if (global.plot > 167)
    trigger = 2
var theroomname = room_get_name(room)
if (string_pos("core", theroomname) != 0)
    sprite_index = spr_elevatorpanel_core
if (string_pos("lab", theroomname) != 0)
    sprite_index = spr_elevatorpanel_lab
