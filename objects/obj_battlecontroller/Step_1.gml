for (var i = 0; i < 3; i++)
{
    if global.monster[i]
    {
        with (global.monsterinstance[i])
        {
            if (!(variable_instance_exists(id, "shiny")))
            {
                shiny = string_pos("_shiny", sprite_get_name(sprite_index)) > 0
                if shiny
                {
                    with (instance_create(x, y, obj_shinyanim))
                    {
                        if variable_instance_exists(other.id, "mypart1")
                            depth = (other.mypart1.depth - 1)
                        else if variable_instance_exists(other.id, "mypart")
                            depth = (other.mypart.depth - 1)
                        else
                            depth = (other.depth - 1)
                        x = round((other.x - ((sprite_width - other.sprite_width) / 2)))
                        y = round((other.y - ((sprite_height - other.sprite_height) / 2)))
                    }
                }
            }
        }
    }
}
if (control_check(0) == 1)
    event_user(0)
if (keyboard_check_pressed(global.keybind[0]) && keyboard_check_pressed(global.keybind[2]) == 0)
{
    if (global.mnfight == 0)
    {
        if (global.bmenuno == 0)
        {
            var oldcoord = global.bmenucoord[0]
            if (global.item[0] == 0 && global.bmenucoord[0] == 3)
                global.bmenucoord[0] = 2
            global.bmenucoord[0] -= 1
            if (global.bmenucoord[0] < 0)
                global.bmenucoord[0] = 3
            if (global.mercy == 2 && global.bmenucoord[0] == 3)
                global.bmenucoord[0] = 2
            if (global.mercy == 3)
                global.bmenucoord[0] = 1
            if (global.bmenucoord[0] != oldcoord)
                snd_play(snd_squeak)
        }
        if (global.myfight != 4)
        {
            if global.newmenu
            {
            }
            else
            {
                var mv = 0
                if (global.bmenuno == 3)
                {
                    var tempcheck = global.bmenuno
                    if (global.bmenucoord[3] == 1)
                    {
                        global.bmenucoord[3] = 0
                        mv = 1
                    }
                    if (mv == 0)
                    {
                        if (global.bmenucoord[3] == 0)
                        {
                            if (global.item[5] != 0)
                            {
                                global.bmenucoord[3] = 1
                                global.bmenuno = 3.5
                                mv = 1
                            }
                            else if (global.item[4] != 0)
                            {
                                global.bmenucoord[3] = 0
                                global.bmenuno = 3.5
                                mv = 1
                            }
                            else if (global.item[1] != 0)
                            {
                                global.bmenucoord[3] = 1
                                mv = 1
                            }
                        }
                    }
                    if (mv == 0)
                    {
                        if (global.bmenucoord[3] == 3)
                        {
                            global.bmenucoord[3] = 2
                            mv = 1
                        }
                    }
                    if (mv == 0)
                    {
                        if (global.bmenucoord[3] == 2)
                        {
                            if (global.item[7] != 0)
                            {
                                global.bmenucoord[3] = 3
                                global.bmenuno = 3.5
                                mv = 1
                            }
                            else if (global.item[6] != 0)
                            {
                                global.bmenucoord[3] = 2
                                global.bmenuno = 3.5
                                mv = 1
                            }
                            else if (global.item[3] != 0)
                            {
                                global.bmenucoord[3] = 3
                                mv = 1
                            }
                        }
                    }
                    if (mv != 0)
                        snd_play(snd_squeak)
                    if (global.bmenuno != tempcheck)
                        script_execute(scr_itemrewrite)
                }
                if (mv == 0)
                {
                    if (global.bmenuno == 3.5)
                    {
                        tempcheck = global.bmenuno
                        if (global.bmenucoord[3] == 1)
                        {
                            global.bmenucoord[3] = 0
                            mv = 1
                        }
                        if (mv == 0)
                        {
                            if (global.bmenucoord[3] == 0)
                            {
                                mv = 1
                                global.bmenuno = 3
                                global.bmenucoord[3] = 1
                            }
                        }
                        if (mv == 0)
                        {
                            if (global.bmenucoord[3] == 3)
                            {
                                global.bmenucoord[3] = 2
                                mv = 1
                            }
                        }
                        if (mv == 0)
                        {
                            if (global.bmenucoord[3] == 2)
                            {
                                mv = 1
                                global.bmenuno = 3
                                global.bmenucoord[3] = 3
                            }
                        }
                        if (mv == 1)
                            snd_play(snd_squeak)
                        if (global.bmenuno != tempcheck)
                            script_execute(scr_itemrewrite)
                    }
                }
            }
        }
        if (global.bmenuno == 10 || global.bmenuno == 12)
        {
            oldcoord = global.bmenucoord[2]
            if (global.bmenucoord[2] <= 2)
                global.bmenucoord[2] += 3
            else
                global.bmenucoord[2] -= 3
            if (global.choices[global.bmenucoord[2]] == 0)
                global.bmenucoord[2] -= 1
            if (global.choices[0] == 1 && global.choices[1] == 0 && global.choices[2] == 0 && global.choices[3] == 0 && global.choices[4] == 0 && global.choices[5] == 0)
                global.bmenucoord[2] = 0
            if (global.bmenucoord[2] != oldcoord)
                snd_play(snd_squeak)
        }
        if (global.bmenuno == 6)
        {
            if (global.bmenucoord[6] == 0)
                global.bmenucoord[6] += 1
            else
                global.bmenucoord[6] -= 1
            snd_play(snd_squeak)
        }
        if (global.bmenuno == 51)
        {
            if (global.bmenucoord[51] == 0)
                global.bmenucoord[51] += 1
            else
                global.bmenucoord[51] -= 1
            snd_play(snd_squeak)
        }
    }
}
if (keyboard_check_pressed(global.keybind[1]) && keyboard_check_pressed(global.keybind[3]) == 0)
{
    if (global.mnfight == 0)
    {
        if (global.bmenuno == 1 || global.bmenuno == 2 || global.bmenuno == 11 || global.bmenuno == 5 || global.bmenuno == 7)
        {
            oldcoord = global.bmenucoord[1]
            if (global.msc == 0)
            {
                if (global.bmenucoord[1] == 1)
                    global.bmenucoord[1]--
                else
                    global.bmenucoord[1] = 1
            }
            else
            {
                global.bmenucoord[1] -= 1
                if (global.bmenucoord[1] < 0)
                    global.bmenucoord[1] = 2
                if (global.monster[0] == false && global.monster[2] == false)
                    global.bmenucoord[1] = 1
                if (global.bmenucoord[1] == 2 && (global.monster[2] == false || global.msc == 0))
                    global.bmenucoord[1] = 1
                if (global.bmenucoord[1] == 1 && global.monster[1] == false)
                    global.bmenucoord[1] = 0
                if (global.bmenucoord[1] == 0 && global.monster[0] == false)
                    global.bmenucoord[1] = 2
            }
            if (global.bmenucoord[1] != oldcoord)
                snd_play(snd_squeak)
        }
        if (global.bmenuno == 10 || global.bmenuno == 12)
        {
            oldcoord = global.bmenucoord[2]
            if (global.bmenucoord[2] != 0 && global.bmenucoord[2] != 3)
                global.bmenucoord[2] -= 1
            else
                global.bmenucoord[2] += 2
            if (global.choices[global.bmenucoord[2]] == 0)
                global.bmenucoord[2] -= 1
            if (global.choices[global.bmenucoord[2]] == 0)
                global.bmenucoord[2] -= 1
            if (global.choices[0] == 1 && global.choices[1] == 0 && global.choices[2] == 0 && global.choices[3] == 0 && global.choices[4] == 0 && global.choices[5] == 0)
                global.bmenucoord[2] = 0
            if (global.bmenucoord[2] != oldcoord)
                snd_play(snd_squeak)
        }
        if (global.bmenuno >= 3 && global.bmenuno < 4)
        {
            tempcheck = (global.bmenucoord[3] + ((global.bmenuno - 3) * 8))
            if global.newmenu
            {
                if (tempcheck > 0)
                {
                    if (global.bmenucoord[3] > 0)
                        global.bmenucoord[3] -= 1
                    else
                        global.bmenuno -= 0.125
                    snd_play(snd_squeak)
                }
            }
            else
            {
                mv = 0
                tempcheck = global.bmenucoord[3]
                if (global.bmenuno == 3.5)
                    tempcheck += 4
                if (global.bmenucoord[3] == 2 || global.bmenucoord[3] == 3)
                {
                    global.bmenucoord[3] -= 2
                    mv = 1
                }
                if (mv == 0)
                {
                    if (global.bmenucoord[3] == 0 || global.bmenucoord[3] == 1)
                    {
                        global.bmenucoord[3] += 2
                        if (global.item[(tempcheck + 2)] == 0)
                            global.bmenucoord[3] -= 2
                        mv = 1
                    }
                }
                if (mv != 0)
                    snd_play(snd_squeak)
            }
        }
        if (global.bmenuno == 4)
        {
            oldcoord = global.bmenucoord[4]
            if (global.bmenucoord[4] == 0 && global.mercy < 1)
                global.bmenucoord[4] = 1
            else
                global.bmenucoord[4] = 0
            if (global.bmenucoord[4] != oldcoord)
                snd_play(snd_squeak)
        }
    }
}
if (keyboard_check_pressed(global.keybind[2]) && global.mnfight == 0)
{
    if (global.bmenuno == 0)
    {
        oldcoord = global.bmenucoord[0]
        if (global.item[0] == 0 && global.bmenucoord[0] == 1)
            global.bmenucoord[0] = 2
        global.bmenucoord[0] += 1
        if (global.bmenucoord[0] > 3)
            global.bmenucoord[0] = 0
        if (global.mercy == 2 && global.bmenucoord[0] == 3)
            global.bmenucoord[0] = 0
        if (global.mercy == 3)
            global.bmenucoord[0] = 1
        if (global.bmenucoord[0] != oldcoord)
            snd_play(snd_squeak)
    }
    if (global.bmenuno == 10 || global.bmenuno == 12)
    {
        oldcoord = global.bmenucoord[2]
        if (global.bmenucoord[2] <= 2)
            global.bmenucoord[2] += 3
        else
            global.bmenucoord[2] -= 3
        if (global.choices[global.bmenucoord[2]] == 0)
            global.bmenucoord[2] -= 1
        if (global.choices[0] == 1 && global.choices[1] == 0 && global.choices[2] == 0 && global.choices[3] == 0 && global.choices[4] == 0 && global.choices[5] == 0)
            global.bmenucoord[2] = 0
        if (global.bmenucoord[2] != oldcoord)
            snd_play(snd_squeak)
    }
    if (global.bmenuno == 6)
    {
        if (global.bmenucoord[6] == 0)
            global.bmenucoord[6] += 1
        else
            global.bmenucoord[6] -= 1
        snd_play(snd_squeak)
    }
    if (global.bmenuno == 51)
    {
        if (global.bmenucoord[51] == 0)
            global.bmenucoord[51] += 1
        else
            global.bmenucoord[51] -= 1
        snd_play(snd_squeak)
    }
    if (global.myfight != 4)
    {
        if global.newmenu
        {
        }
        else
        {
            mv = 0
            if (global.bmenuno == 3)
            {
                tempcheck = global.bmenuno
                if (global.bmenucoord[3] == 0)
                {
                    if (global.item[1] != 0)
                        global.bmenucoord[3] = 1
                    mv = 1
                }
                if (mv == 0)
                {
                    if (global.bmenucoord[3] == 1)
                    {
                        if (global.item[4] != 0)
                        {
                            global.bmenucoord[3] = 0
                            global.bmenuno = 3.5
                        }
                        else
                            global.bmenucoord[3] = 0
                        mv = 1
                    }
                }
                if (global.bmenucoord[3] == 2)
                {
                    if (global.item[3] != 0)
                        global.bmenucoord[3] = 3
                    mv = 1
                }
                if (mv == 0)
                {
                    if (global.bmenucoord[3] == 3)
                    {
                        if (global.item[6] != 0)
                        {
                            global.bmenucoord[3] = 2
                            global.bmenuno = 3.5
                        }
                        else
                            global.bmenucoord[3] = 2
                        mv = 1
                    }
                }
                if (mv == 1)
                    snd_play(snd_squeak)
                if (global.bmenuno != tempcheck)
                    script_execute(scr_itemrewrite)
            }
            if (mv == 0 && global.bmenuno == 3.5)
            {
                tempcheck = global.bmenuno
                if (global.bmenucoord[3] == 1)
                {
                    global.bmenucoord[3] = 0
                    global.bmenuno = 3
                    mv = 1
                }
                if (mv == 0)
                {
                    if (global.bmenucoord[3] == 0)
                    {
                        if (global.item[5] != 0)
                            global.bmenucoord[3] = 1
                        else
                        {
                            global.bmenucoord[3] = 0
                            global.bmenuno = 3
                        }
                        mv = 1
                    }
                }
                if (mv == 0)
                {
                    if (global.bmenucoord[3] == 3)
                    {
                        global.bmenucoord[3] = 2
                        global.bmenuno = 3
                        mv = 1
                    }
                }
                if (mv == 0)
                {
                    if (global.bmenucoord[3] == 2)
                    {
                        if (global.item[7] != 0)
                            global.bmenucoord[3] = 3
                        else
                        {
                            global.bmenucoord[3] = 2
                            global.bmenuno = 3
                        }
                        mv = 1
                    }
                }
                if (mv == 1)
                    snd_play(snd_squeak)
                if (global.bmenuno != tempcheck)
                    script_execute(scr_itemrewrite)
            }
        }
    }
}
if (keyboard_check_pressed(global.keybind[3]) && global.mnfight == 0)
{
    if (global.bmenuno == 1 || global.bmenuno == 2 || global.bmenuno == 11 || global.bmenuno == 5 || global.bmenuno == 7)
    {
        oldcoord = global.bmenucoord[1]
        if (global.msc == 0)
        {
            if (global.bmenucoord[1] == 0)
                global.bmenucoord[1]++
            else
                global.bmenucoord[1] = 0
        }
        else
        {
            global.bmenucoord[1] += 1
            if (global.bmenucoord[1] > 2)
                global.bmenucoord[1] = 0
            if (global.monster[0] == false && global.monster[2] == false)
                global.bmenucoord[1] = 1
            if (global.bmenucoord[1] == 0 && global.monster[0] == false)
                global.bmenucoord[1] = 1
            if (global.bmenucoord[1] == 1 && global.monster[1] == false)
                global.bmenucoord[1] = 2
            if (global.bmenucoord[1] == 2 && global.monster[2] == false)
                global.bmenucoord[1] = 0
        }
        if (global.bmenucoord[1] != oldcoord)
            snd_play(snd_squeak)
    }
    if (global.bmenuno == 10 || global.bmenuno == 12)
    {
        oldcoord = global.bmenucoord[2]
        if (global.bmenucoord[2] != 2 && global.bmenucoord[2] != 5)
            global.bmenucoord[2] += 1
        else
            global.bmenucoord[2] -= 2
        if (global.choices[global.bmenucoord[2]] == 0 && global.bmenucoord[2] > 2)
            global.bmenucoord[2] = 3
        if (global.choices[global.bmenucoord[2]] == 0 && global.bmenucoord[2] <= 2)
            global.bmenucoord[2] = 0
        if (global.choices[0] == 1 && global.choices[1] == 0 && global.choices[2] == 0 && global.choices[3] == 0 && global.choices[4] == 0 && global.choices[5] == 0)
            global.bmenucoord[2] = 0
        if (global.bmenucoord[2] != oldcoord)
            snd_play(snd_squeak)
    }
    if (global.bmenuno >= 3 && global.bmenuno < 4)
    {
        tempcheck = (global.bmenucoord[3] + ((global.bmenuno - 3) * 8))
        if global.newmenu
        {
            if (tempcheck < 7 && global.item[(tempcheck + 1)] != 0)
            {
                if (global.bmenucoord[3] < 2)
                    global.bmenucoord[3] += 1
                else
                    global.bmenuno += 0.125
                snd_play(snd_squeak)
            }
        }
        else
        {
            mv = 0
            if (global.bmenucoord[3] == 2 || global.bmenucoord[3] == 3)
            {
                global.bmenucoord[3] -= 2
                mv = 1
            }
            if (mv == 0)
            {
                if (global.bmenucoord[3] == 0 || global.bmenucoord[3] == 1)
                {
                    global.bmenucoord[3] += 2
                    if (global.item[(tempcheck + 2)] == 0)
                        global.bmenucoord[3] -= 2
                    mv = 1
                }
            }
            if (mv != 0)
                snd_play(snd_squeak)
        }
    }
    if (global.bmenuno == 4)
    {
        oldcoord = global.bmenucoord[4]
        if (global.bmenucoord[4] == 0 && global.mercy < 1)
            global.bmenucoord[4] = 1
        else
            global.bmenucoord[4] = 0
        if (global.bmenucoord[4] != oldcoord)
            snd_play(snd_squeak)
    }
}
if (global.bmenuno == 12)
{
    if (global.bmenucoord[2] == 0)
        enuse = 0
    else if (global.bmenucoord[2] == 3)
        enuse = global.cost[0]
    else if (global.bmenucoord[2] == 1)
        enuse = global.cost[1]
    else if (global.bmenucoord[2] == 4)
        enuse = global.cost[2]
}
else
    enuse = 0
