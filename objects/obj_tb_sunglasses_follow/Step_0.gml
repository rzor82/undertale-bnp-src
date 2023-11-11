x = lerp(x, des_x, 0.25)
y = lerp(y, des_y, 0.25)
image_angle = lerp(image_angle, des_rot, 0.25)
if (!instance_exists(obj_tb_wheel_gen))
{
    instance_destroy()
    with (obj_heart_outline)
        instance_destroy()
}
