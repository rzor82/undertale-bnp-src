special = false
backer = 0
if (room == room_tundra_snowpuzz || room == room_fire_hotdog)
    backer = 1
if (room == room_fire1)
    special = true
if backer
{
    back = scr_marker(x, y, spr_sanscheckback)
    with (back)
        depth = (other.depth + 10)
}
if (instance_exists(obj_sans_room) && backer)
    back.depth = (obj_sans_room.depth + 100)
if instance_exists(obj_sans_sleep)
    depth = (obj_sans_sleep.depth + 1)
else
    scr_depth()
