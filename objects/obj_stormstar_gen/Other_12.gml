caster_play(expl, 0.8, 1.1)
off = 1
vol = 0.8
with (obj_vsflowey_shaker)
    instance_destroy()
if window_get_fullscreen()
{
    if (!instance_exists(obj_shaker))
        scr_shake(7, 7, 2)
}
else
{
    shk = instance_create(0, 0, obj_vsflowey_shaker)
    shk.shakex = 20
    shk.shakey = 20
    shk.special = 3
    shk.intensity = 2
    shk.special_intensity = 2
    shk.myx = window_get_x()
    shk.myy = window_get_y()
}
