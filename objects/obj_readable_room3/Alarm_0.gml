myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* You really shouldn't be&  reading this, should you?/%%"
if (room == room_fire_machinepit)
{
    global.msg[0] = "* (It's a towering machine.^1)&* (It's held up by a &  very large pillar.)/"
    global.msg[1] = "* (Try as you might^1,&  you cannot tell what it&  would be used for.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a towering machine.)/%%"
}
if (room == room_water_bhouse_lockers)
{
    global.msg[0] = "* (This locker has a&  lunchbox filled with carrots.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (Nothing useful.)/%%"
}
if (room == room_ruins_home_store)
    global.msc = 3025
if (room == room_ruins_homehub)
{
    messagechoice = choose(0, 1, 2, 3, 4, 5)
    if (messagechoice == 0)
        global.msg[0] = "* (It's a spider web.)/%%"
    if (messagechoice == 1)
        global.msg[0] = "* (It's a spider's domain.^3)&* (Also known as a spider web.)/%%"
    if (messagechoice == 2)
        global.msg[0] = "* (It's nothing but&  a spider web.)/%%"
    if (messagechoice == 3 && global.flag[127] != 1)
    {
        global.gold += 30
        global.msg[0] = "* (Someone left some GOLD in&  this spider web!^1)&* (You got 5G.)/%%"
        global.flag[127] = 1
    }
    if ((messagechoice == 3 && global.flag[127] == 1) || messagechoice == 4)
        global.msg[0] = "* (It's just a regular&  spider web.)/%%"
    if (messagechoice == 5)
        global.msg[0] = "* (You recall seeing one of&  these somewhere before...)/%%"
    if (talkedto > 0)
        global.msg[0] = "* (You are enamored by&  the fine art that&  is web weaving.)/%%"
}
if (room == room_fire_brattycattyshop)
{
    global.msg[0] = "* (It's a dumpster.)/"
    global.msg[1] = "* (This must be where&  the goods are kept.)/"
    global.msg[2] = "* (You suddenly have the urge&  to crawl in and sleep at&  the bottom of the dumpster...)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a dumpster.)/%%"
}
if (room == room_fire_hh_entrance)
    global.msg[0] = "* (It's a dog bed.^1)&* (There are a couple white&  strands of fur left behind.)/%%"
if (room == room_fire_hh_mainhub)
    global.msg[0] = "* (The clothes dripped onto&  the ground^1, causing&  water to go everywhere.)/%%"
if (room == room_torhouse_bathroom)
{
    global.msg[0] = "* (You dug around in&  the trash can.^1)&* (Well^1, let's see here...)/"
    global.msg[1] = "* (There's nothing inside.^1)&* (Disappointed^1, you&  slam the lid shut.)/%%"
}
if (room == room_asghouse_bathroom)
{
    global.msg[0] = "* (You dug around in&  the trash can.^1)&* (Well^1, let's see here...)/"
    global.msg[1] = "* (There's some dried golden&  flower petals at the bottom.)/%%"
}
if (room == room_fire_core_controlroom)
{
    global.msg[0] = "* (It's some sort of&  printing machine.)/"
    global.msg[1] = "* (It's printed some&  instructions on how&  to change the CORE's layout.)/%%"
}
if (room == room_water_mirror)
    global.msg[0] = "* (It's a glowing pink mushroom.)&* (The light faintly shines on&  your skin.)/%%"
if (room == room_asrielroom)
    global.msg[0] = scr_gettext("obj_readable_room3_60")
if (room == room_asrielroom_final)
{
    global.msg[0] = scr_gettext("obj_readable_room3_63")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room3_66")
}
if (room == room_torhouse1)
    global.msg[0] = "* (It's a coat hanger.^1)&* (Looks like it hasn't been&  used in a long time.)/%%"
if (room == room_tundra_teenhangoutroom)
    global.msg[0] = "* (It's a green bicycle.)&* (Looks like it's seen&  quite a few crashes.)/%%"
