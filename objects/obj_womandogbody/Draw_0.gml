siner += 1
if (room != room_end_castroll)
{
    if (!instance_exists(obj_mandog))
        draw_sprite_ext(spr_womandoge_pissed, 1, (x + 108), (y - 34), 1, 1, 0, c_white, 1)
    else if (!instance_exists(obj_mandogbody))
        draw_sprite_ext(spr_womandoge_hurt, 1, (x + 104), (y - 28), 1, 1, 0, c_white, 1)
}
