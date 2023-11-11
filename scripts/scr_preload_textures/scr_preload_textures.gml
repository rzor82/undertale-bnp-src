if (room == room_castle_throneroom || room == room_castle_barrier || (room == room_battle && (instance_exists(obj_asgore_finalintro) || instance_exists(obj_asgoreb))))
    sprite_prefetch(spr_torheart_again)
if (room == room_asrielappears || (room == room_battle && (instance_exists(obj_asrielb) || instance_exists(obj_asrielfinal))))
    sprite_prefetch(spr_regstar)
if ((room >= room_area1_room_of_fallen_stars && room <= room_truelab_power) || (room >= room_battle && room <= room_storybattle) || room == room_gameover || room == room_papdate || room == room_adate || room == room_flowey_endchoice)
    sprite_prefetch(spr_fightbt)
if (room == room_battle && instance_exists(obj_sansb))
    sprite_prefetch(spr_s_bonebul_top)
if ((room >= room_water_undynefinal && room <= room_fire1) || (room == room_battle && (instance_exists(obj_undyneboss) || instance_exists(obj_undyne_ex))))
    sprite_prefetch(spr_undyneb_face)
if (room >= room_castle_elevatorout && room <= room_castle_trueexit)
    sprite_prefetch(spr_smallkey)
sprite_prefetch(spr_singleblackpixel)
if ((room >= room_fire1 && room <= room_fire_finalelevator) || room == room_shop3 || room == room_shop4)
    sprite_prefetch(spr_cogsmall_e)
if (room >= room_fire_labelevator && room <= room_truelab_power)
    sprite_prefetch(spr_leverkey)
if ((room >= room_area1_room_of_fallen_stars && room <= room_ruinsexit) || room == room_castle_prebarrier || room == room_castle_exit || room == room_castle_trueexit)
    sprite_prefetch(spr_fakewaterl)
if ((room >= room_tundra1 && room <= room_fogroom) || (room >= room_icecave1 && room <= room_ice_dog) || room == room_shop1)
    sprite_prefetch(spr_dogmush)
if ((room >= room_fogroom && room <= room_fire1) || room == room_shop2 || room == room_shop5 || room == room_riverman_transition)
    sprite_prefetch(spr_pxquit)
if (room == room_outsideworld || (room >= room_end_castroll && room < room_end_theend))
    sprite_prefetch(spr_tinyleaf)
if (room == room_floweyx)
{
    sprite_prefetch(spr_pipepart)
    sprite_prefetch(spr_bgpipe)
}
if (room == room_floweyx)
    sprite_prefetch(spr_eyeshot_a)
if (room >= room_f_start && room <= room_f_phrase)
    sprite_prefetch(spr_allsoul)
sprite_prefetch(spr_infinitysign)
if (global.language == "ja")
    sprite_prefetch(spr_fonts_ja_preload)
else
    sprite_prefetch(spr_fonts_en_preload)
sprite_prefetch(spr_maincharad)
if (room <= room_intromenu || (room >= room_settings && room <= room_controltest) || (room >= room_f_start && room <= room_f_room) || room == room_undertale_end || room == room_end_theend)
    sprite_prefetch(spr_sensebar)
if ((room >= room_area1_room_of_fallen_stars && room <= room_truelab_power) || (room >= room_battle && room <= room_storybattle))
    sprite_prefetch(spr_froggit)
sprite_prefetch(spr_longsnail)
