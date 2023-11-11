script_execute(scr_depth, 0, 0, 0, 0, 0)
scr_npc_anim()
if (special && (!instance_exists(obj_dialoguer)))
{
    caster_pause(global.currentsong)
    snd_play(snd_floweylaugh)
    special = false
    unfade = 1
}
if (unfade && (!caster_is_playing(snd_floweylaugh)))
{
    caster_resume(global.currentsong)
    caster_set_volume(global.currentsong, 0)
    audio_sound_gain(global.currentsong, 1, 1)
    unfade = 0
}
