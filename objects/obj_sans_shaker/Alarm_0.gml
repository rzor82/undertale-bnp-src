__view_set(0, 0, (myx + (choose(-1, 1) * intensity)))
__view_set(1, 0, (myy + (choose(1, -1) * intensity)))
intensity -= 1
if (intensity == 0)
{
    __view_set(0, 0, myx)
    __view_set(1, 0, myy)
    instance_destroy()
}
alarm[0] = 1
