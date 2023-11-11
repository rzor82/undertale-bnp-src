if (type >= 1 && type != 100)
{
    bt = 3
    type = 100
}
var diffx = 0
var diffy = 0
if instance_exists(obj_expander)
{
    diffx = obj_expander.diffx
    diffy = obj_expander.diffy
}
if (bt > 0.03 && active)
{
    __view_set(0, 0, ((choose(1, -1) * random((2 * bt))) - diffx))
    __view_set(1, 0, ((choose(1, -1) * random((2 * bt))) - diffy))
}
else
{
    __view_set(0, 0, (-diffx))
    __view_set(1, 0, (-diffy))
}
if (typecol == 0xFFA914)
    blue = 1
else if (typecol == c_orange)
    blue = 2
xx = lengthdir_x(30, angle)
yy = lengthdir_y(30, angle)
xxx = lengthdir_x(800, angle)
yyy = lengthdir_y(800, angle)
imax = (20 * bt2)
dirface = angle
diramt = point_distance(x, y, 1000, 1000)
if active
{
    siner += 1
    siner2 += 0.5
    for (i = 0; i < imax; i += 1)
        draw_sprite_ext(spr_crossthunder_part, siner, ((x + (lengthdir_x(diramt, dirface) * (i / imax))) + random(8)), ((y + (lengthdir_y(diramt, dirface) * (i / imax))) + random(8)), bt, bt, angle, typecol, 1)
    draw_sprite_ext(spr_crossthunder_start, siner2, ((x + random(2)) - random(1)), ((y + random(2)) - random(1)), (bt * 1.5), (bt * 1.5), angle, typecol, 1)
}
nx_factor = lengthdir_x(1, angle)
ny_factor = lengthdir_y(1, angle)
if (col_o == 1)
{
    for (cl = 0; cl < 4; cl += 1)
    {
        if (!active)
        {
            draw_set_color(c_red)
            draw_set_alpha(1)
            for (i = 0; i < 2; i++)
            {
                draw_line_width(((x + xx) - (((nx_factor * (bt * 6)) / 2) * (cl / 4))), ((y + yy) - (((ny_factor * (bt * 6)) / 2) * (cl / 4))), ((x + xxx) - (((nx_factor * (bt * 6)) / 2) * (cl / 4))), ((y + yyy) - (((ny_factor * (bt * 6)) / 2) * (cl / 4))), 2)
                draw_set_alpha(((btimer % 2) ? 1 : 0.2))
                draw_set_color(typecol)
            }
        }
        else if collision_line(((x + xx) - (((nx_factor * (bt * 6)) / 2) * (cl / 4))), ((y + yy) - (((ny_factor * (bt * 6)) / 2) * (cl / 4))), ((x + xxx) - (((nx_factor * (bt * 6)) / 2) * (cl / 4))), ((y + yyy) - (((ny_factor * (bt * 6)) / 2) * (cl / 4))), obj_heart, false, true)
            event_user(7)
    }
    for (cl = 0; cl < 4; cl += 1)
    {
        if (!active)
        {
            draw_set_color(c_red)
            draw_set_alpha(1)
            for (i = 0; i < 2; i++)
            {
                draw_line_width(((x + xx) + (((nx_factor * (bt * 6)) / 2) * (cl / 4))), ((y + yy) + (((ny_factor * (bt * 6)) / 2) * (cl / 4))), ((x + xxx) + (((nx_factor * (bt * 6)) / 2) * (cl / 4))), ((y + yyy) + (((ny_factor * (bt * 6)) / 2) * (cl / 4))), 2)
                draw_set_alpha(((btimer % 2) ? 1 : 0.2))
                draw_set_color(typecol)
            }
        }
        else if collision_line(((x + xx) + (((nx_factor * (bt * 6)) / 2) * (cl / 4))), ((y + yy) + (((ny_factor * (bt * 6)) / 2) * (cl / 4))), ((x + xxx) + (((nx_factor * (bt * 6)) / 2) * (cl / 4))), ((y + yyy) + (((ny_factor * (bt * 6)) / 2) * (cl / 4))), obj_heart, false, true)
            event_user(7)
    }
}
draw_set_alpha(1)
if (col_o == 0)
    col_o = 1
btimer += 1
if active
{
    if (type == 100)
    {
        if (blue == 1)
            angle -= (bt * rot_speed)
        else
            angle += (bt * rot_speed)
        if (decay_timer <= 0)
        {
            bt -= 0.05
            bt2 += 0.05
            if (bt < 0.05)
                bt = 0
        }
    }
    else
    {
        if (blue == 1)
            angle += (bt * (rot_speed * 0.75))
        else
            angle -= (bt * (rot_speed * 0.75))
        if (decay_timer <= 0)
        {
            bt -= 0.03
            bt2 += 0.03
            if (bt < 0.03)
                bt = 0
        }
    }
    if (decay_timer > 0)
    {
        decay_timer -= 1
        rot_speed += 0.1
        if (rot_speed > rot_speed_max)
            rot_speed = rot_speed_max
    }
}
else if (type == 100)
{
    if (blue == 1)
        angle -= (bt3 * rot_speed)
    else
        angle += (bt3 * rot_speed)
    bt3 += (bt * 0.0666666666666667)
    if (bt3 > bt)
        bt3 = bt
}
else
{
    if (blue == 1)
        angle += (bt3 * (rot_speed * 0.75))
    else
        angle -= (bt3 * (rot_speed * 0.75))
    bt3 += (bt * 0.0666666666666667)
    if (bt3 > bt)
        bt3 = bt
}
