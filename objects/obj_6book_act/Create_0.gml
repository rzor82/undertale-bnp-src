image_angle = 0
image_speed = 0
type = 0
con = 0
gang = 1
if (x < 320)
{
    hspeed = 2
    gang = 2
}
else
    hspeed = -2
with (obj_speedrun_tracker)
{
    gang = other.gang
    event_user(0)
}
sprite_index = scr_getsprite(sprite_index)
