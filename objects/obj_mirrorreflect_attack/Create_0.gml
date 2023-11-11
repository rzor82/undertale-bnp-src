global.border = 1
SCR_BORDERSETUP()
for (var i = 0; i < 4; i++)
    border[i] = global.idealborder[i]
marker = scr_marker(obj_heart.x, obj_heart.y, spr_heartpink)
with (obj_heart)
{
    depth = (other.marker.depth - 1)
    movement = -1
    pink = 1
}
hardmode = global.flag[6]
timer = global.firingrate
orig[0] = border[0]
orig[1] = border[1]
image_alpha = 1
visible = false
con = 0
