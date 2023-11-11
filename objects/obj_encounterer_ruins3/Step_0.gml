if (global.encounter > steps && global.flag[172] != 1)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            script_execute(scr_steps, 290, 100, 20, 202)
            if (global.flag[6] == 1)
                script_execute(scr_steps, 120, 60, 20, 202)
            global.encounter = 0
            battlegroup = irandom(20)
            if (battlegroup <= 5)
                global.battlegroup = 6
            if (battlegroup > 5)
                global.battlegroup = 7
            if (battlegroup > 10)
                global.battlegroup = 8
            if (battlegroup > 15)
                global.battlegroup = 9
            if (battlegroup > 18)
                global.battlegroup = 10
            if (battlegroup == 19)
                global.battlegroup = 34
            if (global.flag[6] == 1)
            {
                if (battlegroup <= 5)
                    global.battlegroup = 125
                if (battlegroup > 5)
                    global.battlegroup = 126
                if (battlegroup > 10)
                    global.battlegroup = 123
                if (battlegroup > 15)
                    global.battlegroup = 122
                if (battlegroup > 18)
                    global.battlegroup = 124
                if (battlegroup == 17)
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
