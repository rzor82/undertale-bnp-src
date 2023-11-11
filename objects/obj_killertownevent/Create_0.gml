if (scr_murderlv() < 7 || global.plot > 98)
{
    with (obj_fearundynenpc1)
        instance_destroy()
    with (obj_fearundynenpc2)
        instance_destroy()
    instance_destroy()
    return;
}
with (obj_fearundynenpc1)
    image_blend = c_black
with (obj_fearundynenpc2)
    image_blend = c_black
image_yscale = 30
flee_timer = 20
con = 0
