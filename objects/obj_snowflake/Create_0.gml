image_xscale = 0.6
image_yscale = 0.9
image_speed = 0
image_angle = random(360)
vspeed = (2 + (random(1) * choose(-1, 1)))
siner_inc = random(0.5)
wind_offset = 0
x_variance = 1
siner = 0
depth = 2
wind = 0
tol = 0
if instance_exists(obj_snowgen)
{
    tol = abs(obj_snowgen.tolerance)
    wind = obj_snowgen.wind
}
what = "this has got to be the worst way to generate snow. please, don't do this."
