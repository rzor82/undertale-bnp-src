if (!surface_exists(surface))
    surface = surface_create(640, 480)
surface_set_target(surface)
draw_clear_alpha(c_black, 0)
x = startx
y = starty
var i = 0
var dist = 0
var check = 0
draw_set_alpha(1)
draw_primitive_begin(3)
var col = c_white
if (con < 3)
{
    dist = (decay - drawlimit)
    col = merge_color(c_red, c_white, max(0, (dist / decay)))
}
draw_vertex_color(x, y, (stall ? c_silver : col), 1)
while (i < drawlimit && i < amount)
{
    if horizontal
    {
        y += (plot[i] * spacing)
        x += (spacing * traveldir)
    }
    else
    {
        x += (plot[i] * spacing)
        y += (spacing * traveldir)
    }
    if (con < 3)
    {
        dist = (decay - (drawlimit - i))
        col = (stall ? c_silver : merge_color(c_red, c_white, max(0, (dist / decay))))
    }
    else if (global.invc < 1 && check < 1 && collision_point(x, y, obj_heart, 0, 0))
    {
        scr_damagestandard_x()
        check = 8
    }
    else if (check > 0)
        check--
    draw_vertex_color(x, y, col, 1)
    i++
}
if collision_point(x, y, obj_heart, 0, 0)
    scr_damagestandard_x()
draw_primitive_end()
surface_reset_target()
if stall
    draw_set_alpha(((1 - (stalltimer / 10)) * 0.75))
else
    draw_set_alpha(1)
draw_surface(surface, 0, 0)
x = startx
y = starty
