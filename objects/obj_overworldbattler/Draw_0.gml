var do_draw = 1
with (obj_soulvision)
    do_draw = ((!((do_flicker || darken || draw_override))) && salpha <= 0.001)
if do_draw
{
    draw_sprite_ext(spr_heart, frame, (obj_mainchara.x + 7), (obj_mainchara.y + 17), 0.4, 0.4, 0, c_white, 1)
    frame += 0.5
    if (frame >= 2)
        frame = 0
}
