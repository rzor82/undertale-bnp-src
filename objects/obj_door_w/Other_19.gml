if (room == ROOM_MONITOR)
    global.interact = 3
instance_create(0, 0, obj_unfader)
global.interact = 3
instance_create(0, 0, obj_unfader)
if (global.flag[7] == 0)
    instance_create(0, 0, obj_musfadeout)
if (touched == false)
    alarm[2] = 14
touched = true
