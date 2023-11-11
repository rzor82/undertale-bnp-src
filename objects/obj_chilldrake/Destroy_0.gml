if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3] += 10
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
with (mypart2)
    instance_destroy()
if (spec && scr_monstersum() == 1 && global.flag[446] == 1)
{
    if killed
        global.flag[446] = 2
    else
        global.flag[446] = 3
}
show_debug_message(("Mercy: " + string(mercy)))
