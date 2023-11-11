if (mercymod == 101)
{
    if (altchance == 7)
        global.goldreward[3] += 10
    else
        global.goldreward[3] += 2
}
with (mybodypart)
    instance_destroy()
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
