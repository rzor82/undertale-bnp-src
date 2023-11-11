if (global.flag[6] == 0)
{
    if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    {
        global.goldreward[3] += 50
        global.flag[153] = 1
    }
}
if (global.flag[6] == 1)
{
    if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
        global.goldreward[3] += 6
}
x += 10
y += 10
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
