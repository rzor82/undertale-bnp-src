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
if (on == 1)
{
    image_index = 1
    if control_check_pressed(0)
    {
        if (con == 0)
        {
            con = 1
            with (obj_sansb_body)
                death_c = 1
            with (obj_heart)
                movement = -1
        }
    }
}
else
    image_index = 0
on = 0
