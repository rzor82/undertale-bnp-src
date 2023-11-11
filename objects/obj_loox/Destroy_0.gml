if (mercymod > 99)
{
    if (altchance == 7)
        global.goldreward[3] += 12
    else
        global.goldreward[3] += 5
}
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
