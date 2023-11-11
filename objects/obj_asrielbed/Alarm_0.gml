snd_play(snd_noise)
global.phasing = 1
obj_solidsmall.solid = 0
with (obj_mainchara)
{
    path_start(path_bedjump, 3, path_action_stop, 0)
    cutscene = true
    if (scr_murderlv() < 1)
    {
        rsprite = spr_mainchara_bedlaydown
        lsprite = spr_mainchara_bedlaydown
    }
    else
        global.facing = 3
}
jump = 1
global.interact = 1
