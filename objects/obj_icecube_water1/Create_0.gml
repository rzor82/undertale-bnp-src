image_speed = 0.1
if (room == room_water1)
    path_start(path_icecube_water1, 1.5, path_action_stop, 1)
if (global.flag[7] == 1)
    instance_destroy()
if (scr_murderlv() >= 7)
    instance_destroy()
