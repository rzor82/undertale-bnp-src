day = (current_weekday == 2 || current_weekday == 4)
myinteract = 0
siner = 0
scr_depth()
if (scr_murderlv() >= 12 && room == room_fire_prelab)
{
    ff = instance_create(180, 60, obj_kitchenforcefield)
    with (ff)
        image_xscale = 3
    with (ff)
        image_yscale = 1
    instance_destroy()
    return;
}
d = 0
if (global.plot >= 136 && room == room_fire_prelab)
{
    instance_destroy()
    return;
}
if (global.flag[402] == 1)
{
    instance_destroy()
    return;
}
dbud = instance_create((x + 23), y, obj_npc_room)
if (day != 2 || day != 4)
    dbud.sprite_index = spr_royalguard_dragon_d
else
    dbud.sprite_index = spr_royalguard_bug_d
instance_create((x - 17), (y + 25), obj_solidexwide)
tt = 0
