if instance_exists(obj_purpleheart)
{
    op = obj_purpleheart
    y = ((op.yzero - (op.yspace * 2)) + op.yoff)
    fakey = y
    xfactor = (floor(random((op.xlen / 10))) * 22)
    x = ((op.xmid - op.xlen) + xfactor)
    off = 1
    fakeyamt = 0
    fakeyoff = 0
    move = 1
    alarm[0] = 2
}
else
    instance_destroy()
