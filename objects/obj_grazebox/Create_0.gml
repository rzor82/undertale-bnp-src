grazetimer = 0
grazetpfactor = 1
grazetimefactor = 1
grazesizefactor = 1
if (grazetimefactor > 3)
    grazetimefactor = 3
if (grazetpfactor > 3)
    grazetpfactor = 3
if (grazesizefactor > 3)
    grazesizefactor = 3
image_xscale = grazesizefactor
image_yscale = grazesizefactor
if instance_exists(obj_purpleheart)
{
    sizexoff = -2
    sizeyoff = 0
    x = ((obj_purpleheart.x + 2) + sizexoff)
    y = ((obj_purpleheart.y + 2) + sizeyoff)
}
else if instance_exists(obj_heart)
{
    sizexoff = -2
    sizeyoff = 0
    x = ((obj_heart.x + 10) + sizexoff)
    y = ((obj_heart.y + 10) + sizeyoff)
}
image_blend = obj_heart.customcolor
