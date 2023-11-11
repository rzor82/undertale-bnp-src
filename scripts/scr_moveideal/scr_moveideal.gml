if (argument0 > 0)
{
    if (idealstep < argument0)
        idealstep += 1
    idealxdist = ((idealxx2 - x) / argument0)
    idealydist = ((idealyy2 - y) / argument0)
    x += (idealxdist * idealstep)
    y += (idealydist * idealstep)
}
