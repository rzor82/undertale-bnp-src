if (d == 0)
    scr_depth()
if (puppetmode == 0)
{
    if (pathmode == 1)
    {
        if (path_position == 1)
        {
            image_index = 0
            image_speed = 0
        }
        else if (path_speed != 0)
            image_speed = 0.2
    }
    if (pathmode == 0)
    {
        if (speed == 0)
        {
            image_index = 0
            image_speed = 0
        }
    }
    if (speed > 0)
        image_speed = 0.2
    if (fun == false)
        scr_npcdir(0)
}
if (scr_murderlv() >= 2 || global.flag[221] == 1)
    gdraw = 1
if (gdraw == 0)
    gsprite = sprite_index
if (gdraw == 1)
{
    if (sprite_index == spr_maincharad)
        gsprite = 2905
    if (sprite_index == spr_maincharal)
        gsprite = 2913
    if (sprite_index == spr_maincharar)
        gsprite = 2917
    if (sprite_index == spr_maincharau)
        gsprite = 2909
    if (sprite_index == spr_maincharad_stark)
        gsprite = 2907
    if (sprite_index == spr_maincharal_stark)
        gsprite = 2915
    if (sprite_index == spr_maincharar_stark)
        gsprite = 2919
    if (sprite_index == spr_maincharau_stark)
        gsprite = 2911
    if (sprite_index == spr_maincharad_shadow)
        gsprite = 2906
    if (sprite_index == spr_maincharal_shadow)
        gsprite = 2914
    if (sprite_index == spr_maincharar_shadow)
        gsprite = 2918
    if (sprite_index == spr_maincharau_shadow)
        gsprite = 2910
    if (sprite_index == spr_maincharad_umbrella)
        gsprite = 2900
    if (sprite_index == spr_maincharal_umbrella)
        gsprite = 2901
    if (sprite_index == spr_maincharar_umbrella)
        gsprite = 2902
    if (sprite_index == spr_maincharau_umbrella)
        gsprite = 2903
    if (sprite_index == spr_maincharad_water)
        gsprite = 2968
    if (sprite_index == spr_maincharal_water)
        gsprite = 2970
    if (sprite_index == spr_maincharar_water)
        gsprite = 2971
    if (sprite_index == spr_maincharau_water)
        gsprite = 2969
}
inwater = 0
