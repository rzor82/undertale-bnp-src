push = 0
if (room == room_ruins_sewer2)
{
    sprite_index = spr_waterpushrock_sewer
    if (global.flag[32] == 2)
    {
        x += 120
        push = 1
    }
}
else if (global.flag[32] != 0)
{
    x += 80
    push = 1
}
