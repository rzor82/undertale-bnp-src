if (global.flag[6] == 0)
{
    if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    {
        global.goldreward[3] += 50
        global.flag[152] = 1
    }
}
if (global.flag[6] == 1)
{
    if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
        global.goldreward[3] += 3
}
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
