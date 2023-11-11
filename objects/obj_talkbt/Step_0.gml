image_index = 0
if (obj_heart.specialscene == 0)
{
    if (global.bmenucoord[0] == 1)
    {
        if (global.myfight == 0)
        {
            if (global.mnfight == 0)
                image_index = 1
        }
        if (global.bmenuno == 0)
        {
            obj_heart.x = (x + 10)
            obj_heart.y = (y + 14)
        }
    }
}
if (global.partycount == 2)
{
    prtymem = scr_get_current_party()
    if (prtymem == 1)
        sprite_index = spr_spellbt
    else
        sprite_index = spr_talkbt
}
if (spec == 1)
{
    spec_x += 1
    image_blend = make_color_hsv((spec_x * 12), 160, 255)
}
