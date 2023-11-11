image_speed = 0
image_index = 0
go = 0
sansscroll = 0
fadeamount = 0
faded = 0
customalpha = 1
if (instance_exists(obj_battlebg_screenshotter) && surface_exists(obj_battlebg_screenshotter.surface))
{
    with (obj_battlebg_screenshotter)
    {
        if (!sprite_exists(ss))
            ss = sprite_create_from_surface(surface, 0, 0, surface_get_width(surface), surface_get_height(surface), false, false, 0, 0)
        other.sprite_index = ss
    }
    image_xscale = 2
    image_yscale = 2
}
else if (global.currentroom == room_fire_core_mettmeetingplace || global.battlegroup == 94 || global.battlegroup == 81 || global.battlegroup == 80)
{
    sprite_index = spr_battlebg_mettexneo
    fadeamount = 7
}
else if (global.currentroom >= room_ruins1 && global.currentroom <= room_ruins11)
    image_index = 2
else if (global.currentroom == room_ruins12)
    image_index = 4
else if (global.currentroom == room_fogroom || global.battlegroup == 27)
{
    sprite_index = spr_battlebg_new_fogroom
    fadeamount = 8
}
else if (global.currentroom >= room_ruins13 && global.currentroom <= room_ruins19)
    image_index = 2
else if (global.currentroom == room_basement4)
{
    sprite_index = spr_battlebg_new_torbasement
    fadeamount = 4
}
else if (global.currentroom == room_area1_meetflowey)
{
    sprite_index = spr_battlebg_new_floweyb
    fadeamount = 4
}
else if (global.currentroom >= room_tundra1 && global.currentroom <= room_tundra7)
    image_index = 5
else if ((global.currentroom >= room_tundra8A && global.currentroom <= room_tundra_iceexit) || global.currentroom == room_tundra_turnbeforeteenhangout)
    image_index = 3
else if (global.currentroom >= room_tundra_iceexit && global.currentroom <= room_tundra_dangerbridge)
    image_index = 6
else if (global.currentroom == room_water12)
    image_index = 11
else if (global.currentroom >= room_water1 && global.currentroom < room_water20)
    image_index = 9
else if (global.currentroom == room_water20 || global.battlegroup == 92)
{
    sprite_index = spr_battlebg_new_undying
    fadeamount = 6
}
else if (global.currentroom == room_water_undynefinal)
    image_index = 12
else if (global.currentroom == room_water_undynefinal2)
    image_index = 13
else if (global.currentroom == room_water_undynefinal3)
    image_index = 14
else if (global.currentroom == room_fire_lab1 || global.battlegroup == 48)
{
    sprite_index = spr_battlebg_quiz
    image_speed = 0.06444444444444444
    image_xscale = 2
    image_yscale = 2
    image_index = 0
}
else if (global.currentroom >= room_fire1 && global.currentroom <= room_fire_elevator_r1)
    image_index = 15
else if (global.currentroom >= room_fire_elevator_r2 && global.currentroom <= room_fire_elevator_l2)
    image_index = 16
else if (global.currentroom >= room_fire_elevator_l3 && global.currentroom <= room_fire_savepoint2)
{
    sprite_index = spr_battlebg_hotland3rdfloor
    image_speed = 0.5
}
else if (global.currentroom >= room_ruins_sewer_end && global.currentroom <= room_ruins_sewer_switchpuzz)
{
    sprite_index = spr_battlebg_sewer
    image_speed = 0.08
}
else if (global.currentroom == room_fire_spider || global.battlegroup == 56)
{
    sprite_index = spr_battlebg_spider
    fadeamount = 6
}
else if ((global.currentroom >= room_fire_precore && global.currentroom <= room_fire_core_premett) || global.currentroom == room_fire_core_roadblock)
{
    sprite_index = spr_battlebg_core1
    image_index = 0
    image_speed = 0.08
}
else if (global.currentroom == room_sanscorridor || global.battlegroup == 95)
{
    sprite_index = spr_battlebg_sansbg
    fadeamount = 7
}
x = ((room_width - sprite_width) / 2)
fade = 0
