if (global.encounter > steps && global.flag[172] != 2)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            script_execute(scr_steps, 840, 680, 16, 203)
            global.encounter = 0
            battlegroup = round(random(15))
            if (battlegroup >= 0)
                global.battlegroup = 35
            if (battlegroup > 8)
                global.battlegroup = 36
            if (battlegroup == 14)
                global.battlegroup = 34
            if ((16 - global.flag[203]) == 2)
                global.battlegroup = choose(30, 31, 32, 33, 34, 35, 39)
            if ((16 - global.flag[203]) == 1)
                global.battlegroup = choose(30, 32, 34)
            if (global.flag[70] < 3)
            {
                global.battlegroup = 24
                global.flag[70] = 4
            }
            if (alldead == 2)
            {
                global.flag[172] += 1
                global.battlegroup = 19
            }
            if (alldead == 1)
            {
                global.flag[222] = 1
                global.battlegroup = 19
                alldead = 2
            }
            else
                instance_create(0, 0, obj_battleblcon)
        }
    }
    else
        steps = 0
}
