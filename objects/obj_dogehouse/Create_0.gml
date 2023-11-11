scr_depth()
backer = 0
if (room == room_tundra5)
    backer = 1
if backer
{
    back = instance_create(x, y, obj_dogehouseback)
    with (back)
        depth = (other.depth + 10)
}