if (room == room_torhouse2)
{
    global.msg[0] = "* (It's a small television.^2)&* (It's turned off.)/%%"
    if (x < 900 && x > 650)
        global.msg[0] = "* (A box of crayons and paper.^1)&* (Someone drew Loox and&  Whimsun, too!)/%%"
    if (x < 650)
    {
        if (global.flag[7] == 0)
            global.flag[71] = 1
        global.msg[0] = "* (It's a house phone.^2)&* (You try to make&  a call...)/"
        global.msg[1] = "* (^1.^1.^1.^1)&* (It's broken...)/%%%"
        if (scr_murderlv() >= 1)
            global.msg[0] = "* Nobody to call./%%"
        if (global.flag[7] == 1)
        {
            if (global.flag[71] == 0)
                global.msg[0] = "* (It's a house phone.^2)&* (You would make a call^1,&  but you doubt they'd pick up.)/%%"
            else
            {
                global.flag[0] = "* (It's still broken.)/"
                global.flag[1] = "* (You should probably bring&  this up to Toriel.)/%%"
            }
        }
    }
    if (x < 300)
    {
        global.msg[0] = scr_gettext("obj_npc_room_271")
        global.msg[1] = "* (It's full of open^1,&  empty seed packets.)/%%"
    }
}
if (room == room_water_gersonshop)
{
    global.msg[0] = "* (It's a Torn Notebook.^1)&* (It's filled with sketches of&  things you've seen before.)/%%"
    if (talkedto > 0)
        global.msg[0] = "* (You can't steal it&  because it's glued&  to the table.)/%%"
}
if (room == room_torielroom)
{
    global.msg[0] = scr_gettext("obj_readable_room3_71")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room3_74")
        global.msg[1] = scr_gettext("obj_readable_room3_75")
    }
}
if (room == room_asghouse2)
    global.msg[0] = scr_gettext("obj_readable_room3_79")
if (room == room_asgoreroom)
    global.msg[0] = scr_gettext("obj_readable_room3_81")
if (room == room_torhouse3)
    global.msg[0] = scr_gettext("obj_readable_room3_83")
if (room == room_kitchen)
    global.msg[0] = scr_gettext("obj_readable_room3_84")
if (room == room_kitchen_final)
    global.msg[0] = scr_gettext("obj_readable_room3_85")
if (room == room_tundra_library)
{
    global.msg[0] = scr_gettext("obj_readable_room3_89")
    global.msg[1] = scr_gettext("obj_readable_room3_90")
    global.msg[2] = scr_gettext("obj_readable_room3_91")
    global.msg[3] = scr_gettext("obj_readable_room3_92")
    global.msg[4] = scr_gettext("obj_readable_room3_93")
}
if (room == room_tundra2 || room == room_tundra2_alt)
    global.msg[0] = scr_gettext("obj_readable_room3_104")
if (room == room_tundra4)
    global.msg[0] = scr_gettext("obj_readable_room3_108")
if (room == room_tundra8)
    global.msg[0] = scr_gettext("obj_readable_room3_112")
if (room == room_tundra_snowpuzz)
    global.msg[0] = scr_gettext("obj_readable_room3_116")
if (room == room_tundra_xoxopuzz)
    global.msg[0] = scr_gettext("obj_readable_room3_120")
if (room == room_tundra_lesserdog)
    global.msg[0] = scr_gettext("obj_readable_room3_124")
if (room == room_tundra_dangerbridge)
    global.msg[0] = scr_gettext("obj_readable_room3_128")
if (room == room_tundra_town)
    global.msg[0] = scr_gettext("obj_readable_room3_132")
if (room == room_water_bridgepuzz1)
    global.msg[0] = scr_gettext("obj_readable_room3_139")
if (room == room_water5)
    global.msg[0] = scr_gettext("obj_readable_room3_141")
if (room == room_water6)
    global.msg[0] = scr_gettext("obj_readable_room3_142")
if (room == room_water7)
{
    global.msg[0] = scr_gettext("obj_readable_room3_147")
    global.msg[1] = scr_gettext("obj_readable_room3_148")
}
if (room == room_water_firepuzzle)
    global.msg[0] = "* (It's a cyan crystal wall.^1)&* (It's very cloudy..^1. you can't&  even see your reflection...)/%%"
