siner = 0
timer = 0
f_l = 0
f_d = 0
hostile = 0
active = true
if (room == room_fire_boysnightout)
{
    if (x > 100)
    {
        if (global.plot > 175)
            active = false
        hostile = 1
    }
}
