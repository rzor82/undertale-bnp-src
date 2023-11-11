bull = 0
image_speed = 0.1
image_xscale = 2
image_yscale = 2
siny = 0
yo = y
if instance_exists(obj_tembattle)
{
    image_alpha = 0
    alphaup = 1
}
else
    alphaup = 0
shake = 0
shack = 0
if (room != room_end_castroll)
{
    if (obj_aaron.altchance == 7)
        sprite_index = spr_uniaaronbody_shiny
}
