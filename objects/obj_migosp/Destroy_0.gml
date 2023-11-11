script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
    if (altchance == 7)
        global.goldreward[3] += 2
    else
        global.goldreward[3] += 12
    global.flag[135] = 1
}
