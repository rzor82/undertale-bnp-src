image_yscale = 4.8
col = -1
if (x < (room_width / 2))
{
    sprite_index = spr_conveyorbelt_d_blue
    image_speed = 1.5
}
if (x > (room_width / 2))
{
    sprite_index = spr_conveyorbelt_d_blue
    image_speed = -1.5
}
if (room == room_fire2)
{
    sprite_index = spr_conveyorbelt_d
    image_yscale = 3
    image_speed = -1.5
}
