myinteract = 0
facing = 0
troublecon = 0
direction = 270
talkedto = 0
image_speed = 0
warp_talked = 0
warp_times = 0
chattedwith = 0
donetalking = 0
nubcon = 0
fun = false
yscale = 0
amp = 0
siner = 0
funoverride = 0
if (room == room_ruins7 || room == room_ruins11 || room == room_ruins_sewer_pretrouble)
{
    sprite_index = spr_crybugnpc
    if ((room != room_ruins_sewer_pretrouble && global.plot < 16) || scr_murderlv() > 0)
        instance_destroy()
}
if (room == room_tundra_teenhangoutroom)
{
    sprite_index = spr_siskid
    if (x == 180)
        sprite_index = bg_labtv
    if (x == 330)
        sprite_index = spr_coolslimeteen
    if (x == 189)
        sprite_index = spr_npc_nubert
    if (sprite_index == spr_siskid || sprite_index == spr_coolslimeteen)
    {
        if (global.flag[446] == 0 || scr_murderlv() >= 2)
            instance_destroy()
    }
    if (sprite_index == spr_npc_nubert)
    {
        if (global.flag[7] == 0)
            instance_destroy()
    }
}
if (room == room_fire_lab2)
{
    sprite_index = spr_npc_mewmew
    if (global.plot > 160)
    {
        sprite_index = spr_trashdummy
        x += 10
        y += 17
    }
    else
        image_index = global.flag[158]
}
if (room == room_ruins5)
{
    sprite_index = spr_smallfrog_water2
    if (global.kills >= 6)
        instance_destroy()
}
if (room == room_ruins7A)
{
    sprite_index = spr_smallfrog_water
    if (global.kills >= 6)
        instance_destroy()
}
if (room == room_tundra_iceexit)
{
    sprite_index = spr_npc_glyde
    if (global.flag[7] == 0)
    {
        if (global.flag[282] != 1 || global.flag[282] != 5 || global.flag[222] == 1 || scr_murderlv() >= 7)
            instance_destroy()
    }
    if (global.flag[282] == 1)
        instance_destroy()
}
if (room == room_ruins_home_store)
{
    if (x == 120)
    {
        sprite_index = spr_npc_milklooker
        if (scr_murderlv() > 0)
            instance_destroy()
    }
    else if (x == 230)
    {
        sprite_index = spr_troubleboys_hitch_store
        if (global.flag[129] != 0 || global.flag[7] == 1)
            instance_destroy()
    }
    else
    {
        sprite_index = spr_croquetroll_item
        if (global.flag[231] > 0)
            instance_destroy()
    }
}
if (room == room_ruins_homehub)
{
    if (y < 620)
        sprite_index = spr_birdly_npc
    if (x == 1268)
    {
        sprite_index = spr_npc_nubert
        if (global.flag[7] == 1)
            instance_destroy()
    }
    if (x == 324)
        sprite_index = spr_crabtime
    if (x == 222)
        sprite_index = spr_clambrafish
    if (x == 668)
        sprite_index = spr_crybugnpc
    if (x == 966)
    {
        if (global.flag[129] != 0 || global.flag[7] == 0)
            instance_destroy()
        sprite_index = spr_troubleboys_hitch
    }
    if (scr_murderlv() > 0)
        instance_destroy()
}
if (room == room_fire_hh_shortcut)
{
    if (x > 110)
        sprite_index = spr_purpleworker
    else
        sprite_index = spr_vulkinnpc_worker
    if (x == 160)
        sprite_index = spr_npc_cactusworker
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_fire_hh_mainhub)
{
    if (x == 606)
        sprite_index = spr_coolrat
    if (x == 1266)
        sprite_index = spr_npc_clothesoopsie
    if (x == 435)
        sprite_index = spr_npc_squidkid
    if (x == 832)
    {
        if (global.flag[123] == 0)
            y += 50
        sprite_index = spr_npc_sweatingfish
    }
    if (x == 708)
        sprite_index = spr_npc_froghat
    if (x == 1156)
        sprite_index = spr_npc_pyramidhead
    if (x == 903 || x == 920)
    {
        sprite_index = spr_npc_axolotl_stand
        if (global.flag[123] == 0)
            instance_destroy()
    }
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_fire_hh_lower)
{
    if (x == 58)
        sprite_index = spr_npc_conehead
    if (x == 291)
        sprite_index = spr_npc_shadesguy
    if (x == 154)
        sprite_index = spr_npc_demonphone
    if (x == 255)
        sprite_index = spr_npc_fakehuman
    if (x == 427)
        sprite_index = spr_npc_static
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_fire_hh_entrance)
{
    if (x < 400)
    {
        if (global.flag[242] == 1)
            instance_destroy()
        sprite_index = spr_puppydough_icecream_item
    }
    else
    {
        sprite_index = spr_npc_mopsy
        if (scr_murderlv() >= 12)
            instance_destroy()
    }
}
if (room == room_water_prewaterfall)
{
    sprite_index = spr_inkcat
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_tundra_grillby)
{
    if (scr_murderlv() >= 2)
        instance_destroy()
    if (x > 230)
        sprite_index = spr_skateboardgirl_alt
    else
        sprite_index = spr_fukufire_alt
    if (global.plot < 160 || global.plot > 175)
        instance_destroy()
}
if (room == room_water_bhouse_stairs)
{
    sprite_index = spr_umbrellaman
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_fire_spider)
{
    sprite_index = spr_megaweb
    if (scr_murderlv() >= 12)
        instance_destroy()
    kk = 0
    if (global.flag[397] != 0)
        kk = 1
    if (global.plot < 165)
        kk = 1
    if (kk == 1)
        instance_destroy()
}
if (room == room_water_bhouse_lockers)
{
    sprite_index = spr_npc_flounder
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_water_dock)
{
    sprite_index = spr_kafu
    if (scr_murderlv() >= 8 || global.flag[7] == 0)
        instance_destroy()
}
if (room == room_tundra_dock)
{
    sprite_index = spr_kafu
    if (scr_murderlv() >= 8 || global.flag[7] == 1 || global.plot < 160)
        instance_destroy()
}
if (room == room_fire_dock)
{
    sprite_index = spr_kafu
    if (scr_murderlv() >= 8 || global.flag[7] == 1 || global.plot > 160)
        instance_destroy()
}
if (room == room_water_bhouse_outside)
{
    sprite_index = spr_ice_boy
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_water_prebhouse)
{
    if (x < 150)
        sprite_index = spr_giantyeti
    else
        sprite_index = spr_angree
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_water_bhouse_splitpath)
{
    sprite_index = spr_nervous
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_water_bhouse_sauna1)
{
    if (x > 180)
        sprite_index = spr_moonman
    else
        sprite_index = spr_dete
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_water_bhouse_cragview)
{
    sprite_index = spr_balcony_man
    if (scr_murderlv() >= 16)
        instance_destroy()
}
if (room == room_fire_newsreport)
{
    sprite_index = spr_firedmonsternpc
    if (global.plot < 160 || scr_murderlv() >= 9)
        instance_destroy()
}
if (room == room_ruins9)
{
    if (x < 400)
        sprite_index = spr_slimemonster
    else
        sprite_index = spr_mikewazowski2
    if (global.plot < 16 || scr_murderlv() > 0)
        instance_destroy()
}
if (room == room_ruins14 || room == room_ruins16)
{
    sprite_index = spr_slimemonster
    if (global.plot < 16 || scr_murderlv() > 0)
        instance_destroy()
}
if (room == room_ruins15E || room == room_ruins17)
{
    sprite_index = spr_mikewazowski2
    if (global.plot < 16 || scr_murderlv() > 0)
        instance_destroy()
}
if (room == room_water_mushroom)
{
    if (x > 100)
        sprite_index = spr_stuckshroom
    else
        sprite_index = spr_plip
    if (scr_murderlv() >= 8)
    {
        with (obj_doorC)
            instance_destroy()
        instance_destroy()
    }
}
if (room == room_tundra_qcshop_room)
{
    sprite_index = spr_npc_qc_stand
    if (scr_murderlv() >= 7)
    {
        x += 12
        y += 44
        sprite_index = spr_notepaper
    }
}
if (room == room_water_gersonshop)
{
    sprite_index = spr_gerson_npc
    if (scr_murderlv() >= 10)
        sprite_index = spr_gersonupset_npc
}
if (room == room_fire_brattycattyshop)
{
    if (x > 150)
        sprite_index = spr_npc_catty_talk
    else
        sprite_index = spr_npc_bratty_talk
    if (scr_murderlv() >= 12)
    {
        if (x < 150)
            instance_destroy()
        else
        {
            y += 35
            sprite_index = spr_notepaper
        }
    }
}
if (room == room_fire_hotel_bpants)
    sprite_index = spr_npc_bpants_talk
