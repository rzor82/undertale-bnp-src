with (col2)
    instance_destroy()
with (obj_blockbullet)
    down = 1
if (global.invc < 1)
{
    with (obj_undyneboss)
    {
        if (!obj_battlecontroller.shield)
        {
            if (order == 2 && hitno == 0 && hitfirst < 3)
                caster_set_pitch(global.batmusic, (audio_sound_get_pitch(global.batmusic) + 0.05))
            hitno += 1
        }
    }
}
with (obj_undyne_ex)
    hitno += 1
scr_damagestandard(0, 0, 0, 0, 0)
