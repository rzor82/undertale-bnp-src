image_speed = 0.1
image_xscale = 2
image_yscale = 2
facex = (x + 25)
facey = (y + 40)
facetime = 0
r = 0.5
atk = 0
smuggy = 10
if instance_exists(obj_tembattle)
{
    if (obj_tembattle.altchance == 7)
    {
        shinied = 1
        sprite_index = spr_tembody_shiny
    }
}
