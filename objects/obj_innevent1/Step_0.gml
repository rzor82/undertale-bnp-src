global.interact = 1
if (fadein == 1 && vol < 0.9)
{
    vol += 0.01
    caster_set_volume(specialsong, vol)
}
if (fadein == 2 && vol > 0)
{
    vol -= 0.02
    caster_set_volume(specialsong, vol)
    if (vol < 0.02)
    {
        alarm[2] = 10
        vol = 0
    }
}
if (control_check_pressed(0) && vol > 0.6)
    fadein = 2
if (scr_murderlv() < 1)
{
    obj_mainchara.cutscene = true
    obj_mainchara.dsprite = spr_mainchara_bedlaydown
    obj_mainchara.usprite = spr_mainchara_bedlaydown
    obj_mainchara.lsprite = spr_mainchara_bedlaydown
    obj_mainchara.rsprite = spr_mainchara_bedlaydown
}
