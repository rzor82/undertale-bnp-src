image_speed = 0
rsprite = spr_asriel_r
lsprite = spr_asriel_l
dsprite = spr_asriel_d
usprite = spr_asriel_u
sprite_index = spr_asriel_armcry
con = 1
timer = 0
alarm[4] = 200
powered = 0
emerge = 0
instance_create(0, 0, obj_overworldcontroller)
mc_real = instance_create(x, (y + 60), obj_mainchara)
mc_real.visible = false
mc_real.cutscene = true
mc = scr_marker(x, (y + 60), spr_maincharau)
mc.image_speed = 0
mc.depth = (depth + 3)
global.facing = 2
global.interact = 1
thisy = ystart
musicbox = caster_load("music/musicbox.ogg")
xpart = caster_load("music/xpart_back.ogg")
with (obj_asrielpanels)
    instance_destroy()
instance_create(0, 0, obj_borderdrawer)
