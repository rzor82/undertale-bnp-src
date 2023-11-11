siner = 0
index = 0
do_blend = 0
rect_draw = 0
global.flag[15] = 0
event_user(0)
murder = scr_murderlv() >= 12
if (global.flag[7] == 1)
    return;
if (caster_is_playing(global.currentsong) != 1)
{
    if murder
        global.currentsong = snd_coretransition_geno
    else
        global.currentsong = mus_coretransition
    caster_loop(global.currentsong, 1, 1)
}
