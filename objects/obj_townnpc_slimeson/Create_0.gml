dsprite = spr_npc_kidslime1
usprite = spr_npc_kidslime1
lsprite = spr_npc_kidslime1
rsprite = spr_npc_kidslime1
dtsprite = spr_npc_kidslime1
utsprite = spr_npc_kidslime1
ltsprite = spr_npc_kidslime1
rtsprite = spr_npc_kidslime1
myinteract = 0
facing = 0
direction = 0
talkedto = 0
image_speed = 0
if (global.flag[67] == 1 || scr_deaddog() == 1)
    instance_destroy()
if (scr_murderlv() >= 7)
    instance_destroy()
