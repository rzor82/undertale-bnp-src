maxy = (bbox_bottom - obj_mainchara.y)
if (col == 0)
    draw_sprite(sprite_index, image_index, x, y)
if (col == 1)
    draw_sprite(sprite_index, image_index, x, (y - 16))
if (col == 2)
    draw_sprite(sprite_index, image_index, x, (y - 25))
if (col > 2)
    draw_sprite(sprite_index, image_index, x, (y - 30))
image_speed = 0.5
