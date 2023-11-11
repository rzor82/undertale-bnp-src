if (global.interact == 0)
{
    global.battlegroup = 3
    if (global.flag[38] == 1)
        global.battlegroup = 4
    instance_create(0, 0, obj_battleblcon)
    global.flag[30] = 1
    instance_destroy()
}
