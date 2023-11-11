if (image_alpha < 1)
    image_alpha += 0.075
else
    image_alpha = 1
image_angle += dirspd
if ((y + 25) >= global.idealborder[3])
{
    var yoffset = irandom_range(-10, 10)
    var xoffset = irandom_range(-10, 10)
    var theirdmg = round((dmg / 2))
    if (theirdmg <= 0)
        theirdmg = 1
    blt1 = instance_create((x + xoffset), (y + yoffset), blt_tb_cider_piece)
    blt1.sprite_index = spr_troubullet_spidercider_broken1
    blt1.direction = 135
    blt1.dmg = theirdmg
    blt2 = instance_create((x + xoffset), (y + yoffset), blt_tb_cider_piece)
    blt2.sprite_index = spr_troubullet_spidercider_broken3
    blt2.direction = 90
    blt2.dmg = theirdmg
    blt3 = instance_create((x + xoffset), (y + yoffset), blt_tb_cider_piece)
    blt3.sprite_index = spr_troubullet_spidercider_broken2
    blt3.direction = 45
    blt3.dmg = theirdmg
    snd_play(snd_glassbreak)
    with (obj_shaker)
        instance_destroy()
    global.hshake = 3
    global.shakespeed = 2
    global.vshake = 3
    instance_create(0, 0, obj_shaker)
    instance_destroy()
}
