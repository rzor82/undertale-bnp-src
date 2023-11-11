if (deactive == 0)
{
    if (global.invc < 1)
    {
        global.turntimer = 99999
        global.goldreward[3] += 1
        global.mnfight = 999
        global.border = 3
        snd_play(snd_buyitem)
        with (blt_tb_gold)
            deactive = 1
        with (obj_tb_gold_gen)
            active = false
        with (obj_troubleboy_hitch)
            gotgold = 1
        instance_destroy()
    }
}
