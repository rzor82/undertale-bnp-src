depth = (obj_mainchara.depth - 10)
image_speed = 0.125
if (scr_murderlv() >= 12)
{
    sprite_index = spr_coresign_geno
    image_speed = 0.35
}
if (scr_murderlv() >= 16)
{
    sprite_index = spr_coresign_off
    image_speed = 0
}
