image_speed = 0
xxx = 0
if (x <= obj_target.x)
    hspeed = (global.attackspeed + random(global.attackspeedr))
if (x > (obj_target.x + obj_target.sprite_width))
    hspeed = (-((global.attackspeed + random(global.attackspeedr))))
lock = 0
if (global.weapon == 14)
{
    hspeed *= 1.2
    punchtime = 0
    punches = 0
    maxpunchtime = 30
    maxpunches = 4
}
if (global.weapon == 47)
{
    hspeed *= 1.4
    punchtime = 0
    punches = 0
    maxpunchtime = 30
    maxpunches = 5
}
