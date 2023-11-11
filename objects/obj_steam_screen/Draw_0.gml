tick++
draw_set_alpha(0.6)
draw_sprite(spr_steamy_screen_effect, 0, 0, 0)
gpu_set_fog(true, c_black, 0, 0)
draw_sprite(obj_mainchara.sprite_index, obj_mainchara.image_index, obj_mainchara.x, obj_mainchara.y)
for (var _i = 0; _i < instance_number(obj_p_steam); _i++)
{
    with (instance_find(obj_p_steam, _i))
        draw_self()
}
gpu_set_fog(false, c_black, 0, 0)
draw_set_alpha(1)
