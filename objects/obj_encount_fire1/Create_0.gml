if (global.flag[8] == 1 || global.flag[7] == 1 || global.flag[172] == 4)
    instance_destroy()
alldead = 0
global.encounter = 0
factor = 220
desto = 0
if (room == room_fire5 && global.flag[408] < 1)
    factor = 80
if (room == room_fire6 && global.flag[408] < 2)
    factor = 120
if (room == room_fire_walkandbranch && global.flag[408] < 3)
    factor = 80
if (room == room_fire_preshootguy4 && global.flag[408] < 4)
    factor = 20
script_execute(scr_steps, factor, 30, 40, 205)
if (scr_enemynpc3() == 1)
    instance_destroy()
if (room == room_fire_preshootguy4 && global.flag[400] != 0)
    instance_destroy()
chance = 0
