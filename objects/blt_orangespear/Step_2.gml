if (global.turntimer < 1)
{
    speed = 0
    if (image_alpha > 0.1)
        image_alpha -= 0.2
    else
    {
        global.mnfight = 3
        image_alpha = 0
        instance_destroy()
    }
}
if (x == obj_heart.x)
    hitted = 1
if (hitted == 1)
{
    hit = 1
    if (abs((obj_heart.x - obj_heart.xprevious)) > 0.1)
        hit = 0
    if (keyboard_check_pressed(global.keybind[0]) || keyboard_check_pressed(global.keybind[2]) || keyboard_check_pressed(global.keybind[1]) || keyboard_check_pressed(global.keybind[3]))
        hit = 0
    if (hit == 1)
    {
        dmgamt = round((dmg - ((global.df + global.adef) / 5)))
        if (dmgamt < 1)
            dmgamt = 1
        global.hp -= dmgamt
        snd_play(snd_hurt1)
        global.hshake = 2
        global.shakespeed = 2
        global.vshake = 2
        instance_create(0, 0, obj_shaker)
        hitted = 0
    }
}
