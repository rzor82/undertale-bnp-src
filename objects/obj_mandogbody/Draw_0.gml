siner += 1
if (instance_exists(obj_womandog) || room == room_end_castroll)
{
    if (!instance_exists(obj_womandogbody))
        draw_sprite_ext(spr_mandoge_hurt, 1, (x - 60), (y - 28), 1, 1, 0, c_white, 1)
    else
        draw_sprite_ext(spr_dogecouplenormal, (siner / 5), x, y, 1, 1, 0, c_white, 1)
}
else
    draw_sprite_ext(spr_mandoge_mourn, 1, (x - 60), (y - 34), 1, 1, 0, c_white, 1)
