if (global.encounter > steps && global.flag[172] != 1)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            script_execute(scr_steps, 140, 210, 20, 202)
            if (global.flag[6] == 1)
                script_execute(scr_steps, 120, 120, 20, 202)
            global.encounter = 0
            battlegroup = random(15)
            if (battlegroup <= 2)
                global.battlegroup = 18
            if (battlegroup > 2)
                global.battlegroup = 11
            if (battlegroup > 9)
                global.battlegroup = 13
            if (battlegroup == 14)
                global.battlegroup = 34
            if (global.flag[6] == 1)
            {
                battlegroup = random(21)
                if (battlegroup <= 4)
                    global.battlegroup = 128
                if (battlegroup > 4)
                    global.battlegroup = 129
                if (battlegroup > 8)
                    global.battlegroup = 130
                if (battlegroup > 12)
                    global.battlegroup = 121
                if (battlegroup > 16)
                    global.battlegroup = 124
                if (battlegroup > 19)
                    global.battlegroup = 132
                if (battlegroup == 20)
                    global.battlegroup = 34
            }
            if (alldead == 2)
            {
                global.flag[172] += 1
                global.battlegroup = 19
            }
            if (alldead == 1)
            {
                global.flag[221] = 1
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
