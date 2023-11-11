glowamt = 0.5
surface = -4
if (room == room_fire_lab1)
{
    if (global.plot > 125 || scr_murderlv() >= 12)
    {
        instance_destroy()
        return;
    }
}
sprite_index = spr_darkhalo_big
surface = surface_create(room_width, room_height)
