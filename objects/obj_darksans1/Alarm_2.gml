image_speed = 0
obj_mainchara.sprite_index = spr_maincharal
obj_mainchara.facing = 3
global.facing = 3
alarm[3] = 60
if (scr_murderlv() >= 2 || global.flag[221] == 1)
    gdraw = 1
if (gdraw == 1)
{
    if (sprite_index == spr_maincharad)
        sprite_index = spr_maincharad_geno
    if (sprite_index == spr_maincharal)
        sprite_index = spr_maincharal_geno
    if (sprite_index == spr_maincharar)
        sprite_index = spr_maincharar_geno
    if (sprite_index == spr_maincharau)
        sprite_index = spr_maincharau_geno
}
