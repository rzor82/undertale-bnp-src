if (damageturn == 0)
{
    if (string_lower(global.charname) == "merg")
    {
        caster_free(-3)
        snd_play(snd_damage)
        instance_deactivate_all(false)
        instance_create(0, 0, obj_expander)
        instance_create(0, 0, obj_gameshake)
        return;
    }
    snd_stop(snd_hurt1)
    snd_play(snd_hurt1)
    global.hp -= 1
    damageturn = 1
}
