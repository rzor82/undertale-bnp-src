if (bull == 0)
{
    siny += 1
    y = (yo + (sin((siny / 30)) * 9))
    yo += vspeed
    if (alphaup == 1 && image_alpha < 1)
        image_alpha += 0.05
}
if (bull == 1)
{
    if (obj_aaron.altchance == 7)
        sprite_index = spr_uniaaronbody_bull_shiny
}
if (shake > 0)
{
    shack += 1
    if (shack == 2)
    {
        x = (xstart + (((random(shake) * 2) - shake) / 2))
        y = (ystart + (((random(shake) * 2) - shake) / 2))
        shack = 0
    }
}
