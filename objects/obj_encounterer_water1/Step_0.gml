if (global.encounter > steps && global.flag[172] != 3)
{
    if (global.phasing == 0)
    {
        if (global.interact == 0)
        {
            script_execute(scr_steps, 340, 380, 18, 204)
            if (room == room_water6)
                script_execute(scr_steps, 1040, 380, 18, 204)
            global.encounter = 0
            if (room == room_water_firepuzzle)
                global.battlegroup = 1
            else
            {
                battlegroup = floor(random(15))
                if (battlegroup < 15)
                    global.battlegroup = 43
                if (battlegroup < 11)
                    global.battlegroup = 53
                if (battlegroup < 7)
                    global.battlegroup = 40
                if (battlegroup < 4)
                    global.battlegroup = 54
                if (battlegroup == 14)
                    global.battlegroup = 34
                if (global.flag[357] == 0)
                    global.battlegroup = 40
                if (global.flag[357] == 1)
                    global.battlegroup = 43
                if (global.flag[357] == 2)
                    global.battlegroup = 53
                global.flag[357] += 1
            }
            if ((18 - global.flag[204]) == 2)
                global.battlegroup = choose(7, 40, 43, 42, 53, 54, 55)
            if ((18 - global.flag[204]) == 1)
                global.battlegroup = choose(7, 40, 43)
            if (alldead == 2)
            {
                global.flag[172] += 1
                global.battlegroup = 19
            }
            if (alldead == 1)
            {
                global.flag[223] = 1
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
