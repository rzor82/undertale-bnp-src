scr_depth()
y += vel[1]
image_angle += rot
if (image_alpha < 1)
    image_alpha += 0.1
life -= 0.04
image_xscale = life
image_yscale = life
if (life <= 0)
    instance_destroy()
