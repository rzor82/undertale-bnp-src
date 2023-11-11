special = false
myinteract = 0
image_xscale = 1
image_yscale = 1
script_execute(scr_depth, 0, 0, 0, 0, 0)
backer = 0
if (room == room_tundra_snowpuzz || room == room_fire_hotdog)
    backer = 1
if backer
{
    back = scr_marker(x, y, spr_sanscheckback)
    with (back)
        depth = (other.depth + 10)
}
