if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3] += 40
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
if instance_exists(obj_spared)
{
    with (ddd)
    {
        image_xscale = 2
        image_yscale = 2
    }
}
with (mypart1)
    instance_destroy()
