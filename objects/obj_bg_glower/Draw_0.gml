d += 0.05
if obj_time.right
    h += 1
g = make_color_hsv(h, (100 + (sin(d) * 100)), 255)
__background_set_colour(g)
