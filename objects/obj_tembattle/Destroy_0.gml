if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
    if (altchance == 7)
        global.goldreward[3] += 45
    else
        global.goldreward[3] += 30
}
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
