image_speed = 0
lock = 0
xxx = 0
if (x <= obj_target.x)
    hspeed = (global.attackspeed + random(global.attackspeedr))
if (x > (obj_target.x + obj_target.sprite_width))
    hspeed = (-((global.attackspeed + random(global.attackspeedr))))
if (global.weapon == 13)
    hspeed *= 1.25
global.dontdospecial = 0
