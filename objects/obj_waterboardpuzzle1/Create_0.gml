waterboard = 0
resetting = 0
failed = 0
won = 0
wondraw = 0
solveditforreal = 0
failcon = 0
spritech = choose(0, 1)
if (scr_murderlv() >= 8 && global.flag[27] == 0)
{
    if (global.plot < 107)
        global.plot = 107
    if (global.flag[386] == 0)
        global.flag[386] = 1
}
if (room == room_water5 && global.entrance == 2)
{
    xx = 420
    yy = 400
    i = 0
    repeat (4)
    {
        event_user(0)
        xx += 20
    }
}
if (room == room_water5)
{
    if (scr_murderlv() >= 8 || global.plot > 106 || global.entrance == 24)
    {
        xx = 240
        yy = 100
        i = 0
        repeat (4)
        {
            event_user(0)
            yy += 20
        }
    }
}
if (room == room_water11 && global.flag[354] > 0)
{
    xx = 300
    yy = 200
    i = 0
    repeat (4)
    {
        event_user(0)
        yy += 20
    }
}
if (room == room_water13)
{
    if (global.plot > 110 || global.entrance == 2 || global.flag[101] == 1)
    {
        xx = 180
        yy = 440
        i = 0
        repeat (4)
        {
            event_user(0)
            xx += 20
        }
    }
}
if (room == room_water_bridgepuzz1 && global.flag[386] == 1)
{
    xx = 280
    yy = 140
    i = 0
    repeat (4)
    {
        event_user(0)
        xx += 20
    }
}
if (global.flag[84] == 2)
    global.flag[84] = 3
