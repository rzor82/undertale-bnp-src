con = 0
myinteract = 0
dt = scr_marker(175, 0, spr_dt_machine)
dt.depth = 1000
image_speed = 0.2
wall = -4
scr_depth()
if (global.flag[489] > 0)
    instance_destroy()
else
    wall = instance_create(x, y, obj_solidsmall)
