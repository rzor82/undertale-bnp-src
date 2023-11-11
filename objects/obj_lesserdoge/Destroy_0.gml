if (mercymod > 99)
    global.goldreward[3] += 7
if (mercymod >= 150)
    global.flag[55] = 2
if (mercymod > 500)
    global.goldreward[3] += 13
if (mercymod > 2600)
    global.goldreward[3] += 40
if (killed == 1)
    global.flag[55] = 1
if (killed == 0)
    global.flag[27] = 1
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
surface_free(surface)
