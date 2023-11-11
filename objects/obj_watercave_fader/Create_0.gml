sprite_index = spr_pixblk
image_xscale = 900
image_yscale = 900
x = (__view_get(0, 0) - 10)
y = (__view_get(1, 0) - 10)
oalpha = 0.5
image_alpha = oalpha
top = spr_tobydogscoot
if (room == room_water_preundyne)
    instance_destroy()
