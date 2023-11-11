image_yscale = (init_yscale + ((-(sin((siner * 0.5)))) * amp))
image_xscale = (init_yscale + (sin((siner * 0.5)) * amp))
if flip
    sprite_index = spr_mainchara_sit_happy_reversed
if (laydown == 1)
    sprite_index = spr_mainchara_bedlaydown
if (amp > 0)
    amp -= 0.03
else
    amp = 0
siner++
