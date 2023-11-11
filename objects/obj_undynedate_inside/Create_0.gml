table = scr_marker(177, 115, spr_undynetable)
piano = scr_marker(60, 100, spr_undyne_piano)
sword = scr_marker((obj_solidextall_2.x + 240), (obj_solidextall_2.y - 34), spr_giantsword)
teacup = scr_marker(104, 57, spr_undteacup)
with (obj_npc_marker)
    scr_depth()
con = 1
global.interact = 1
alarm[4] = 40
caster_free(-3)
global.facing = 2
papyrus = instance_create(120, 140, obj_papyrus_actor)
papyrus.sprite_index = papyrus.usprite
papyrus.fun = true
papyrus.image_speed = 0
undyne = instance_create(140, 80, obj_undyne_actor)
undyne.sprite_index = undyne.dtsprite
global.flag[349] = 1
con = 1
skydiving = irandom(20)
if (global.debug == true)
    skydiving = 7
if (con == 104)
{
    global.currentsong = caster_load("music/undynetruetheme.ogg")
    caster_loop(global.currentsong, 0.9, 1)
    global.phasing = 1
    con = 104
    undyne.x = 208
    undyne.y = 10
    __view_set(9, 0, -4)
    obj_mainchara.cutscene = true
    obj_mainchara.x = 200
    obj_mainchara.y = 140
}
