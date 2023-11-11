dummy_skip = 0
callcon = 0
image_yscale = 400
if ((room == room_ruins5 && global.flag[38] == 1) || global.plot > 9.3 || (global.plot < 8.5 && room == room_ruins3))
    instance_destroy()
if (room == room_ruins5 && global.plot > 6.5)
    instance_destroy()
if (global.flag[128] == 1)
    instance_destroy()