if (room == room_water_temshop_room)
{
    sprite_index = spr_npc_temshopkeep_talk
    if (global.flag[276] == 1)
        sprite_index = spr_npc_temshopkeep_college_talk
}
if (room == room_fire_core_mettmeetingplace)
{
    sprite_index = spr_mettaton_neo_die
    if (global.flag[425] < 1 || scr_murderlv() < 12)
        instance_destroy()
}
if (room == room_tundra_inn_2f_real)
{
    if (global.flag[7] == 0)
    {
        if (global.flag[169] == 0)
            instance_destroy()
    }
    sprite_index = spr_sleepguy1
    if (x > 300)
        sprite_index = spr_sleepguy2
    if (x > 330)
        sprite_index = spr_sleepguy3
}
if (room == room_tundra_spaghetti)
{
    sprite_index = spr_jerry_npc
    if (scr_murderlv() >= 3)
        instance_destroy()
}
if (room == room_tundra9)
{
    sprite_index = spr_icecube_over
    if (global.flag[392] == 0 || scr_enemynpc1() != 1)
        instance_destroy()
}
if (room == room_fire_walkandbranch2)
{
    sprite_index = spr_coolbalt
    if (scr_murderlv() >= 9)
        instance_destroy()
}
if (room == room_tundra_lake)
{
    sprite_index = spr_redguy_fishing
    if (global.plot > 160)
        sprite_index = spr_redguy_fishing2
    if (scr_murderlv() >= 2 || (scr_enemynpc1() == 1 && global.plot < 160) || global.flag[7] == 1)
        instance_destroy()
}
if (room == room_tundra_town)
{
    if (x > 1700)
        sprite_index = spr_redguy
    else
        sprite_index = spr_birdly_npc
    if (sprite_index == spr_redguy)
    {
        if (scr_enemynpc1() == 0 || (global.plot > 160 && global.flag[7] == 0))
            instance_destroy()
    }
    if (scr_murderlv() >= 2)
        instance_destroy()
}
if (room == room_fire_machinepit)
{
    sprite_index = spr_bigstomper
    if (scr_murderlv() >= 9 || global.flag[123] == 1)
        instance_destroy()
}
if (room == room_fire_lavalake)
{
    if (x < 1000)
    {
        if (x == 490)
            sprite_index = spr_test_dt
        if (x > 520)
            sprite_index = spr_test_dt_left
    }
    else
        sprite_index = spr_bigstomper
    if (sprite_index == spr_bigstomper)
    {
        if (global.flag[123] != 1)
            instance_destroy()
        else
            instance_create(x, (y - 20), obj_solidextall_2)
    }
    if (scr_murderlv() >= 9)
        instance_destroy()
}
if (room == room_fire_core4)
{
    sprite_index = spr_98robot
    if (scr_murderlv() >= 9 || scr_enemynpc2() != 1)
        instance_destroy()
}
if (room == room_kitchen_final)
    sprite_index = spr_trashcan_tint
