if (powered == 1)
    siner += 1
else
    siner = 0
if murder
    image_blend = c_red
else
    image_blend = c_white
if (image_xscale == 1)
    draw_sprite_ext(spr_core_wallstrip_l, (siner / 6), x, y, 1, 1, 0, image_blend, 1)
else
    draw_sprite_ext(spr_core_wallstrip_r, (siner / 6), (x - 20), y, 1, 1, 0, image_blend, 1)
