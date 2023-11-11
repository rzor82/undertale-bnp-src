dsprite = spr_npc_dadslime
usprite = spr_npc_dadslime
lsprite = spr_npc_dadslime
rsprite = spr_npc_dadslime
dtsprite = spr_npc_dadslime
utsprite = spr_npc_dadslime
ltsprite = spr_npc_dadslime
rtsprite = spr_npc_dadslime
myinteract = 0
facing = 0
direction = 0
talkedto = 0
image_speed = 0
if (scr_murderlv() >= 8)
    instance_destroy()
if (global.debug == false)
{
    if (global.flag[5] < 80 || global.flag[5] > 89)
        instance_destroy()
}
asprite = spr_clamgirl_a
bsprite = spr_clamgirl_b
gcon = 0
gtimer = 0