if (room == room_water_candy)
{
    sprite_index = spr_rockcandyguy
    if (scr_murderlv() >= 7)
        instance_destroy()
}
if (room == room_water6)
    sprite_index = spr_telescope
if (room == room_water5A)
    sprite_index = spr_bench
if (room == room_water_tutu)
{
    sprite_index = spr_tutu
    if (global.flag[105] == 1)
        instance_destroy()
}
if (room == room_water_savepoint1)
    sprite_index = spr_crystaltable
if (room == room_water_shoe)
{
    sprite_index = spr_balletshoes
    visible = true
    if (global.flag[106] == 1)
        instance_destroy()
}
if (room == room_tundra_sanshouse)
    sprite_index = spr_signsock
if (room == room_tundra_snowpuzz)
{
    sprite_index = spr_martlet
    if (scr_murderlv() >= 13)
    {
        sprite_index = spr_notepaper
        y += 25
        x += 5
    }
    else if (global.flag[5] < 30 && global.flag[5] > 15)
        instance_destroy()
    else
    {
        with (obj_sanscheckpoint)
            special = true
    }
}
if (room == room_water15)
{
    sprite_index = spr_fishnpc_dress
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_water12)
{
    if (x > 300)
        sprite_index = spr_greendemon
    else
        sprite_index = spr_fishnpc_buttonup
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_water_friendlyhub)
{
    sprite_index = spr_visitingguy
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_water_undyneyard)
{
    sprite_index = spr_trashdummy
    if (scr_murderlv() >= 9)
        sprite_index = spr_dummyglad
    if (global.flag[157] >= 1)
    {
        if (global.flag[7] == 1)
            instance_create(x, y, obj_sign_room)
        instance_destroy()
    }
    if (global.flag[252] == 1 || global.plot > 160)
        instance_destroy()
}
if (room == room_water_farm)
{
    sprite_index = spr_snailr
    if (scr_murderlv() >= 9)
        instance_destroy()
}
if (room == room_water7 && global.plot < 110)
    instance_destroy()
