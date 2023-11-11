var vars;
if (global.invc > 0 && (!hit))
{
    spin_timer = 0
    hit_timer = 20
    act_timer = 0
    hit_ind = hit_start
    hit_inc = 0.2
    hit = 1
    act = 0
}
else if (global.invc < 1 && hit)
{
    hit_timer = 0
    hit = 0
}
if (obj_mettatonex.whatiheard == -1)
    act = 0
else if (obj_mettatonex.whatiheard == 1 && (!act))
{
    spin_timer = 16
    act_timer = 60
    act = 1
}
draw_set_alpha(1)
draw_set_color(c_white)
draw_rectangle(x, y, (x + w), (y + h), false)
draw_set_color(c_black)
draw_rectangle((x + 3), (y + 3), ((x + w) - 3), ((y + h) - 3), false)
draw_set_color(c_white)
draw_rectangle((x + 6), (y + 6), ((x + w) - 6), ((y + h) - 6), false)
draw_set_color(c_black)
draw_rectangle((x + 8), (y + 8), ((x + w) - 8), ((y + h) - 8), false)
if (act || spin_timer > 0 || act_timer > 0)
{
    if (act_timer < 0)
        act_timer = 0
    if (spin_timer < 0)
        spin_timer = 0
    draw_sprite_ext(spr_mainchara_tspin, (16 - spin_timer--), (((x + (w / 2)) - (spin_width / 2)) + spin_offsetx), (((y + (h / 2)) - (spin_height / 2)) + spin_offsety), scale, scale, 0, c_white, 1)
    act_timer--
}
else if (hit || hit_timer > 0)
{
    if (hit_timer < 1)
    {
        hit_timer = 0
        hit_ind = hit_start
        hit_inc = 0
    }
    else
    {
        hit_timer--
        hit_ind += hit_inc
        if (hit_ind < hit_start)
        {
            hit_ind = hit_start
            hit_inc = 0.2
        }
        else if (hit_ind > hit_end)
        {
            hit_ind = hit_end
            hit_inc = -0.2
        }
    }
    var shake = ((((hit_end - hit_start) / 2) - hit_ind) * 2)
    draw_sprite_ext(spr_mainchara_die_refuse, hit_ind, ((((x + (w / 2)) - (hit_width / 2)) + hit_offsetx) + shake), (((y + (h / 2)) - (hit_height / 2)) + hit_offsety), scale, scale, 0, c_white, 1)
}
else
    draw_sprite_ext(spr_maincharad, 0, ((x + (w / 2)) - (norm_width / 2)), ((y + (h / 2)) - (norm_height / 2)), scale, scale, 0, c_white, 1)
actdraw = 0
