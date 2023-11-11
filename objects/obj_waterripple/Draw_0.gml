var step = floor(obj_mainchara.image_index)
if instance_exists(obj_mainchara)
{
    image_index += 0.2
    x = obj_mainchara.x
    y = obj_mainchara.y
    draw_self_custom(x1, x2, y1, y2)
    if (step != prev_step)
    {
        if (obj_mainchara.bbox_left > (x1 - 5) && obj_mainchara.bbox_right < (x2 + 5) && obj_mainchara.bbox_top > (y1 - 5) && obj_mainchara.bbox_bottom < (y2 + 5))
        {
            if (step == 1 || step == 3 || step == 5)
            {
                snd_play(snd_splash)
                mp = 0
            }
        }
    }
    prev_step = step
}
