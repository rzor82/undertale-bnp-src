if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3] += 7
if (mercymod > 40 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3] += 15
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
