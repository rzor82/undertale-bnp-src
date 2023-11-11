if (touched == false && global.interact == 0 && global.phasing == 0)
{
    global.flag[388] = 1
    touched = true
    alarm[0] = 1
    obj_mainchara.hspeed = 0
    obj_mainchara.vspeed = 0
    obj_mainchara.visible = true
    snd_stop(snd_ice_slide)
}
