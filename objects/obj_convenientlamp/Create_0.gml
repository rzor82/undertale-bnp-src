myinteract = 0
image_xscale = 1
image_yscale = 1
if (room == room_tundra2 && global.flag[6] == 1)
    instance_destroy()
if (room == room_tundra_sanshouse && global.flag[6] == 0)
    instance_destroy()
