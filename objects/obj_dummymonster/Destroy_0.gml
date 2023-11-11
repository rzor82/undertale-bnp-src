if (killed == 1)
{
    global.flag[14] = 1
    global.flag[12] = 1
    global.vaporspeed = 0
    global.monstersprite = sprite_index
    ddd = instance_create(x, y, obj_vaporized_new)
    with (ddd)
        scr_newvapordata(23)
    ddd.sprite_index = sprite_index
    ddd.ht = ht
    ddd.wd = wd
    ddd.image_speed = 0
    ddd.image_index = 1
    global.monster[myself] = false
}
else
{
    if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
        global.goldreward[3] += 25
    script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
}
