for (var i = 0; i < instance_number(obj_glowshroom); i++)
{
    shroom = instance_find(obj_glowshroom, i)
    shroom.glow = 1
    shroom.image_index = 1
}
solvent = 0
if (global.flag[270] == 1)
    solvent = 1
if (global.plot > 117)
    solvent = 1
if (solvent == 1)
{
    obj_glowshroom.glow = 0
    obj_glowshroom.image_index = 0
}
glowtotal = 0
