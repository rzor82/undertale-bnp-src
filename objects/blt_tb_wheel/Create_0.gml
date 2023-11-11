image_xscale = 2
image_yscale = 2
rot = 0
diff = 0
type = choose(0, 1)
dir = 0
if (type == 0)
{
    x = (room_width + (sprite_width / 2))
    y = (global.idealborder[3] - (sprite_height / 2))
    dir = 0
}
else
{
    x = (0 - (sprite_width / 2))
    y = (global.idealborder[3] - (sprite_height / 2))
    dir = 1
}
con = 0
spd = 8
dmg = 1
wheeltut = 0
