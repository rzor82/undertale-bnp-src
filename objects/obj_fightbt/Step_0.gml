if global.newmenu
{
    if (global.weapon == 3)
        sprite_index = spr_fightbt_stick
    if (global.weapon == 13)
        sprite_index = spr_fightbt
    if (global.weapon == 14)
        sprite_index = spr_fightbt_glove
    if (global.weapon == 25)
        sprite_index = spr_fightbt_shoes
    if (global.weapon == 45)
        sprite_index = spr_fightbt_book
    if (global.weapon == 49)
        sprite_index = spr_fightbt_gun
    if (global.weapon == 51)
        sprite_index = spr_fightbt_dagger
    if (global.weapon == 52)
        sprite_index = spr_fightbt_rknife
}
else
    sprite_index = spr_fightbt_default
image_index = 0
if (obj_heart.specialscene == 0)
{
    if (global.bmenucoord[0] == 0)
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
