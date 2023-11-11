image_xscale = 1
image_yscale = 1
target = obj_heart
if instance_exists(target)
{
    x = (target.x - ((sprite_width - target.sprite_width) / 2))
    y = (target.y - ((sprite_height - target.sprite_height) / 2))
    depth = target.depth
}
forcedraw = 0
centered = -4
unshield = 0
surface = -4
sounded = 0
xoff = 0
yoff = 0