if (room == room_water11)
{
    sprite_index = spr_tonsildude
    if (scr_murderlv() >= 8)
        instance_destroy()
    y += 10
}
if (room == room_fire8)
{
    if (scr_murderlv() >= 12)
        instance_destroy()
    if (global.plot > 160 && global.plot < 175)
        instance_destroy()
    sprite_index = spr_skateboardgirl
    if (id == instance_find(object_index, 1))
        sprite_index = spr_fukufire
}
if (room == room_fire_rpuzzle)
{
    if (scr_murderlv() >= 12)
        instance_destroy()
    sprite_index = spr_bannanabrawler
}
if (room == room_fire9)
{
    if (scr_murderlv() >= 12)
        instance_destroy()
    sprite_index = spr_businessdude
    if (id == instance_find(object_index, 1))
        sprite_index = spr_firecoffee
}
if (room == room_fire6A)
{
    sprite_index = spr_frypan
    if (global.flag[110] == 1)
        instance_destroy()
}
if (room == room_fire_apron)
{
    if (x == 200)
    {
        if (scr_murderlv() >= 12)
            instance_destroy()
        sprite_index = spr_normalnpcguy
    }
    else
    {
        if (global.flag[111] == 1)
            instance_destroy()
        sprite_index = spr_apron
    }
}
if (room == room_water_nicecream)
{
    sprite_index = spr_chestbox
    x += 10
    y += 20
}
if (room == room_fire_walkandbranch)
{
    if (x > 300)
        sprite_index = spr_artlady
    else
        sprite_index = spr_sorry_npc_d
    if (sprite_index == spr_sorry_npc_d)
    {
        if (global.flag[7] == 0 || global.flag[281] < 2 || global.flag[281] == 1)
            instance_destroy()
    }
    if (scr_murderlv() >= 9)
        instance_destroy()
}
if (room == room_fire_core_treasureleft || room == room_fire_core_treasureright)
    sprite_index = spr_trashcan
