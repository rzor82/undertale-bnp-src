siner += 1
blend = merge_color((murder ? c_red : c_aqua), c_white, 0.7)
draw_sprite_ext(spr_glowbg, (siner / 6), -20, -20, 400, 400, 0, blend, abs(sin((siner / 10))))
