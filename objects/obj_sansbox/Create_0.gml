myinteract = 0
image_xscale = 1
image_yscale = 1
if (room >= room_fire3 && scr_murderlv() < 11 && scr_havebox() == 1)
    instance_destroy()
if (room == room_castle_front && scr_murderlv() < 16)
    instance_destroy()
if (room == room_sanscorridor && scr_murderlv() < 16)
    instance_destroy()
if (room == room_fire_hotellobby && scr_murderlv() < 12 && scr_havebox() == 1)
    instance_destroy()
if (room == room_water19)
{
    if (scr_murderlv() < 11 || global.flag[27] == 1 || global.plot > 119)
        instance_destroy()
}
