obj_mainchara.cutscene = true
__view_set(1, 0, 0)
cn = 0
active = false
usong = caster_load("music/undynefast.ogg")
ushock = caster_load("music/fearsting.ogg")
if (global.plot < 114)
{
    undyne = instance_create(x, 140, obj_undynea_actor2)
    undyne.dsprite = spr_undyne_starkd
    undyne.d = 1
    undyne.depth = 1000090
    undyne.image_alpha = 0
    undyne.sprite_index = spr_undyne_starkd
    stk = instance_create(0, 0, obj_starker)
    stk.subject = undyne
    stk.sprite_index = spr_undyne_shad
    stk.image_alpha = 0
    active = true
}
stopper = 0
