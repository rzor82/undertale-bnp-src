image_angle = irandom(360)
image_xscale = 3
image_yscale = 3
image_speed = 0
boss = obj_mirrorb.id
depth = (obj_heart.depth - 1000)
destx = (boss.x + (boss.sprite_width / 2))
desty = (boss.y + (boss.sprite_height / 2))
if (x > boss.x)
    hspeed = irandom_range(-3, 10)
else
    hspeed = irandom_range(-10, 3)
vspeed = irandom_range(-5, 5)
shieldamt = 3
gravity = 1
cap = 0
