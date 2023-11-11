if instance_exists(obj_chilldrake)
{
    draw_sprite_ext(spr_chilldrake_legs, 0, x, y, 2, 2, 0, c_white, 1)
    if (global.monsterhp[obj_chilldrake.myself] < 20)
        draw_sprite_ext(spr_chilldrake_body, 0, x, (y + ((obj_drakehead.y - ystart) / 2)), 2, 2, 0, c_white, 1)
    else
        draw_sprite_ext(spr_chilldrake_body, 0, x, (y + ((obj_drakehead.y - ystart) / 3)), 2, 2, 0, c_white, 1)
}
else if instance_exists(obj_snowdrake)
{
    draw_sprite_ext(spr_snowdrake_legs, 0, x, y, 2, 2, 0, c_white, 1)
    if (global.monsterhp[obj_snowdrake.myself] < 20)
        draw_sprite_ext(spr_snowdrake_body, 0, x, (y + ((obj_drakehead.y - ystart) / 2)), 2, 2, 0, c_white, 1)
    else
        draw_sprite_ext(spr_snowdrake_body, 0, x, (y + ((obj_drakehead.y - ystart) / 3)), 2, 2, 0, c_white, 1)
}
else
{
    draw_sprite_ext(spr_snowdrake_legs, 0, x, y, 2, 2, 0, c_white, 1)
    draw_sprite_ext(spr_snowdrake_body, 0, x, y, 2, 2, 0, c_white, 1)
}
