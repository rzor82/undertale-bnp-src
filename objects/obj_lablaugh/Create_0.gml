image_index = 14
image_alpha = 0
image_speed = 0
if (room == room_truelab_hall3)
{
    switch global.entrance
    {
        case 2:
            x = 220
            break
        case 5:
            x = 40
            break
        case 20:
            x = 780
            break
        case 21:
            x = 1040
            break
    }

}
a = 0
con = -2
spook = global.flag[479]
if (spook == 0 && global.flag[478] < 4)
    spook = random(global.flag[478]) < 0.5
if (spook == 0)
    instance_destroy()
else
    global.flag[479] = 1
