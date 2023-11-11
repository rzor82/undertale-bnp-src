if (d == 0)
    scr_depth()
if (fun == false)
{
    m[0] = spr_mettaton_talk
    m[1] = spr_mettaton_wave
    m[2] = spr_mettaton_holdarm
    m[3] = spr_mettaton_clap
    m[4] = spr_mettaton_pointingup
    m[5] = spr_mettaton_cackle
    m[6] = spr_mettaton_silent
    m[7] = spr_mettaton_silent_behind
    m[8] = spr_mettaton_fingerwag
    m[9] = spr_mettaton_questionshrug
    if (global.flag[20] < 10)
        sprite_index = m[global.flag[20]]
}
