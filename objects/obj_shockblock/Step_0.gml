if instance_exists(obj_orbhead)
{
    if (obj_orbhead.onhead == 1)
    {
        hat = 1
        solid = 1
    }
}
if (shocking == 1 && hat == 1)
{
    global.interact = 1
    shocking = 2
    snd_play(snd_shock)
    alarm[0] = 15
    memoryx = obj_mainchara.xprevious
    memoryy = obj_mainchara.yprevious
}
if (shocking == 1 && hat == 0)
{
    obj_mainchara.x = obj_mainchara.xprevious
    obj_mainchara.y = obj_mainchara.yprevious
}
if (shocking == 2 && hat == 1)
{
    ggg = (floor(random(5)) - 2)
    obj_mainchara.x = (memoryx + ggg)
    ggg = (floor(random(5)) - 2)
    obj_mainchara.y = (memoryy + ggg)
}
if (instance_exists(obj_papyrus2) && hat)
{
    with (obj_soulvision)
    {
        hp_rectalpha = 0.7
        alpha = (other.alarm[0] / 15)
        raising = 1
    }
}
else
{
    with (obj_soulvision)
    {
        raising = 0
        event_user(2)
    }
}
