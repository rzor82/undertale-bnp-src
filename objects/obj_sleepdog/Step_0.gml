if (obj_heart.x != obj_heart.xprevious || obj_heart.y != obj_heart.yprevious)
    hmove += 1
if (hmove > 7)
{
    hmove = -99999
    sprite_index = spr_wakedog
    image_speed = 0
    image_index = 0
    alarm[2] = 2
}
