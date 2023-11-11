global.interact = 3
instance_create(0, 0, obj_unfader)
ok = 1
if (runawaytype == 1)
{
    snd_play(snd_escaped)
    runawaytype = 0
}
if (room == room_fire1 && instance_exists(obj_undynea_chaser) == 1)
    ok = 0
if (global.flag[7] == 0)
{
    if (ok == 1)
        instance_create(0, 0, obj_musfadeout)
    if (obj_musfadeout.volume == 0)
    {
        caster_stop(global.currentsong)
        caster_free(global.currentsong)
        caster_stop(global.currentsong2)
        caster_free(global.currentsong2)
    }
}
if (touched == false)
{
    alarm[2] = 13
    touched = true
}
