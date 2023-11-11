sidedam = instance_create(0, 0, obj_torsidedam)
if ((obj_heart.x + 6) < 320)
    sidedam.side = 0
else
    sidedam.side = 1
sidedam.len = 55
sidedam.wait = 40
alarm[1] = 60
sidedam.dmg = dmg
