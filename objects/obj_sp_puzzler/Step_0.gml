if (active == true)
{
    i = 0
    while (i < maxswt)
    {
        if (swt[i].on == 1)
        {
            rempos = i
            for (j = 0; j < maxswt; j++)
            {
                swt[j].active = false
                swt[j].on = 0
            }
            ind[i].active = true
            active = false
            snd_play(snd_switchpull_n)
            alarm[0] = 20
            alarm[1] = 2
            break
        }
        else
        {
            i++
            continue
        }
    }
}
if (global.debug == true)
{
    if keyboard_check_pressed(ord("E"))
        solved = 1
}
