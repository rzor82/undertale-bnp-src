var room_id = global.currentroom
if ((room_id >= room_area1_room_of_fallen_stars && room_id <= room_area1_meetflowey) || (room >= room_introstory && room <= room_intromenu) || (room >= room_settings && room <= room_controltest))
    return "Somewhere";
if ((room_id >= room_ruins1 && room_id <= room_ruinsexit) || room_id == room_torhouse_bathroom || (room_id >= room_ruins_homehub && room_id <= room_ruins_home_walkway))
    return "The Ruins";
if ((room_id >= room_ruins_sewer3 && room_id <= room_ruins_sewer_switchpuzz) || (room_id >= room_ruins_sewer_tease && room_id <= room_ruins_sewer2))
    return "The Sewers";
if ((room_id >= room_tundra1 && room_id <= room_fogroom) || room_id == room_tundra_inn_2f_real || room_id == room_shop1 || room_id == room_tundra4A || room_id == room_tundra_lake || room_id == room_tundra_teenhangoutroom || room_id == room_tundra_turnbeforeteenhangout || (room_id >= room_icecave1 && room_id <= room_ice_dog) || room_id == room_tundra4A || room_id == room_tundra_qcshop_room || room_id == room_tundra_mkidintro)
    return "Snowdin";
if ((room_id >= room_water1 && room_id <= room_water_undynefinal3) || room_id == room_shop2 || room_id == room_shop5 || room_id == room_water13 || room_id == room_water_firepuzzle || room_id == room_water_mushroom || room_id == room_water_mirror || room_id == room_water_candy || room_id == room_water_temshop_room || room_id == room_water_prebhouse)
    return "Waterfall";
if ((room_id >= room_fire1 && room_id <= room_fire_finalelevator) || room_id == room_shop3 || room_id == room_shop4 || (room_id >= room_fire_labelevator && room_id <= room_truelab_elevatorinside) || room_id == room_fire_lavalake || room_id == room_fire_cliffview || room_id == room_fire_machinepit || room_id == room_fire_secrethallway || room_id == room_fire_spin || room_id == room_fire_brattycattyshop || room_id == room_fire_hotel_bpants || (room_id >= room_fire_hh_entrance && room_id <= room_fire_hh_lower))
    return "Hotland";
if (room_id == room_fire_hland_entrance)
    return "?????";
if ((room_id >= room_castle_elevatorout && room_id <= room_castle_trueexit) || room_id == room_asghouse_bathroom)
    return "New Home";
if ((room_id >= room_fire_precore && room_id <= room_fire_core_final) || room_id == room_fire_core_roadblock || room_id == room_fire_core_controlroom)
    return "The CORE";
if (room_id >= room_truelab_elevator && room_id <= room_truelab_power)
    return "True Lab";
if (room_id == room_water_undynefinal3 || room_id == room_fire_elevator || room_id == room_fire_finalelevator || room_id == room_fire_labelevator || room_id == room_truelab_elevatorinside || room_id == room_riverman_transition || room_id == room_dogshrine || room_id == room_dogshrine_ruined || room_id == room_dogshrine_mewmew)
    return "Somewhere";
if (global.flag[479] == 0 && (room_id == room_truelab_elevator || room_id == room_truelab_hall1))
    return "Somewhere";
return "Nowhere???";
