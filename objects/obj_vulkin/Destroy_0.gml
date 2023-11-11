if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
    if (altchance == 3)
        global.goldreward[3] += 65
    else
        global.goldreward[3] += 40
    global.flag[148] = 1
}
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
