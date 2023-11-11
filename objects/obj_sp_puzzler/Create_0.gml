maxswt = 8
for (i = 0; i < maxswt; i++)
{
    ind[i] = instance_create(((x + 25) + (i * 20)), (y + 20), obj_sp_indicator)
    switch i
    {
        case 2:
        case 4:
        case 6:
            ind[i].state = 1
            break
    }

}
for (i = 0; i < maxswt; i++)
    swt[i] = instance_create(((x + 29) + (i * 20)), (y + 46), obj_switchbasic)
active = true
wall = instance_create((x - 40), y, obj_solidsmall)
wall.image_yscale = 10
spikeoff = 0
solved = 0
depth = 900000
rempos = 0
if (global.flag[226] == 1)
{
    with (wall)
        instance_destroy()
    spikeoff = 100
    for (i = 0; i < maxswt; i++)
        ind[i].state = 1
    solved = 2
    active = false
    for (j = 0; j < maxswt; j++)
    {
        swt[j].active = false
        swt[j].on = 0
        swt[j].image_index = 0
        swt[j].myinteract = 0
    }
}
