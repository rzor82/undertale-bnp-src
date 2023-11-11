if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
    if (altchance == 7)
        global.goldreward[3] += 20
    else
        global.goldreward[3] += 32
}
if (giftgiven == 1)
{
    if (altchance == 7)
        global.goldreward[3] += 8
    else
        global.goldreward[3] += 0
}
if (giftgiven == 2)
{
    if (altchance == 7)
        global.goldreward[3] += 100
    else
        global.goldreward[3] += 72
}
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
with (mypart2)
    instance_destroy()
if instance_exists(mypart3)
{
    with (mypart3)
        instance_destroy()
}
if instance_exists(mypart4)
{
    with (mypart4)
        instance_destroy()
}
if (googly == 1)
{
    with (mypart5)
        instance_destroy()
}
if instance_exists(mypart8)
{
    with (mypart8)
        instance_destroy()
}
