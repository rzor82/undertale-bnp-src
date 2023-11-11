if (scr_murderlv() >= 12 || (!instance_exists(obj_launchpad)))
{
    instance_create(x, (y + 16), obj_spagnot)
    instance_destroy()
    return;
}
if (global.flag[7] == 1)
    global.flag[392] = 2
image_speed = 0
myinteract = 0
num_coins = 100
collected = 0
coins[0] = noone
alpha = 0
siner = 0
fade = 0
con = 0
scr_depth()
black = scr_marker(0, 0, spr_pixblk)
black.image_xscale = room_width
black.image_yscale = room_height
black.image_alpha = 0
black.depth = -1000
if (global.flag[392] == 0)
{
    distx = (room_width / 20)
    disty = (room_height / 30)
    startx = (distx / 2)
    starty = (((-room_height) - 100) + (disty / 2))
    endx = (room_width - startx)
    endy = (obj_launchpad.y - 15)
    num_spots = floor((((endx - startx) / distx) * ((endy - starty) / disty)))
    if (num_spots % 2)
        num_spots -= 1
    values = ds_list_create()
    for (i = 0; i < num_coins; i++)
        ds_list_add(values, 1)
    for (i = num_coins; i < num_spots; i++)
        ds_list_add(values, 0)
    ds_list_shuffle(values)
    index = 0
    coin_index = 0
    for (i = starty; i < endy; i += disty)
    {
        for (j = startx; j < endx; j += distx)
        {
            if (index < ds_list_size(values) && ds_list_find_value(values, index++))
            {
                coins[coin_index] = scr_marker(j, i, spr_menugoldbttn)
                with (coins[coin_index++])
                    scr_depth()
            }
        }
    }
    ds_list_destroy(values)
}
