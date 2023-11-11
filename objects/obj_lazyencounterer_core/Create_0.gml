cl = 0
if (global.flag[8] == 1 || global.flag[7] == 1 || global.flag[172] == 4 || (global.flag[6] == 0 && scr_murderlv() < 9) || scr_enemynpc3() == 1 || (global.flag[423] > 1 && room != room_fire_core_bridge))
    instance_destroy()
