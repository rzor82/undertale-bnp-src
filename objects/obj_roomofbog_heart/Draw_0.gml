draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if obj_time.right
    x += 8
if obj_time.up
    y -= 8
if obj_time.down
    y += 8
if obj_time.left
    x -= 8
if (x > 944)
    x = 944
if (x < 0)
    x = 0
if (y > 524)
    y = 524
if (y < 0)
    y = 0
global.dinv -= 1
if (global.dinv > 0)
    image_speed = 0.5
else
{
    image_index = 0
    image_speed = 0
}
if place_meeting(x, y, obj_tobybullet_parent)
{
    with (obj_tobybullet_parent)
        event_user(12)
}
if (global.dhp <= 0 && special == false)
    instance_create(x, y, obj_robog_heartdefeated)
