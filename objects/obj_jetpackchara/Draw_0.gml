xx = __view_get(0, 0)
yy = __view_get(1, 0)
draw_sprite(sprite_index, image_index, x, y)
timertime -= 1
if (timertime < 300)
    timertime += 0.25
