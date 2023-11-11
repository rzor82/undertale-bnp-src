if (killed == 0 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
    if (altchance == 7)
        global.goldreward[3] += 14
    else
        global.goldreward[3] += 4
}
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
