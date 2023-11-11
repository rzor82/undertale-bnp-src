if (mercymod > 10 && killed == 0 && global.monsterhp[myself] == global.monstermaxhp[myself])
{
    if (altchance == 7)
        global.goldreward[3] += 20
    else
        global.goldreward[3] += 13
}
if (cube == 0)
{
    scr_monsterdefeat()
    sprite_index = hurtgfx
}
