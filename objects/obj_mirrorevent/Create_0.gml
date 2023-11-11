triggerx = global.flag[297]
triggery = global.flag[298]
if (global.flag[365] > 0)
{
    if (global.flag[365] >= 2)
    {
        with (scr_marker(triggerx, triggery, spr_fileerased_crack))
        {
            image_blend = c_black
            x -= (sprite_width / 2)
            y -= (sprite_height / 2)
            scr_depth()
            depth += (sprite_height * 10)
        }
    }
    instance_destroy()
}
image_xscale = (room_width / sprite_width)
killcount = global.kills
visible = false
collided = 0
marker = -4
prevy = -1
dist = 50
con = 0
show_debug_message((("Entering room with " + string(killcount)) + " kills."))
