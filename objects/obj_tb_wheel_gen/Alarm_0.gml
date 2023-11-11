if (diff == 0)
    alarm[0] = irandom_range(12, 14)
else
    alarm[0] = irandom_range(8, 11)
if (dir == 1)
{
    bb = instance_create((room_width - irandom_range(10, 25)), 0, blt_tb_bounce_wheel)
    bb.dmg = dmg
    bb.mydir = -1
    bb.hspeed = irandom_range(-4, -8)
}
else
{
    bb = instance_create(irandom_range(-10, -25), 0, blt_tb_bounce_wheel)
    bb.dmg = dmg
    bb.mydir = 1
    bb.hspeed = irandom_range(4, 8)
}
