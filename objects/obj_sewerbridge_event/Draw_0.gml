var comment = "Tiles are hard"
var bottomy = (y + sprite_height)
for (var offset = (y + ext); offset < bottomy; offset += (sprite_height / image_yscale))
    draw_sprite_part(bg_ruinseasynam3, 0, 120, 400, 49, min(20, (bottomy - offset)), x, offset)
