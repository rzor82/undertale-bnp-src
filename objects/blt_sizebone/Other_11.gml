if (active == true)
{
    hit = 1
    if (blue == 1)
    {
        if (scr_blueat() == 0)
            hit = 0
    }
    if (global.invc < 1 && hit == 1)
    {
        global.invc = (global.inv * 3)
        if obj_battlecontroller.shield
        {
            obj_battlecontroller.shield = 0
            with (obj_heartshield)
                unshield = 1
            instance_destroy()
            return;
        }
        dmgamt = round((dmg - ((global.df + global.adef) / 5)))
        if (dmgamt < 3)
            dmgamt = 3
        if (global.hardmode == 0)
        {
            if instance_exists(obj_papyrusboss)
            {
                if (obj_papyrusboss.fighto > 13)
                {
                    if (global.hp < 10)
                        dmgamt -= 1
                    if (global.hp < 5)
                        dmgamt -= 1
                }
            }
        }
        global.hp -= dmgamt
        if (!instance_exists(obj_ripoff_papyrus))
        {
            if (global.hp > 0)
            {
                snd_play(snd_hurt1)
                global.hshake = 2
                global.shakespeed = 2
                global.vshake = 2
                instance_create(0, 0, obj_shaker)
                instance_destroy()
            }
            else if (captured == 0)
            {
                snd_play(snd_hurt1)
                global.hshake = 2
                global.shakespeed = 2
                global.vshake = 2
                instance_create(0, 0, obj_shaker)
                visible = false
                global.hp = 1
                captured = 1
                global.turntimer = 300
                with (obj_papyrusboss)
                    dontcancel = 1
                global.invc = 50
                hspeed = 0
                if instance_exists(blt_sizebone)
                {
                    blt_sizebone.active = 2
                    blt_sizebone.visible = false
                }
                if instance_exists(blt_topbone)
                {
                    blt_topbone.active = 2
                    blt_sizebone.visible = false
                }
                if instance_exists(obj_blueattackgen)
                {
                    with (obj_blueattackgen)
                        instance_destroy()
                }
                obj_heart.vspeed = 0
                alarm[2] = 2
            }
        }
        else
        {
            snd_play(snd_hurt1)
            global.hshake = 2
            global.shakespeed = 2
            global.vshake = 2
            instance_create(0, 0, obj_shaker)
            instance_destroy()
        }
    }
}
