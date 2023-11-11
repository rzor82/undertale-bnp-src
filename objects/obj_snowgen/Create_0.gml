if (instance_number(object_index) > 1)
    instance_destroy()
prev_x = __view_get(0, 0)
prev_y = __view_get(1, 0)
w = __view_get(2, 0)
h = __view_get(3, 0)
x = prev_x
y = prev_y
tolerance = 10
active = false
instawind = 0
slowfall = 0
pushing = 0
shove = 0
snow_col = 16777215
limit = 200
buffer = 1
lock = 0
wind = 0
for (var i = 0; i < 4; i++)
    gen[i] = 0
alarm[0] = 3
