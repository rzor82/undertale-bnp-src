if (room == room_water5)
{
    if (global.plot > 106)
        instance_destroy()
}
if (room == room_fire_hh_mainhub)
{
    if (global.flag[123] != 0)
        instance_destroy()
}
if (room == room_water19 && (global.plot > 118 || scr_murderlv() > 6))
    instance_destroy()
if (room == room_castle_throneroom)
{
    image_xscale = 50
    if (global.plot > 207)
        instance_destroy()
}
if (room == room_sanscorridor)
{
    if (scr_murderlv() != 16 && global.flag[7] == 0)
    {
        if (global.plot > 200)
        {
            instance_destroy()
            return;
        }
        if (global.flag[87] != 50)
            instance_create((x + 100), (y + 10), obj_asgore_actor)
        if instance_exists(obj_asgore_actor)
        {
            with (obj_asgore_actor)
            {
                sprite_index = spr_asgore_r
                image_blend = c_black
            }
        }
    }
}
if (room == room_water19)
    image_yscale = 10
if (room == room_water_friendlyhub)
    image_yscale = 20
if (room == room_fire_cookingshow)
    image_yscale = 5
if (room == room_fire_hotelfront_1)
{
    image_xscale = 5
    if (global.flag[257] != 1)
        instance_destroy()
}
if (room == room_fire_cookingshow && global.plot > 134)
    instance_destroy()
con = 0
