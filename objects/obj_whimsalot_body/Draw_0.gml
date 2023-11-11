siner += 1
goof = sin((siner / 5))
if instance_exists(obj_whimsalot)
{
    if (obj_whimsalot.altchance == 7)
    {
        if (pause == 1)
        {
            siner = 0
            x = (parent.x + 21)
        }
        if (global.monsterhp[obj_whimsalot.myself] <= (global.monstermaxhp[obj_whimsalot.myself] / 4))
        {
            x += sin(siner)
            draw_sprite_ext(spr_whimsalot_wing_r_shiny, (siner / 15), (x + 60), ((y + 40) - (goof * 2)), 2, 2, ((sin((siner / 2)) * 30) - 15), c_white, 1)
            draw_sprite_ext(spr_whimsalot_wing_r_shiny, (siner / 15), (x + 14), ((y + 40) - (goof * 2)), -2, 2, (((-(sin((siner / 2)))) * 30) + 15), c_white, 1)
        }
        else
        {
            draw_sprite_ext(spr_whimsalot_wing_r_shiny, (siner / 15), (x + 60), ((y + 40) - (goof * 2)), 2, 2, ((sin((siner / 2.5)) * 30) - 15), c_white, 1)
            draw_sprite_ext(spr_whimsalot_wing_r_shiny, (siner / 15), (x + 14), ((y + 40) - (goof * 2)), -2, 2, (((-(sin((siner / 2.5)))) * 30) + 15), c_white, 1)
        }
        draw_sprite_ext(spr_whimsalot_body_shiny, (siner / 18), x, ((y + 50) + (goof * 6)), 2, 2, 0, c_white, 1)
        if (pause == 0)
            draw_sprite_ext(spr_whimsalot_head_shiny, (siner / 10), (x + 6), (y + (goof * 8)), 2, 2, 0, c_white, 1)
        if (pause == 1)
            draw_sprite_ext(spr_whimsalot_head_hurt_shiny, (siner / 10), (x + 6), (y + (goof * 8)), 2, 2, 0, c_white, 1)
    }
    else
    {
        if (pause == 1)
        {
            siner = 0
            x = (parent.x + 21)
        }
        if (global.monsterhp[obj_whimsalot.myself] <= (global.monstermaxhp[obj_whimsalot.myself] / 4))
        {
            x += sin(siner)
            draw_sprite_ext(spr_whimsalot_wing_r, (siner / 15), (x + 60), ((y + 40) - (goof * 2)), 2, 2, ((sin((siner / 2)) * 30) - 15), c_white, 1)
            draw_sprite_ext(spr_whimsalot_wing_r, (siner / 15), (x + 14), ((y + 40) - (goof * 2)), -2, 2, (((-(sin((siner / 2)))) * 30) + 15), c_white, 1)
        }
        else
        {
            draw_sprite_ext(spr_whimsalot_wing_r, (siner / 15), (x + 60), ((y + 40) - (goof * 2)), 2, 2, ((sin((siner / 2.5)) * 30) - 15), c_white, 1)
            draw_sprite_ext(spr_whimsalot_wing_r, (siner / 15), (x + 14), ((y + 40) - (goof * 2)), -2, 2, (((-(sin((siner / 2.5)))) * 30) + 15), c_white, 1)
        }
        draw_sprite_ext(spr_whimsalot_body, (siner / 18), x, ((y + 50) + (goof * 6)), 2, 2, 0, c_white, 1)
        if (pause == 0)
            draw_sprite_ext(spr_whimsalot_head, (siner / 10), (x + 6), (y + (goof * 8)), 2, 2, 0, c_white, 1)
        if (pause == 1)
            draw_sprite_ext(spr_whimsalot_head_hurt, (siner / 10), (x + 6), (y + (goof * 8)), 2, 2, 0, c_white, 1)
    }
}
else
{
    if (pause == 1)
    {
        siner = 0
        x = (parent.x + 21)
    }
    draw_sprite_ext(spr_whimsalot_wing_r, (siner / 15), (x + 60), ((y + 40) - (goof * 2)), 2, 2, ((sin((siner / 2.5)) * 30) - 15), c_white, 1)
    draw_sprite_ext(spr_whimsalot_wing_r, (siner / 15), (x + 14), ((y + 40) - (goof * 2)), -2, 2, (((-(sin((siner / 2.5)))) * 30) + 15), c_white, 1)
    draw_sprite_ext(spr_whimsalot_body, (siner / 18), x, ((y + 50) + (goof * 6)), 2, 2, 0, c_white, 1)
    if (pause == 0)
        draw_sprite_ext(spr_whimsalot_head, (siner / 10), (x + 6), (y + (goof * 8)), 2, 2, 0, c_white, 1)
    if (pause == 1)
        draw_sprite_ext(spr_whimsalot_head_hurt, (siner / 10), (x + 6), (y + (goof * 8)), 2, 2, 0, c_white, 1)
}
