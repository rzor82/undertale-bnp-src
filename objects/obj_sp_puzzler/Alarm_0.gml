i = 0
solved = 1
active = false
global.flag[226] = 1
for (j = 0; j < maxswt; j++)
{
    swt[j].active = false
    swt[j].on = 0
    swt[j].image_index = 0
    swt[j].myinteract = 0
}
while (i < maxswt)
{
    if (ind[i].state == 0)
    {
        solved = 0
        active = true
        global.flag[226] = 0
        for (j = 0; j < maxswt; j++)
            swt[j].active = true
        break
    }
    else
    {
        i++
        continue
    }
}
if (solved == 1)
    opensnd = caster_loop(snd_bigdoor_open, 1, 1)
