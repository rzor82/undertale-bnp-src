event_user(0)
if (global.flag[7] == 1)
{
    instance_destroy()
    return;
}
played = 0
ok = 0
if (room == room_water_statue || room == room_water_prewaterfall || room == room_water_waterfall || room == room_water_waterfall2 || room == room_water_waterfall3 || room == room_water_waterfall4 || room == room_water_preundyne)
    ok = 1
if (global.flag[360] == 0 && ok == 1)
{
    global.flag[361] = 0.5
    global.flag[362] = 0
    if (room == room_water_statue || room == room_water_preundyne)
    {
        global.flag[361] = 0
        global.flag[362] = 0.5
    }
    global.flag[363] = caster_load("music/rain.ogg")
    global.flag[364] = caster_load("music/rain_deep.ogg")
    global.currentsong = -999
    caster_loop(global.flag[363], global.flag[361], 0.9)
    caster_loop(global.flag[364], global.flag[362], 0.9)
    global.flag[360] = 1
}