if (room == room_water14)
{
    global.msg[0] = scr_gettext("obj_readable_room3_154")
    global.msg[1] = scr_gettext("obj_readable_room3_155")
    global.msg[2] = scr_gettext("obj_readable_room3_156")
    global.msg[3] = scr_gettext("obj_readable_room3_157")
    global.msg[4] = scr_gettext("obj_readable_room3_158")
    global.msg[5] = scr_gettext("obj_readable_room3_159")
}
if (room == room_water15)
{
    global.msg[0] = scr_gettext("obj_readable_room3_165")
    global.msg[1] = scr_gettext("obj_readable_room3_166")
    global.msg[2] = scr_gettext("obj_readable_room3_167")
}
if (room == room_tundra_sanshouse)
{
    if instance_exists(obj_papyrusparent)
    {
        scr_papface(0, 0)
        global.msg[1] = scr_gettext("obj_readable_room3_175")
        global.msg[2] = scr_gettext("obj_readable_room3_176")
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room3_180")
}
if (room == room_tundra_paproom)
    global.msc = 561
if (room == room_water_prebird)
    global.msg[0] = scr_gettext("obj_readable_room3_195")
if (room == room_fire_lab1)
{
    global.msg[0] = scr_gettext("obj_readable_room3_200")
    global.msg[1] = scr_gettext("obj_readable_room3_201")
    if (global.plot < 126 && scr_murderlv() < 12)
        global.msg[0] = scr_gettext("obj_readable_room3_202")
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (Can't read this.)/%%"
}
if (room == room_fire_lab2)
{
    global.msg[0] = scr_gettext("obj_readable_room3_207")
    global.msg[1] = scr_gettext("obj_readable_room3_208")
}
if (room == room_fire_cookingshow)
{
    global.msg[0] = scr_gettext("obj_readable_room3_213")
    if (global.plot < 134)
        global.msg[0] = scr_gettext("obj_readable_room3_215")
    if instance_exists(obj_mettaton_npc)
    {
        global.typer = 27
        global.msg[0] = scr_gettext("obj_readable_room3_222")
        if (dayofweek != 4)
            global.msg[1] = scr_gettext("obj_readable_room3_223")
        else
            global.msg[1] = "* WE DON'T AIR&  THAT FOR ANOTHER&  FEW HOURS!/%%"
        if (global.plot == 134)
        {
            global.msg[0] = scr_gettext("obj_readable_room3_228")
            if (dayofweek != 4)
                global.msg[1] = scr_gettext("obj_readable_room3_223")
            else
                global.msg[1] = "* WE DON'T AIR&  THAT FOR ANOTHER&  FEW HOURS!/%%"
        }
    }
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a sink.)/%%"
}
if (room == room_water_undynehouse)
{
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 0
    global.msc = 0
    global.msg[0] = scr_gettext("obj_readable_room3_242")
    global.msg[1] = scr_gettext("obj_readable_room3_243")
    global.msg[2] = scr_gettext("obj_readable_room3_244")
    global.msg[3] = scr_gettext("obj_readable_room3_245")
    global.msg[4] = scr_gettext("obj_readable_room3_246")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_readable_room3_248")
}
if (room == room_truelab_hall1)
{
    global.msg[0] = scr_gettext("obj_readable_room3_254")
    global.msg[1] = scr_gettext("obj_readable_room3_255")
    global.msg[2] = scr_gettext("obj_readable_room3_256")
    global.msg[3] = scr_gettext("obj_readable_room3_257")
    global.msg[4] = scr_gettext("obj_readable_room3_258")
    global.msg[5] = scr_gettext("obj_readable_room3_259")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room3_261")
}
if (room == room_truelab_tv)
    global.msg[0] = scr_gettext("obj_readable_room3_266")
if (room == room_truelab_cooler)
{
    global.msg[0] = scr_gettext("obj_readable_room3_272")
    global.msg[1] = scr_gettext("obj_readable_room3_273")
    global.msg[2] = scr_gettext("obj_readable_room3_274")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room3_275")
    if (global.flag[490] == 0)
        global.msg[0] = scr_gettext("obj_readable_room3_276")
}
if (room == room_truelab_hub)
    global.msc = 829
if (room == room_tundra_sansroom)
    global.msg[0] = scr_gettext("obj_readable_room3_286")
if (room == room_tundra_sansbasement)
{
    global.msg[0] = scr_gettext("obj_readable_room3_291")
    global.msg[1] = scr_gettext("obj_readable_room3_292")
    global.msg[2] = scr_gettext("obj_readable_room3_293")
}
if (room == room_water_blookhouse)
{
    if instance_exists(obj_napstablookdate)
    {
        global.msg[0] = scr_gettext("obj_readable_room3_303")
        global.msg[1] = scr_gettext("obj_readable_room3_304")
        if (talkedto > 0)
        {
            global.msg[0] = scr_gettext("obj_readable_room3_308")
            global.msg[1] = scr_gettext("obj_readable_room3_309")
        }
    }
    else
    {
        global.msg[0] = scr_gettext("obj_readable_room3_308")
        global.msg[1] = scr_gettext("obj_readable_room3_309")
    }
}
if (room == room_ice_dog)
    global.msg[0] = scr_gettext("obj_readable_room3_315")
if (room == room_fire_hotelrestaurant)
{
    global.msg[0] = scr_gettext("obj_readable_room3_320")
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's an error screen&  featuring Mettaton.)/%%"
}
if (room == room_water_temvillage)
    global.msg[0] = scr_gettext("obj_readable_room3_325")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
