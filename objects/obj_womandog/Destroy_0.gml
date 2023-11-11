if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3] += 10
with (mypart1)
    instance_destroy()
with (mypart2)
    instance_destroy()
if (killed == 0)
    y -= 300
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
