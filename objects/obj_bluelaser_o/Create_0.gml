image_speed = 0.5
ex = 0
active = true
siner = 0
blue = 1
rememberhspeed = 0
event_user(1)
if (room == room_fire_newsreport)
{
    if (global.flag[372] == 1)
        active = 2
    if (global.plot > 160)
        active = 2
}
if (global.plot > 184)
    active = 2
if (global.flag[7] == 1)
    active = 2
activebuffer = 0
special = false
