var scale = 0.5
if (global.debug == true)
{
    if keyboard_check(vk_space)
    {
        if keyboard_check_pressed(global.keybind[2])
            qq += 0.2
        if keyboard_check_pressed(global.keybind[0])
            qq -= 0.2
        if keyboard_check_pressed(global.keybind[3])
            ww -= 1
        if keyboard_check_pressed(global.keybind[1])
            ww += 1
    }
}
if do_siner
    scr_waver_height_surface(surface, qq, ww)
else
    draw_surface(surface, x, y)
idealww2 = (idealww + random(6))
if (ww > idealww2)
    ww -= 0.5
if (ww < idealww2)
    ww += 0.5
if (idealww == 0.1 && ww < 2)
    instance_destroy()
if (global.debug == true && do_debug == 1 && surface_exists(surface))
{
    draw_set_alpha(1)
    draw_set_color(c_red)
    draw_rectangle(__view_get(0, 0), __view_get(1, 0), ((width * scale) + 6), ((height * scale) + 6), false)
    draw_surface_ext(surface, (__view_get(0, 0) + 3), (__view_get(1, 0) + 3), scale, scale, 0, c_white, 1)
}