if (room == room_castle_exit)
{
    q = 0
    ossafe_ini_open("undertale.ini")
    fcheck1 = ini_read_real("Flowey", "K", 0)
    fcheck2 = ini_read_real("FFFFF", "E", 0)
    ossafe_ini_close()
    if (global.flag[475] == 1)
        q = 1
    if (fcheck1 == 1 && fcheck2 == 2)
        q = 1
    if (q == 1)
        sprite_index = spr_flowey_empty
    else
        instance_destroy()
}
if (room == room_fire_prelab)
{
    if (y < 70)
    {
        if (scr_murderlv() >= 12)
            instance_destroy()
        sprite_index = spr_royalguard_dragon_d
        if (global.plot >= 136)
            instance_destroy()
    }
}
if (room == room_asgoreroom)
    sprite_index = spr_trophy
if (room == room_asrielroom_final)
    sprite_index = spr_presentbox
if (room == room_truelab_bedroom)
{
    if (y > 200)
        sprite_index = spr_dogbowl_empty
    else
        sprite_index = spr_mushplush
    image_blend = c_gray
}
if (room == room_fire_mewmew2)
    sprite_index = spr_microwave
if (room == room_fire_spidershop)
{
    sprite_index = spr_donutscaredguy
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_tundra_sansroom)
{
    sprite_index = spr_treadmill
    tread = scr_marker(x, y, spr_treadmill)
    with (tread)
    {
        scr_depth()
        image_speed = 0.2
    }
    visible = false
}
if (room == room_water2)
{
    sprite_index = spr_fishnpc_echo
    if (scr_murderlv() >= 8)
        instance_destroy()
}
if (room == room_tundra4)
    sprite_index = spr_amalgam_fridgenpc
if (room == room_water_blookyard)
    sprite_index = spr_mettex_npc
if (room == room_ice_dog)
    sprite_index = spr_videogame
if (room == room_fire_hotelrestaurant)
{
    if (x > 500)
        sprite_index = spr_npc_oni
    if (x > 600)
        sprite_index = spr_npc_charles
    if (x > 780)
        sprite_index = spr_hotel_receptionist2
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_fire_pacing)
{
    sprite_index = spr_dresslion_a
    if (global.flag[7] == 1)
        sprite_index = spr_dresslion_b
    if (scr_murderlv() >= 12)
        instance_destroy()
    if (global.plot < 167)
        instance_destroy()
}
if (room == room_fire_hotellobby)
{
    if (x > 300)
        sprite_index = spr_diamond_recep
    else
        sprite_index = spr_sittnpc
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_fire_hotdog)
{
    if (scr_murderlv() >= 12)
        instance_destroy()
    if (global.flag[67] == 1)
        instance_destroy()
    sprite_index = spr_vulkinnpc_hotdog
    if (x > 160)
        sprite_index = spr_hotdog_harpy
}
if (room == room_water_temvillage)
{
    sprite_index = spr_temmie_egg
    if (scr_murderlv() >= 10)
        instance_destroy()
}
if (room == room_water_trashzone1)
{
    if (x < 180)
        sprite_index = spr_npc_bratty_talk
    else if (x < 240)
        sprite_index = spr_npc_catty_talk
    else
        sprite_index = spr_npc_bpants_casual_talk
    if (scr_murderlv() > 9 || global.flag[437] < 9 || global.flag[257] == 2 || global.flag[7] == 1 || global.flag[493] > 9)
    {
        instance_destroy()
        return;
    }
    global.flag[257] = 1
}
if (room == room_water_trashzone2)
{
    sprite_index = spr_ds_donationbox_trash
    if (scr_murderlv() < 9)
        instance_destroy()
}
if (room == room_prunsel)
    sprite_index = spr_prunsel
if instance_exists(obj_pool_effect)
    depth = (obj_pool_effect.depth + 100)
