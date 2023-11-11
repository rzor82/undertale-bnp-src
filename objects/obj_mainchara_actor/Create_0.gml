script_execute(scr_depth, 0, 0, 0, 0, 0)
image_speed = 0
dsprite = spr_maincharad
usprite = spr_maincharau
lsprite = spr_maincharal
rsprite = spr_maincharar
dtsprite = spr_maincharad
utsprite = spr_maincharau
ltsprite = spr_maincharal
rtsprite = spr_maincharar
fun = false
myinteract = 0
facing = 0
pathmode = 1
d = 0
gsprite = 1157
gdraw = 0
if (scr_murderlv() >= 2 || global.flag[221] == 1)
    gdraw = 1
if (gdraw == 0)
    gsprite = sprite_index
if (gdraw == 1)
{
    dsprite = spr_maincharad_geno
    usprite = spr_maincharau_geno
    lsprite = spr_maincharal_geno
    rsprite = spr_maincharar_geno
    dtsprite = spr_maincharad_geno
    utsprite = spr_maincharau_geno
    ltsprite = spr_maincharal_geno
    rtsprite = spr_maincharar_geno
}
inwater = 0
draw_armor = 1
flip = 0
flip_x = 0
flip_y = 1
flip_y2 = 0
puppetmode = 0
