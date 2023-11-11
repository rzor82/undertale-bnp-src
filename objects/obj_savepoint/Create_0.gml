myinteract = 0
image_xscale = 1
image_yscale = 1
image_speed = 0.3
boxmake = 1
var theroomname = room_get_name(room)
if (string_pos("fire", theroomname) != 0)
{
    if (boxmake == 1)
    {
        if (scr_havebox() == 0)
        {
            instance_create((x + 25), y, obj_sansbox)
            x -= 25
        }
    }
}
if (global.flag[493] >= 12 && global.flag[7] == 0)
{
    if (room == room_castle_front || room == room_castle_finalshoehorn || room == room_sanscorridor || room == room_castle_elevatorout || room == room_castle_throneroom)
    {
        instance_destroy()
        return;
    }
}
if (room == room_water19)
{
    if (scr_murderlv() < 11 || global.flag[27] == 1 || global.plot > 119)
        instance_destroy()
}
if (room == room_fire6 && scr_havebox() == 1)
    x -= 25
if (room == room_fire_savepoint1 && scr_havebox() == 1)
    x -= 5
if (room == room_fire_core_branch && scr_havebox() == 1)
{
    x = 140
    y = 110
}
snowdined = 1
waterfalled = 1
hotlanded = 1
animanim = 0
siner = 0
tt = 0
appear = 0
