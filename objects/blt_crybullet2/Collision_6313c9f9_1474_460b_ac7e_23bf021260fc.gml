dmgsound = caster_play(snd_damage, 1, 1)
caster_set_volume(dmgsound, 0.5, 0)
with (obj_maddummy)
    event_user(3)
if (obj_maddum_drawer.alarm[5] < 2)
{
    with (obj_maddum_drawer)
        event_user(2)
}
instance_destroy()
