con = 0
rotatenoise = caster_load("music/rotate.ogg")
createnoise = caster_load("music/create.ogg")
image_speed = 0
if instance_exists(obj_heartshield)
{
    with (instance_create(0, 0, obj_heartshield))
        target = other.id
}
