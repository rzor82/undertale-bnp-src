con = 0
image_yscale = 5
if (global.plot > 134)
    instance_destroy()
else
{
    obj_mainchara.cutscene = true
    __view_set(1, 0, 240)
    instance_create(0, 0, obj_musfadeout)
    __view_set(9, 0, -4)
}
yoffset1 = 240
