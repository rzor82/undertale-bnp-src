if (global.encounter > steps && global.flag[172] != 4)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            script_execute(scr_steps, 340, 380, 40, 205)
            if (room == room_fire5)
                script_execute(scr_steps, 1040, 680, 40, 205)
            global.encounter = 0
            battlegroup = floor(random(15))
            if (battlegroup < 15)
                global.battlegroup = 50
            if (battlegroup < 10)
            {
                chance = irandom(10)
                if (chance == 3 || chance == 5)
                    global.battlegroup = 151
                else if (chance == 7)
                    global.battlegroup = 78
                else
                    global.battlegroup = 79
            }
            if (battlegroup < 6)
                global.battlegroup = 77
            if (battlegroup == 14)
                global.battlegroup = 34
            if (global.flag[8] == 1 || global.flag[7] == 1)
                instance_destroy()
            if (global.flag[408] == 0)
                global.battlegroup = 51
            if (global.flag[408] == 1)
                global.battlegroup = choose(50, 150)
            if (global.flag[408] == 2)
                global.battlegroup = 52
            if (global.flag[408] == 3)
                global.battlegroup = 77
            if (global.flag[408] == 4)
                global.battlegroup = 78
            if ((40 - global.flag[205]) == 2)
                global.battlegroup = choose(50, 51, 52, 77, 78, 79, 150, 151)
            if ((40 - global.flag[205]) == 1)
                global.battlegroup = choose(50, 51, 52)
            global.flag[408] += 1
            if (alldead == 2)
            {
                global.flag[172] += 1
                global.battlegroup = 19
            }
            if (alldead == 1)
            {
                global.flag[224] = 1
                global.battlegroup = 19
                alldead = 2
            }
            else
            {
                instance_create(0, 0, obj_battleblcon)
                if (desto == 1)
                    instance_destroy()
            }
        }
    }
    else
        steps = 0
}
