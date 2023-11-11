var overlay;
var border_id = argument0
var color = global.screen_border_color
if (argument_count > 1)
    color = argument1
var scaling = ((window_get_width() / window_get_height()) > 1.77777777777778 ? (window_get_width() / 960) : (window_get_height() / 540))
var expectedw = (960 * scaling)
var expectedh = (540 * scaling)
var offsetx = (max(0, (window_get_width() - expectedw)) / 2)
var offsety = (max(0, (window_get_height() - expectedh)) / 2)
var background = "bg_border_"
draw_enable_alphablend(false)
if (border_id == 1)
    background += "line"
if (border_id == 2)
{
    background = -4
    var fade_time = 60
    if instance_exists(obj_stalkerflowey)
    {
        global.screen_border_state += (1 / fade_time)
        if (global.screen_border_state > 1)
            global.screen_border_state = 1
    }
    else
    {
        global.screen_border_state -= (1 / fade_time)
        if (global.screen_border_state < 0)
            global.screen_border_state = 0
    }
    var idle_min = 300000
    var idle_time = 0
    if (obj_time.idle && current_time >= (obj_time.idle_time + idle_min))
        idle_time = (current_time - (obj_time.idle_time + idle_min))
    var idle_frame = (floor((idle_time / 100)) % 3)
    var base = -4
    for (var i = 0; i < 9; i++)
    {
        overlay[i, 0] = -4
        overlay[i, 1] = spr_undertaletitle
        overlay[i, 2] = spr_undertaletitle
    }
    if (os_type == os_psvita)
    {
        base = bg_border_sepia_544
        overlay[0, 1] = spr_talkbt
        overlay[0, 2] = spr_undyneb_face3
        overlay[1, 1] = spr_heartorange
        overlay[1, 2] = spr_wizard_orbhurt
        overlay[2, 1] = spr_undertaletitle
        overlay[2, 2] = spr_oolbone_ja
        overlay[3, 1] = button_ps4_l3
        overlay[3, 2] = spr_undertaletitle
        overlay[4, 1] = buttonL_nx_zl
        overlay[4, 2] = spr_whimsunhurt
        overlay[5, 1] = buttonL_vita_triangle
        overlay[5, 2] = spr_vulkinface5
        if (idle_frame == 1)
        {
            overlay[0, 0] = bg_border_sepia_544_1a
            overlay[1, 0] = bg_border_sepia_544_2a
            overlay[2, 0] = bg_border_sepia_544_3a
            overlay[3, 0] = bg_border_sepia_544_4a
            overlay[4, 0] = bg_border_sepia_544_5a
            overlay[5, 0] = bg_border_sepia_544_6a
        }
        else if (idle_frame == 2)
        {
            overlay[0, 0] = bg_border_sepia_544_1b
            overlay[1, 0] = bg_border_sepia_544_2b
            overlay[2, 0] = bg_border_sepia_544_3b
            overlay[3, 0] = bg_border_sepia_544_4b
            overlay[4, 0] = bg_border_sepia_544_5b
            overlay[5, 0] = bg_border_sepia_544_6b
        }
        if (global.screen_border_state > 0)
            overlay1 = 2853
    }
    else
    {
        base = bg_border_sepia_1080
        overlay[0, 1] = spr_blconbelow
        overlay[0, 2] = spr_truechara_laugh
        overlay[1, 1] = spr_superbone
        overlay[1, 2] = buttonL_nx_zr
        overlay[2, 1] = spr_barktry_ja
        overlay[2, 2] = spr_finalfroggit
        overlay[3, 1] = spr_undertaletitle
        overlay[3, 2] = spr_undynex_example
        overlay[4, 1] = spr_vegetoid
        overlay[4, 2] = spr_blconbelow
        overlay[5, 1] = spr_bookshelf
        overlay[5, 2] = spr_undertaletitle
        overlay[6, 1] = spr_forcefield_right_middle
        overlay[6, 2] = spr_alphyshelper_embarrass
        overlay[7, 1] = spr_chipdoor_chippart
        overlay[7, 2] = spr_gb_npc
        overlay[8, 1] = spr_undynea_ut
        overlay[8, 2] = spr_uppbutton
        if (idle_frame == 1)
        {
            overlay[0, 0] = bg_border_sepia_1080_1a
            overlay[1, 0] = bg_border_sepia_1080_2a
            overlay[2, 0] = bg_border_sepia_1080_3a
            overlay[3, 0] = bg_border_sepia_1080_4a
            overlay[4, 0] = bg_border_sepia_1080_5a
            overlay[5, 0] = bg_border_sepia_1080_6a
            overlay[6, 0] = bg_border_sepia_1080_7a
            overlay[7, 0] = bg_border_sepia_1080_8a
            overlay[8, 0] = bg_border_sepia_1080_9a
        }
        else if (idle_frame == 2)
        {
            overlay[0, 0] = bg_border_sepia_1080_1b
            overlay[1, 0] = bg_border_sepia_1080_2b
            overlay[2, 0] = bg_border_sepia_1080_3b
            overlay[3, 0] = bg_border_sepia_1080_4b
            overlay[4, 0] = bg_border_sepia_1080_5b
            overlay[5, 0] = bg_border_sepia_1080_6b
            overlay[6, 0] = bg_border_sepia_1080_7b
            overlay[7, 0] = bg_border_sepia_1080_8b
            overlay[8, 0] = bg_border_sepia_1080_9b
        }
        if (global.screen_border_state > 0)
            overlay1 = 2839
    }
    if (base != -4)
    {
        scr_draw_background_ps4(base, 0, offsety)
        if (overlay[0, 0] != -4)
        {
            if (global.screen_border_state > 0)
            {
                draw_enable_alphablend(true)
                draw_set_alpha((global.screen_border_state * 0.5))
            }
            scr_draw_background_ps4(overlay[0, 0], (overlay[0, 1] + offsetx), (overlay[0, 2] + offsety))
            if (global.screen_border_state > 0)
            {
                draw_set_alpha(1)
                draw_enable_alphablend(false)
            }
        }
        for (i = 1; i < 9; i++)
        {
            if (overlay[i, 0] != -4)
                scr_draw_background_ps4(overlay[i, 0], (overlay[i, 1] + offsetx), (overlay[i, 2] + offsety))
        }
    }
}
if (border_id == 3)
{
    background = -4
    border_id = 0
    var room_id = global.currentroom
    if (room == room_intromenu && instance_exists(obj_intromenu) && obj_intromenu.roome > room_start)
    {
        room_id = obj_intromenu.roome
        global.currentroom = room_id
    }
    if ((room_id >= room_ruins1 && room_id <= room_ruinsexit) || room_id == room_torhouse_bathroom || room_id >= room_ruins_homehub || room_id <= room_ruins_home_walkway)
        border_id = 4
    if ((room >= room_introstory && room < room_intromenu) || (room >= room_settings && room <= room_controltest))
        border_id = 2
    if (room_id == room_ruins_sewer_tease || room_id == room_ruins6_alt)
        border_id = 4
    if (room_id == room_fire_lavalake || room_id == room_fire_cliffview || room_id == room_fire_machinepit || room_id == room_fire_secrethallway || room_id == room_fire_spin || room_id == room_fire_brattycattyshop || room_id == room_fire_hotel_bpants || (room_id >= room_fire_hh_entrance && room_id <= room_fire_hh_lower))
        border_id = 7
    if ((room_id >= room_tundra1 && room_id <= room_fogroom) || room_id == room_tundra_inn_2f_real || room_id == room_shop1 || room_id == room_tundra4A || room_id == room_tundra_lake || room_id == room_tundra_teenhangoutroom || room_id == room_tundra_turnbeforeteenhangout || (room_id >= room_icecave1 && room_id <= room_ice_dog) || room_id == room_tundra4A || room_id == room_tundra_qcshop_room || room_id == room_tundra_mkidintro || room_id == room_tundra2_alt)
        border_id = 5
    if ((room_id >= room_water1 && room_id <= room_water_undynefinal3) || room_id == room_shop2 || room_id == room_shop5 || room_id == room_water_gersonshop || room_id == room_water_temshop_room || room_id == room_water_prebhouse)
        border_id = 6
    if ((room_id >= room_fire1 && room_id <= room_fire_finalelevator) || room_id == room_shop3 || room_id == room_shop4 || room_id == room_fire_hland_entrance || (room_id >= room_fire_labelevator && room_id <= room_truelab_elevatorinside))
        border_id = 7
    if ((room_id >= room_castle_elevatorout && room_id <= room_castle_trueexit) || room_id == room_asghouse_bathroom)
        border_id = 8
    if (room_id >= room_truelab_elevator && room_id <= room_truelab_power)
        border_id = 9
    if ((global.flag[479] == 0 && (room_id == room_truelab_elevator || room_id == room_truelab_hall1)) || room_id == room_water_undynefinal3 || room_id == room_fire_elevator || room_id == room_fire_finalelevator || room_id == room_fire_labelevator || room_id == room_truelab_elevatorinside || room_id == room_riverman_transition || room_id == room_dogshrine || room_id == room_dogshrine_ruined || room_id == room_dogshrine_mewmew)
        border_id = 3.5
    if (room_id == ROOM_MONITOR || room_id == ROOM_DOOR || room_id == ROOM_MAN || room_id == room_area1_room_of_fallen_stars || room_id == room_area1_meetflowey || room_id == ROOM_TESTING || (room_id >= room_f_menu && room_id <= room_f_phrase))
        border_id = 0
    if (room_id == room_water13 || room_id == room_water_firepuzzle || room_id == room_water_mushroom || room_id == room_water_mirror || room_id == room_water_candy)
        border_id = 6
    if ((room_id >= room_fire_precore && room_id <= room_fire_core_final) || room_id == room_fire_core_roadblock || room_id == room_fire_core_controlroom)
        border_id = 14
    if (room_id == room_ruins_sewer_end || room_id == room_ruins_sewer_pretrouble || room_id == room_ruins_sewer_trouble || room_id == room_ruins_sewer1 || room_id == room_ruins_sewer2 || room_id == room_ruins_sewer3 || room_id == room_ruins_sewer4 || room_id == room_ruins_sewer_ladder1 || room_id == room_ruins_sewer_switchpuzz)
        border_id = 13
    if (room_id == room_dogshrine_mewmew)
        border_id = 11
    if (room_id == room_f_start || room_id == room_f_intro)
        border_id = 2
    if (room_id >= room_water_prebhouse && room_id <= room_water_postbhouse)
        border_id = 6
    if (room_id == room_outsideworld)
        border_id = 16
    if (border_id != global.screen_border_state)
    {
        if (global.screen_border_state != 0)
        {
            if (global.screen_border_dynamic_fade_id == border_id)
                global.screen_border_dynamic_fade_level = (1 - global.screen_border_dynamic_fade_level)
            else
                global.screen_border_dynamic_fade_level = 1
            global.screen_border_dynamic_fade_id = global.screen_border_state
        }
        global.screen_border_state = border_id
    }
    if (global.screen_border_dynamic_fade_level > 0)
    {
        fade_time = 30
        global.screen_border_dynamic_fade_level -= (1 / fade_time)
        if (global.screen_border_dynamic_fade_level > 0)
        {
            scr_draw_screen_border(global.screen_border_dynamic_fade_id)
            draw_set_alpha((1 - global.screen_border_dynamic_fade_level))
        }
        else
        {
            global.screen_border_dynamic_fade_id = 0
            global.screen_border_dynamic_fade_level = 0
        }
    }
}
if (border_id == 3.5)
{
    background = -4
    draw_set_color(color)
    ossafe_fill_rectangle(0, 0, (window_get_width() - 1), (window_get_height() - 1))
    draw_set_color(c_white)
}
if (border_id > 3.5 && background == -4)
    background = "bg_border_"
if (border_id == 4)
    background += "ruins"
if (border_id == 5)
    background += "tundra"
if (border_id == 6)
    background += "water1"
if (border_id == 14)
    background += "core"
if (border_id == 13)
    background += "sewer"
if (border_id == 16)
    background += "overworld"
if (border_id == 7)
    background += "fire"
if (border_id == 8)
    background += "castle"
if (border_id == 9)
    background += "truelab"
if (border_id == 10)
    background += "rad"
if (border_id == 11)
    background += "anime"
if (border_id == 12)
    background += "dog"
if (background != -4 && background != "bg_border_" && border_id > 0)
{
    background += "_"
    if (os_type == os_psvita && sprite_exists(asset_get_index((background + "544"))))
        background += "544"
    else
        background += "1080"
    var bg_sprite = asset_get_index(background)
    if sprite_exists(bg_sprite)
        scr_draw_background_ps4(bg_sprite, offsetx, offsety)
    else
        show_debug_message(("No such border: " + background))
}
draw_set_alpha(1)
draw_enable_alphablend(true)
