event_inherited()
depth = -555
alarm[0] = (20 + round(random(30)))
if instance_exists(obj_face)
{
    with (obj_face)
    {
        if (id != other.id)
        {
            with (other)
                instance_destroy()
        }
    }
}
should_blink = 0
does_face_blink = 0
anim_speed = 0.25
image_speed = anim_speed
scr_set_face()
facesurf = -4
