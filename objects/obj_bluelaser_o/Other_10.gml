check = 1
if (blue == 1)
{
    if (obj_mainchara.x == obj_mainchara.xprevious && obj_mainchara.y == obj_mainchara.yprevious)
        check = 0
}
if (blue == 2)
{
    if (obj_mainchara.x != obj_mainchara.xprevious || obj_mainchara.y != obj_mainchara.yprevious)
        check = 0
}
if (check == 1 && global.interact == 0)
{
    if special
    {
        if (blue == 1)
            blue = 2
        else
            blue = 1
    }
    else
    {
        global.flag[370] = 2
        instance_create(0, 0, obj_overworldbattler)
        obj_bluelaser_o.active = false
        obj_bluelaser_o.alarm[0] = 60
    }
}
