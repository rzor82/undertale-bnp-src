myinteract = 0
image_xscale = 1
image_yscale = 1
if (room == room_ruins_sewer_trouble)
{
    sprite_index = spr_homekey
    if (global.flag[116] != 0 || global.flag[7] == 1)
        instance_destroy()
}
if (room == room_kitchen_final)
{
    if (global.flag[452] == 1)
        instance_destroy()
}
if (room == room_asghouse3)
{
    if (global.flag[453] == 1)
        instance_destroy()
}
con = 0
