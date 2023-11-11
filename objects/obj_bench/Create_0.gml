image_speed = 0
myinteract = 0
buffer = 0
left = 1
sit = -4
scr_depth()
customsitcon = 0
if (room == room_fire_rpuzzle || room == room_fire_hh_entrance)
    sprite_index = spr_bench_hotland
else if (room == room_fire_core_premett)
{
    sprite_index = spr_bench_core
    left = 0
}
else if (room == room_ruins18)
{
    sprite_index = spr_bench_ruins
    left = 0
}
else if (room == room_tundra_dock)
{
    sprite_index = spr_bench_riverperson_tundra
    left = 0
}
else if (room == room_water_dock)
    sprite_index = spr_bench_riverperson_waterfall
else if (room == room_fire_hh_lower)
    sprite_index = spr_bench_hotland
else if (room == room_fire_dock)
    sprite_index = spr_bench_riverperson_hotland
else if (room == room_tundra_snowpuzz)
    sprite_index = spr_bench_tundra
else if (room == room_water5A)
    sprite_index = spr_bench_waterfall
else if (room == room_fire_core_topright || room == room_tundra_inn_1f || room == room_fire_hotel_bpants || room == room_tundra_teenhangoutroom)
{
    if (room == room_tundra_teenhangoutroom)
        sprite_index = spr_solidsmall
    solid = 0
    visible = false
}
else
    sprite_index = spr_bench
