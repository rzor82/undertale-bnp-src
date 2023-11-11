if (stage == 0)
    draw_sprite(sprite_index, image_index, x, y)
if (stage == 1)
{
    xsin2 = (cos((xsin / 10)) * 4)
    sprite_index = spr_moldsmalx_up
    if (room == room_storybattle)
    {
        g = instance_create(x, 320, obj_moldsmalx_part)
        g.c = 1
        g = instance_create(x, 350, obj_moldsmalx_part)
        g = instance_create(x, 380, obj_moldsmalx_part)
        g.c = 1
        instance_create(x, 410, obj_moldsmalx_part)
        obj_moldsmalx_part.bborder = (ystart + 100)
    }
    else
    {
        g = instance_create(x, (y + 170), obj_moldsmalx_part)
        g.c = 1
        g = instance_create(x, (y + 140), obj_moldsmalx_part)
        g = instance_create(x, (y + 110), obj_moldsmalx_part)
        g.c = 1
        instance_create(x, (y + 80), obj_moldsmalx_part)
    }
    if (room == room_end_castroll || room == room_monsteralign_test)
        obj_moldsmalx_part.bborder = (ystart + 100)
    stage = 2
}
if (stage == 2)
{
    height += 2
    y -= 4
    if (height > 104)
        stage = 3
}
if (stage == 3)
{
    obj_moldsmalx_part.f = 2
    xsin2 = (cos((xsin / 10)) * 4)
    xsin += 1
}
if (stage > 1)
{
    draw_sprite_part_ext(sprite_index, image_index, 0, 0, 50, height, (x + xsin2), y, 2, 2, c_white, (1 - merge_amt))
    draw_sprite_part_ext(merger, image_index, 0, 0, 50, height, (x + xsin2), y, 2, 2, c_white, merge_amt)
    merge_amt += 0.05
}
if (merge_amt > 1)
{
    ch = ((ch + 1) % 3)
    merge_amt = 0
    switch ch
    {
        case 0:
            sprite_index = spr_moldsmalx_up
            merger = 3195
            break
        case 1:
            sprite_index = spr_moldsmalx_up_red
            merger = 3196
            break
        case 2:
            sprite_index = spr_moldsmalx_up_ylw
            merger = 275
            break
    }

}
