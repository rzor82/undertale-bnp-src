if (ok == 0 && global.flag[360] == 1)
{
    global.flag[361] -= 0.02
    global.flag[362] -= 0.02
    if (global.flag[361] < 0)
        global.flag[361] = 0
    if (global.flag[362] < 0)
        global.flag[362] = 0
    caster_set_volume(global.flag[363], global.flag[361])
    caster_set_volume(global.flag[364], global.flag[362])
    if (global.flag[361] < 0.1 && global.flag[362] < 0.1)
    {
        global.flag[360] = 0
        caster_free(global.flag[363])
        caster_free(global.flag[364])
        global.flag[363] = -1
        global.flag[364] = -1
        instance_destroy()
    }
}
if ((global.flag[360] == 1 && room == room_water_prewaterfall) || room == room_water_waterfall3 || room == room_water_statue || room == room_water_preundyne)
{
    if (global.flag[361] > 0.08)
        global.flag[361] -= 0.02
    if (global.flag[362] < 0.5)
        global.flag[362] += 0.02
    caster_set_volume(global.flag[363], global.flag[361])
    caster_set_volume(global.flag[364], global.flag[362])
}
if ((global.flag[360] == 1 && room == room_water_waterfall) || room == room_water_waterfall2 || room == room_water_waterfall4)
{
    if (global.flag[362] > 0.02)
        global.flag[362] -= 0.02
    if (global.flag[361] < 0.5)
        global.flag[361] += 0.02
    caster_set_volume(global.flag[363], global.flag[361])
    caster_set_volume(global.flag[364], global.flag[362])
}
