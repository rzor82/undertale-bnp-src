caster_stop(expl)
caster_play(expl, 0.4, 2)
with (obj_vsflowey_shaker)
    instance_destroy()
shk = instance_create(0, 0, obj_vsflowey_shaker)
shk.special_intensity = 2
shk.intensity = 2
shk.shakex = 5
shk.shakey = 5
if (!window_get_fullscreen())
{
    shk.special = true
    shk.myx = window_get_x()
    shk.myy = window_get_y()
}
