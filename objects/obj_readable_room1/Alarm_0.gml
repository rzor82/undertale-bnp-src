myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* You really shouldn't be&  reading this, should you?/%%"
if (room == ROOM_DOOR)
    global.msg[0] = "* (There's a strange marking&  on this wall...^1)/%%"
if (room == room_water_bhouse_splitpath)
    global.msg[0] = "* (It's an illustration of&  an Echo Flower.)/%%"
if (room == room_fire_hh_shortcut)
    global.msg[0] = "* (It's a laser gate.^1)&* (Doesn't seem important?)/%%"
if (room == room_water_bhouse_lockers || room == room_water_bhouse_exit)
{
    global.msg[0] = "* (This locker is closed.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (Locked.)/%%"
}
if (room == room_ruins_sewer1 || room == room_ruins_sewer_end)
    global.msg[0] = "* \"You are now exiting the&  Ruins sewage system.\"/%%"
if (room == room_ruins_home_store)
    global.msg[0] = "* (Potassium.)/%%"
if (room == room_water_waterfall4)
{
    global.msg[0] = "* (There are several objects&  blocking your path ahead...)/"
    global.msg[1] = "* (Maybe they'll eventually&  vanish^1, revealing a hidden&  path to a secret boss battle.)/"
    global.msg[2] = "* (Probably not^1, but maybe.)/%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* (The path is still blocked.^1)&* (You contemplate planning a&  future trip back underground.)/"
        global.msg[1] = "* (Given^1, say^1, 5 years time^1,&  there's bound to be some&  additional content available.)/"
        global.msg[2] = "* (After all^1, why have&  a blocked path without&  a secret super boss?)/%%"
    }
    if (scr_murderlv() >= 8)
        global.msg[0] = "* (It's a blocked path.)/%%"
}
if (room == room_ruins_homehub)
{
    global.msg[0] = "* (It's locked.^1)&* (There's a note attached&  to the door...)/"
    global.msg[1] = "* \"Attention HOME Residents:\"&  \"Due to a recent scuffle in&  the main accessway...\"/"
    global.msg[2] = "* \"...it will remain closed until&  the new floor shine has&  dried completely. Thank you.\"/%%"
}
if (room == room_torhouse_bathroom)
{
    global.msg[0] = "* (It's a sink for washing your&  hands and brushing&  your teeth in.)/"
    global.msg[1] = "* (There seems to be some&  white fur stuck in&  the drain...)/%%"
}
if (room == room_fire_hh_mainhub)
{
    global.msg[0] = "* (It's a sign.)&* (It's advertising some sort&  of themed hotel.)/"
    global.msg[1] = "* \"The MTT RESORT(TM)!&  May your most beautiful&  comfort wishes come true.\"/"
    global.msg[2] = "* \"Now offering^1:&  PROMOTION NO LONGER VALID\"/%%"
    if (global.flag[425] == 1)
        global.msg[2] = "* \"The \"Meet Mettaton!\" package&  has been suspended until&  further notice^1. Thank you.\"/%%"
}
if (room == room_asghouse_bathroom)
{
    global.msg[0] = "* (It's a sink for washing your&  hands and brushing&  your teeth in.)/"
    global.msg[1] = "* (One of the toothbrushes&  is brand new^1, while the&  other looks well used.)/%%"
    if (read > 0)
        global.msg[0] = "* (It is not time&  to wash your hands.)/%%"
}
if (room == room_fire_hh_entrance)
    global.msg[0] = "* (You attempt to climb the&  ladder^1, but it requires&  8 legs to operate.)/%%"
if (room == room_water_mirror)
{
    var murder = (scr_murderlv() >= 8 && global.flag[27] == 0)
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_readable_room4_64")
    else if (global.flag[8] == 1 || global.flag[493] >= 8)
    {
        if murder
            global.msg[0] = scr_gettext("obj_readable_room4_66")
        else
            global.msg[0] = scr_gettext("obj_readable_room4_63")
    }
    else if (global.flag[365] == 0)
    {
        if murder
        {
            global.msg[0] = "* (It's..^1. me?)/"
            global.msg[1] = "* (Suddenly felt uneasy.)/%%"
        }
        else
        {
            global.msg[0] = "* (It's..^1. you?)/"
            global.msg[1] = "* (A sudden uneasiness&  washes over you.)/%%"
        }
        with (obj_mirrorevent)
        {
            if (con < 1)
                con = 1
            else if (con < 2)
            {
                with (other.object_index)
                {
                    mydialoguer = -4
                    cantalk = 0
                }
                other.myinteract = -1
                con = 3
            }
        }
        read = -1
    }
    else if (global.flag[365] == 1)
    {
        if (scr_murderlv() >= 8)
            global.msg[0] = "* (Reflecting on what you've&  done, you decide to make&  amends.)/%%"
        else
            global.msg[0] = "* (You have come to a better&  understanding of yourself.)/%%"
    }
    else if (global.flag[365] == 3)
    {
        if murder
            global.msg[0] = "* (The remnant of an&  imperfect reflection.)/%%"
        else
            global.msg[0] = "* (...)/%%"
    }
    else if murder
        global.msg[0] = "* (Just a broken mirror.)/%%"
    else
    {
        global.msg[0] = "* (Afraid of what you saw in&  yourself^1, you shattered&  the mirror.)/"
        global.msg[1] = "* (It can't hurt you anymore.)/%%"
        if (read > 0)
            global.msg[0] = global.msg[1]
        with (obj_readable_room1)
            read += 1
    }
}
if (room == room_tundra_qcshop_room)
{
    global.msg[0] = "* (Seems like someone has&  left their book behind.)/"
    global.msg[1] = "* (Out of decency^1, you&  decide not to open it.)/%%"
    if (read == 1)
    {
        global.msg[1] = "* (You decide to take a&  look inside anyway.^1)&* (Finder's keepers^1, right?)/"
        global.msg[2] = "* (It appears to be some&  kind of record book.)/"
        global.msg[3] = "* (It's got names of several&  monster folk with notes&  next to each name.)/"
        global.msg[4] = "* (Looking closer^1, it seems&  to actually be a&  \"hot or not\" book.)/"
        global.msg[5] = "* (You decide to put&  the book down.)/%%"
    }
}
if (room == room_water_temshop_room)
{
    global.msg[0] = "* (It's an opened box of&  Temmie Flakes^1.)/"
    global.msg[1] = "* (It appears to be made&  of yellow and blue strips&  of construction paper...)/%%"
    if (scr_murderlv() >= 8)
        global.msg[0] = "* (It's a box filled with&  blue and yellow strips&  of contruction paper.)/%%"
}
if (room == room_fire_brattycattyshop)
{
    global.msg[0] = "* (It's a trash can.)/"
    global.msg[1] = "* (This one seems to be&  overflowing with an&  assortment of flowers.)/%%"
}
if (room == room_ruins4)
{
    global.msg[0] = "* (It's just a regular&  training dummy.)/%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* (Your actions have led&  you back to this&  regular training dummy.)/%%"
}
if (room == room_tundra_inn_2f_real)
{
    global.msg[0] = "* (It's a billboard.^1)&* (There are several papers&  tacked to it.)/"
    global.msg[1] = "\\W* (This one is a&  WANTED poster for&  \"\\YCaptain Wenisberry\\W\".)/"
    global.msg[2] = "* (The person depicted on the&  poster looks like an&  off-brand cereal mascot.)/"
    global.msg[3] = "* (It doesn't say&  what they're wanted for...)/%%"
}
if (room == room_ruins18)
    global.msg[0] = "* (It's locked.^1)&* (If only you could&  find that key...^1)/%%"
if (room == room_water_candy)
{
    global.msg[0] = "\\W* The combined power of \\YMan\\W's&  strength and \\YBeast\\W's magic.../"
    global.msg[1] = "* Such a joining of forces&  would be catastrophic./%%"
}
if (room == room_water_gersonshop)
{
    global.msg[0] = "* (It's a Crab Apple.^1)&* (It looks a bit^9&             crabby.)/%%"
    if (scr_murderlv() >= 8)
        global.msg[0] = "* (It's a Crab Apple.)/%%"
    if (read > 0)
        global.msg[0] = "* (You can't steal it&  because it's glued&  to the table.)/%%"
}
if (room == room_tundra_teenhangoutroom)
{
    global.msg[0] = "* (It's a vending machine.^1)&* (There are several brands&  of chips to buy.)/"
    global.msg[1] = "* (Even if you had the money^1,&  it doesn't seem to work.)/%%"
}
if (room == room_area1_room_of_fallen_stars)
{
    global.msg[0] = "* (A bed of Golden Flowers.^1)&* (Softer than they look.)/%%"
    if (scr_murderlv() >= 1)
        global.msg[0] = "\\R* .../%%"
}
if (room == room_fire_core_premett)
    global.msg[0] = "* (This strange device&  seems to be turned off.)/%%"
if (room == room_fire_core1)
{
    global.msg[0] = "* (The screen displays&  large characters...)/"
    global.msg[1] = "\\G>The COR^1E&>Power source of the& Underground/%%"
}
if (room == room_fire_core_bottomright || room == room_fire_core_controlroom)
{
    global.msg[0] = "* (It's a pump coming out&  of the wall.)/"
    global.msg[1] = "* (The pump periodically pulses^1,&  almost like a vein pumping&  blood from a heart.)/%%"
}
if (room == room_ruins2)
{
    global.msg[0] = scr_gettext("obj_readable_room1_65")
    global.msg[1] = "* \"Both walk not the&  middle road.\"/%%"
}
if (room == room_ruins3)
    global.msg[0] = scr_gettext("obj_readable_room1_66")
if (room == room_ruins5)
    global.msg[0] = scr_gettext("obj_readable_room1_67")
if (room == room_ruins9)
    global.msg[0] = scr_gettext("obj_readable_room1_68")
if (room == ROOM_MONITOR)
{
    global.typer = 666
    global.msg[0] = scr_gettext("obj_gaster_room_34")
    global.msg[1] = scr_gettext("obj_gaster_room_35")
    global.msg[2] = scr_gettext("obj_gaster_room_36")
    global.msg[3] = scr_gettext("obj_gaster_room_37")
    global.msg[4] = scr_gettext("obj_gaster_room_38")
    global.msg[5] = scr_gettext("obj_gaster_room_39")
    global.msg[6] = scr_gettext("obj_gaster_room_40")
    global.msg[7] = scr_gettext("obj_gaster_room_41")
    global.msg[8] = scr_gettext("obj_gaster_room_42")
    global.msg[9] = scr_gettext("obj_gaster_room_43")
    global.msg[10] = ".../"
    global.msg[11] = scr_gettext("obj_gaster_room_45")
    instance_create(220, 90, obj_mysteryman)
}
if (room == room_ruins_sewer2)
{
    global.msg[0] = "* (It's a very large&  water pipe...)/"
    global.msg[1] = "* (Whether it's pumping water&  in or out, you're&  not sure.)/%%"
}
if (room == room_ruins13)
{
    if (global.flag[5] > 50)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_69_console_1")
        global.msg[1] = scr_gettext("obj_readable_room1_69_console_2")
        global.msg[2] = scr_gettext("obj_readable_room1_69_console_3")
        global.msg[3] = scr_gettext("obj_readable_room1_69_console_4")
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room1_69")
}
if (room == room_ruins14)
    global.msg[0] = scr_gettext("obj_readable_room1_70")
if (room == room_ruins15A)
    global.msg[0] = scr_gettext("obj_readable_room1_71")
if (room == room_ruins15B)
    global.msg[0] = scr_gettext("obj_readable_room1_72")
if (room == room_ruins15C)
    global.msg[0] = scr_gettext("obj_readable_room1_73")
if (room == room_ruins15D)
    global.msg[0] = scr_gettext("obj_readable_room1_74")
if (room == room_torhouse1)
    global.msg[0] = scr_gettext("obj_readable_room1_75")
if (room == room_asghouse1)
{
    global.msg[0] = scr_gettext("obj_readable_room1_78")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room1_79")
}
if (room == room_torhouse2)
{
    if (x > 300)
    {
        global.msg[0] = "* (You take a look inside&  of the drawe^1r^1.^1..)/"
        global.msg[1] = "* (Nothing but a lone^1,&  faded green crayon.)/%%"
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room1_81")
}
if (room == room_asghouse2)
    global.msg[0] = scr_gettext("obj_readable_room1_82")
if (room == room_asrielroom)
    global.msg[0] = scr_gettext("obj_readable_room1_83")
if (room == room_asrielroom_final)
    global.msg[0] = scr_gettext("obj_readable_room1_84")
if (room == room_castle_finalshoehorn)
    global.msg[0] = scr_gettext("obj_readable_room1_86")
if (room == room_castle_coffins2)
{
    global.msg[0] = scr_gettext("obj_readable_room1_90")
    global.msg[1] = scr_gettext("obj_readable_room1_91")
    global.msg[2] = scr_gettext("obj_readable_room1_92")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_96")
        global.msg[1] = scr_gettext("obj_readable_room1_97")
        global.msg[2] = scr_gettext("obj_readable_room1_98")
    }
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room1_103")
}
if (room == room_torielroom)
{
    global.msc = 524
    if (x > 192)
    {
        global.msc = 0
        global.msg[0] = scr_gettext("obj_readable_room1_112")
        global.msg[1] = scr_gettext("obj_readable_room1_113")
        if (read > 0)
            global.msg[0] = scr_gettext("obj_readable_room1_114")
        if (global.flag[7] == 1)
        {
            global.msg[0] = scr_gettext("obj_readable_room1_118")
            global.msg[1] = scr_gettext("obj_readable_room1_119")
        }
    }
}
if (room == room_asgoreroom)
{
    global.msg[0] = scr_gettext("obj_readable_room1_125")
    global.msg[1] = scr_gettext("obj_readable_room1_126")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room1_130")
    if (y > 120)
        global.msg[0] = scr_gettext("obj_readable_room1_134")
}
if (room == room_castle_throneroom)
    global.msg[0] = scr_gettext("obj_readable_room1_139")
if (room == room_torhouse3)
{
    global.msg[0] = scr_gettext("obj_readable_room1_142")
    if (x < 300)
        global.msg[0] = "* (It's a small picture.^1)&* (You can't even make out&  what it's a picture of...)/%%"
}
if (room == room_asghouse3)
    global.msg[0] = scr_gettext("obj_readable_room1_143")
if (room == room_kitchen)
    global.msg[0] = scr_gettext("obj_readable_room1_144")
if (room == room_kitchen_final)
{
    global.msg[0] = scr_gettext("obj_readable_room1_147")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room1_151")
}
if (room == room_tundra1)
    global.msg[0] = scr_gettext("obj_readable_room1_154")
if (room == room_tundra8A)
    global.msg[0] = scr_gettext("obj_readable_room1_155")
if (room == room_tundra_snowpuzz)
{
    if (global.plot <= 48)
        global.msg[0] = scr_gettext("obj_readable_room1_158")
    if (global.plot > 48)
        global.msg[0] = scr_gettext("obj_readable_room1_159")
    if (global.flag[64] == 0)
        global.flag[64] = 1
    if (global.plot <= 48)
        global.plot = 49
    if (scr_murderlv() >= 3)
        global.msg[0] = scr_gettext("obj_readable_room1_162")
}
if (room == room_tundra_lesserdog)
    global.msg[0] = scr_gettext("obj_readable_room1_164")
if (room == room_tundra_library)
{
    global.msg[0] = scr_gettext("obj_readable_room1_198")
    global.msg[1] = scr_gettext("obj_readable_room1_199")
    global.msg[2] = scr_gettext("obj_readable_room1_200")
    global.msg[3] = scr_gettext("obj_readable_room1_201")
    global.msg[4] = scr_gettext("obj_readable_room1_202")
    global.msg[5] = scr_gettext("obj_readable_room1_203")
}
if (room == room_tundra_inn_1f)
{
    global.msg[0] = scr_gettext("obj_readable_room1_208")
    global.msg[1] = scr_gettext("obj_readable_room1_209")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_213")
        global.msg[1] = scr_gettext("obj_readable_room1_214")
    }
    if (scr_murderlv() >= 7)
        global.msg[0] = scr_gettext("obj_readable_room1_219")
}
if (room == room_water12)
{
    global.msg[0] = scr_gettext("obj_readable_room1_228")
    global.msg[1] = scr_gettext("obj_readable_room1_229")
}
if (room == room_water7)
{
    global.msg[0] = scr_gettext("obj_readable_room1_235")
    global.msg[1] = scr_gettext("obj_readable_room1_236")
}
if (room == room_water_firepuzzle)
{
    global.msg[0] = scr_gettext("obj_readable_room1_235")
    global.msg[1] = "* \"Light the way^1, and your path&  will be revealed.\"/%%"
}
if (room == room_water14)
    global.msg[0] = scr_gettext("obj_readable_room1_241")
if (room == room_water15)
{
    global.msg[0] = scr_gettext("obj_readable_room1_247")
    global.msg[1] = scr_gettext("obj_readable_room1_248")
    global.msg[2] = scr_gettext("obj_readable_room1_249")
}
if (room == room_water19)
{
    global.msg[0] = scr_gettext("obj_readable_room1_256")
    global.msg[1] = scr_gettext("obj_readable_room1_257")
    global.msg[2] = scr_gettext("obj_readable_room1_258")
}
if (room == room_water_nicecream)
    global.msg[0] = scr_gettext("obj_readable_room1_263")
if (room == room_water_prebird)
{
    global.msg[0] = scr_gettext("obj_readable_room1_269")
    if (scr_murderlv() >= 8)
        global.msg[0] = "* (There's a net and&  tissue box here.)/%%"
}
if (room == room_water_preundyne)
{
    global.msg[0] = scr_gettext("obj_readable_room1_274")
    global.msg[1] = scr_gettext("obj_readable_room1_275")
}
if (room == room_water17)
    global.msg[0] = scr_gettext("obj_readable_room1_280")
if (room == room_water20)
{
    if instance_exists(obj_monsterkidtrigger7)
        obj_monsterkidtrigger7.con = 80
    cantalk = 0
}
if (room == room_fire_opera)
    global.msg[0] = "* (There's a box of makeup&  and other accessories.)/%%"
if (room == room_fire_lavalake)
{
    global.msg[0] = "* (This flower seems to have&  grown atop the cooled&  magma.)/%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* (Still growing strong^1,&  the flower lives on after&  all this time.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a flower.)/%%"
}
if (room == room_fire_lab1)
{
    global.msg[0] = scr_gettext("obj_readable_room1_292")
    if (global.plot < 126 && scr_murderlv() < 12)
        global.msg[0] = scr_gettext("obj_readable_room1_293")
}
if (room == room_fire_lab2)
{
    global.msg[0] = scr_gettext("obj_readable_room1_299")
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a bookshelf.)/%%"
}
if (room == room_fire_cookingshow)
{
    global.msg[0] = scr_gettext("obj_readable_room1_304")
    if (global.plot < 134)
        global.msg[0] = scr_gettext("obj_readable_room1_306")
    if instance_exists(obj_mettaton_npc)
    {
        global.typer = 27
        global.msg[0] = scr_gettext("obj_readable_room1_312")
        global.msg[1] = scr_gettext("obj_readable_room1_313")
    }
    if (global.plot == 134)
    {
        snd_play(snd_phone)
        global.typer = 5
        global.msg[0] = scr_gettext("obj_readable_room1_320")
        global.msg[1] = scr_gettext("obj_readable_room1_321")
        global.msg[2] = scr_gettext("obj_readable_room1_322")
        global.msg[3] = scr_gettext("obj_readable_room1_323")
        global.msg[4] = scr_gettext("obj_readable_room1_324")
        global.msg[5] = scr_gettext("obj_readable_room1_325")
        if (specialread > 0)
        {
            global.msg[0] = scr_gettext("obj_readable_room1_328")
            global.msg[1] = scr_gettext("obj_readable_room1_329")
            global.msg[2] = scr_gettext("obj_readable_room1_330")
        }
        specialread += 1
    }
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a fridge.)/%%"
}
if (room == room_water_undynehouse)
{
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 4
    global.msc = 0
    if (x > 180)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_347")
        global.msg[1] = scr_gettext("obj_readable_room1_349")
        global.msg[2] = scr_gettext("obj_readable_room1_350")
        if (read > 0)
            global.msg[0] = scr_gettext("obj_readable_room1_354")
    }
    else
    {
        global.faceemotion = 0
        global.msg[0] = scr_gettext("obj_readable_room1_360")
        global.msg[1] = scr_gettext("obj_readable_room1_361")
        global.msg[2] = scr_gettext("obj_readable_room1_362")
    }
}
if (room == room_fire_machinepit)
{
    global.msg[0] = "* (It's a high-tech switch with&  lots of buttons.)/"
    global.msg[1] = "* (It's broken^1, so pushing&  them doesn't seem&  to do anything.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's broken.)/%%"
}
if (room == room_fire2)
{
    if (global.flag[428] == 0)
        global.msc = 3021
    else
    {
        global.msc = 0
        global.flag[428] = 2
        global.msg[0] = "* (The button is now stuck.^1)/%%"
    }
    if (global.flag[7] == 1 && global.flag[428] == 2)
    {
        global.msg[0] = "* (Someone seems to have&  already pressed this button.)/"
        global.msg[1] = "* (Oh^1, wait^1, that was you.)/%%"
    }
}
if (room == room_fire_spidershop)
{
    global.msg[0] = scr_gettext("obj_readable_room1_369")
    global.msg[1] = scr_gettext("obj_readable_room1_370")
}
if (room == room_fire_hotelfront_2)
{
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a wall.)/%%"
    else
    {
        global.msg[0] = scr_gettext("obj_readable_room1_375")
        if (read > 8)
            global.msg[0] = "* (It's just a regular wall.^1)&* (Your infatuation with walls&  is concerning.)/%%"
    }
}
if (room == room_fire_core_branch)
    global.msg[0] = scr_gettext("obj_readable_room1_380")
if (room == room_fire_core_left)
    global.msg[0] = scr_gettext("obj_readable_room1_385")
if (room == room_fire_core_top)
    global.msg[0] = scr_gettext("obj_readable_room1_390")
if (room == room_fire_core_right)
{
    global.msg[0] = scr_gettext("obj_readable_room1_395")
    global.msg[1] = scr_gettext("obj_readable_room1_396")
}
if (room == room_fire_spin)
{
    global.msg[0] = "* (It's a tall machine.^1)&* (There's a label here...)/"
    global.msg[1] = "* The SPIN MACHINE(TM)^1!/"
    global.msg[2] = "* Take a ride and become&  10 percent more&  expressive instantly!/"
    global.msg[3] = "* WARNING^1!&* Effects are temporary^1.&* No refunds./%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a tall machine.)/%%"
}
if (room == room_fire_core_topright)
{
    global.msg[0] = "* (It's a strange device&  protruding from the wall.)/"
    global.msg[1] = "* (One of the triangle panels&  is attached to&  the wall here.)/"
    global.msg[2] = "* (...^1)&* (...upon further inspection^1,&  it's just a painting.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a painting.)/%%"
}
if (room == room_fire_core_center)
    global.msg[0] = scr_gettext("obj_readable_room1_401")
if (room == room_fire_core_treasureleft)
    global.msg[0] = scr_gettext("obj_readable_room1_406")
if (room == room_fire_core_mettmeetingplace)
{
    global.msg[0] = scr_gettext("obj_readable_room1_416")
    if (global.flag[425] == 0)
        global.msg[0] = scr_gettext("obj_readable_room1_419")
}
if (room == room_truelab_hall1)
{
    global.msg[0] = scr_gettext("obj_readable_room1_425")
    global.msg[1] = scr_gettext("obj_readable_room1_426")
    global.msg[2] = scr_gettext("obj_readable_room1_427")
    global.msg[3] = scr_gettext("obj_readable_room1_428")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_430")
}
if (room == room_truelab_hub)
{
    global.msg[0] = scr_gettext("obj_readable_room1_435")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_436")
}
if (room == room_truelab_hall2)
{
    global.msg[0] = scr_gettext("obj_readable_room1_441")
    global.msg[1] = scr_gettext("obj_readable_room1_442")
    global.msg[2] = scr_gettext("obj_readable_room1_443")
    global.msg[3] = scr_gettext("obj_readable_room1_444")
    global.msg[4] = scr_gettext("obj_readable_room1_445")
    global.msg[5] = scr_gettext("obj_readable_room1_446")
    global.msg[6] = scr_gettext("obj_readable_room1_447")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_449")
}
if (room == room_truelab_operatingroom)
{
    global.msg[0] = scr_gettext("obj_readable_room1_454")
    global.msg[1] = scr_gettext("obj_readable_room1_455")
    global.msg[2] = scr_gettext("obj_readable_room1_456")
    global.msg[3] = scr_gettext("obj_readable_room1_457")
    global.msg[4] = scr_gettext("obj_readable_room1_458")
    global.msg[5] = scr_gettext("obj_readable_room1_459")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_462")
}
if (room == room_truelab_prebed)
{
    global.msg[0] = scr_gettext("obj_readable_room1_467")
    global.msg[1] = scr_gettext("obj_readable_room1_468")
    global.msg[2] = scr_gettext("obj_readable_room1_469")
    global.msg[3] = scr_gettext("obj_readable_room1_470")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_471")
}
if (room == room_truelab_bedroom)
{
    global.msg[0] = scr_gettext("obj_readable_room1_476")
    global.msg[1] = scr_gettext("obj_readable_room1_477")
    global.msg[2] = scr_gettext("obj_readable_room1_478")
    global.msg[3] = scr_gettext("obj_readable_room1_479")
    global.msg[4] = scr_gettext("obj_readable_room1_480")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_481")
}
if (room == room_truelab_mirror)
{
    global.msg[0] = scr_gettext("obj_readable_room1_486")
    global.msg[1] = scr_gettext("obj_readable_room1_487")
    global.msg[2] = scr_gettext("obj_readable_room1_488")
    global.msg[3] = scr_gettext("obj_readable_room1_489")
    global.msg[4] = scr_gettext("obj_readable_room1_490")
    global.msg[5] = scr_gettext("obj_readable_room1_491")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_492")
}
if (room == room_truelab_hall3)
{
    global.msg[0] = scr_gettext("obj_readable_room1_497")
    global.msg[1] = scr_gettext("obj_readable_room1_498")
    global.msg[2] = scr_gettext("obj_readable_room1_499")
    global.msg[3] = scr_gettext("obj_readable_room1_500")
    global.msg[4] = scr_gettext("obj_readable_room1_501")
    global.msg[5] = scr_gettext("obj_readable_room1_502")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_503")
}
if (room == room_truelab_determination)
{
    global.msg[0] = scr_gettext("obj_readable_room1_517")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_518")
}
if (room == room_truelab_tv)
{
    global.msg[0] = scr_gettext("obj_readable_room1_523")
    global.msg[1] = scr_gettext("obj_readable_room1_524")
    global.msg[2] = scr_gettext("obj_readable_room1_525")
    global.msg[3] = scr_gettext("obj_readable_room1_526")
    global.msg[4] = scr_gettext("obj_readable_room1_527")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_528")
}
if (room == room_truelab_fan)
    global.msc = 780
if (room == room_truelab_cooler)
{
    global.msg[0] = scr_gettext("obj_readable_room1_538")
    global.msg[1] = scr_gettext("obj_readable_room1_539")
    global.msg[2] = scr_gettext("obj_readable_room1_540")
    global.msg[3] = scr_gettext("obj_readable_room1_541")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room1_542")
    if (global.flag[490] == 0)
        global.msg[0] = scr_gettext("obj_readable_room1_543")
}
if (room == room_truelab_prepower)
{
    global.msg[0] = scr_gettext("obj_readable_room1_548")
    if (global.flag[485] == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_551")
        global.msg[1] = scr_gettext("obj_readable_room1_552")
        global.msg[2] = scr_gettext("obj_readable_room1_553")
        global.msg[3] = scr_gettext("obj_readable_room1_554")
        global.msg[4] = scr_gettext("obj_readable_room1_555")
        global.msg[5] = scr_gettext("obj_readable_room1_556")
        global.msg[6] = scr_gettext("obj_readable_room1_557")
        global.msg[7] = scr_gettext("obj_readable_room1_558")
        global.msg[8] = scr_gettext("obj_readable_room1_559")
    }
}
if (room == room_truelab_elevatorinside)
    global.msg[0] = scr_gettext("obj_readable_room1_565")
if (room == room_castle_elevatorout)
{
    if (scr_murderlv() >= 16)
    {
        global.msg[0] = "* No going back now./%%"
        if (read > 0)
            global.msg[0] = "\\R* Time to get a move on./%%"
    }
    else if (scr_murderlv() >= 12)
        global.msg[0] = "* (The elevator isn't working.)/%%"
    else
        global.msg[0] = scr_gettext("obj_readable_room1_570")
}
if (room == room_truelab_castle_elevator)
    global.msg[0] = scr_gettext("obj_readable_room1_575")
if (room == room_tundra_grillby)
{
    if (global.flag[7] == 1 || (!instance_exists(obj_sansmusic)))
        global.msg[0] = "* (You don't feel like&  changing the current track.)/%%"
    else if (scr_murderlv() >= 6)
        global.msg[0] = "* No need to change anything./%%"
    else
    {
        snd_play(snd_noise)
        caster_free(global.currentsong)
        global.msg[0] = "* (You stop the current track.)/"
        if (read == 0)
            global.msg[0] = ("* (It looks like a newly&  refurbished jukebox.^1)&" + global.msg[0])
        global.msg[1] = "* what the fuck did you do how are you seeing this you shouldn't be seeing this what the fuck what the fuck what the fuck what the fuck/"
        if (global.flag[61] == 0)
        {
            global.msg[1] = "* (You decide to change the song&  to something jazzy.)/%%"
            global.flag[61] = 1
        }
        else if (global.flag[61] == 1)
        {
            global.msg[1] = "* (You decide to change the song&  to something calm.)/%%"
            global.flag[61] = 0
        }
        else
            global.msg[0] = "\\W* (Through the power of&  \\Ysave editing^1,&  \\Wyou broke the jukebox.)/%%"
        with (obj_sansmusic)
            alarm[0] = 1
    }
}
if (room == room_water_blookyard)
    global.msg[0] = scr_gettext("obj_readable_room1_585")
if (room == room_tundra_sansroom)
{
    if (x >= 260)
        global.msg[0] = scr_gettext("obj_readable_room1_590")
    else
        global.msg[0] = "* (It's a pile of footwear.^1)&* (Seems like sans collects&  more than just socks.)/%%"
}
if (room == room_tundra_sansbasement)
{
    global.msg[0] = scr_gettext("obj_readable_room1_595")
    global.msg[1] = scr_gettext("obj_readable_room1_596")
    global.msg[2] = scr_gettext("obj_readable_room1_597")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_602")
        global.msg[1] = scr_gettext("obj_readable_room1_603")
        global.msg[2] = scr_gettext("obj_readable_room1_604")
        global.msg[3] = scr_gettext("obj_readable_room1_605")
    }
    if (global.flag[279] == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room1_610")
        global.msg[1] = scr_gettext("obj_readable_room1_611")
        global.msg[2] = scr_gettext("obj_readable_room1_612")
        global.msg[3] = scr_gettext("obj_readable_room1_613")
        global.msg[4] = scr_gettext("obj_readable_room1_614")
    }
}
if (room == room_fire_pacing)
{
    global.msg[0] = scr_gettext("obj_readable_room1_621")
    global.msg[1] = scr_gettext("obj_readable_room1_622")
    global.msg[2] = scr_gettext("obj_readable_room1_623")
    if (global.plot > 166)
    {
        global.msg[2] = "* (Recalling the events&  with the tile puzzle...)/"
        global.msg[3] = "* (You hope there isn't&  an encore performance.)/%%"
    }
    if (scr_murderlv() >= 12)
        global.msg[2] = "* (Looks like the performance&  was cancelled.)/%%"
}
if (room == room_fire_hoteldoors)
    global.msg[0] = scr_gettext("obj_readable_room1_628")
if (room == room_fire_hotellobby)
{
    global.msg[0] = scr_gettext("obj_readable_room1_633")
    global.msg[1] = scr_gettext("obj_readable_room1_634")
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a fountain.)/%%"
}
if (room == room_fire_hotelrestaurant)
{
    global.msg[0] = scr_gettext("obj_readable_room1_639")
    global.msg[1] = scr_gettext("obj_readable_room1_640")
    global.msg[2] = scr_gettext("obj_readable_room1_641")
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (A wall of food reviews.^1)&* (They're all by the owner.)/%%"
}
if (room == room_fire_hotelbed)
{
    global.msg[0] = scr_gettext("obj_readable_room1_646")
    global.msg[1] = scr_gettext("obj_readable_room1_647")
}
if (room == room_water_temvillage)
    global.msg[0] = scr_gettext("obj_readable_room1_652")
read += 1
if (cantalk == 1)
    mydialoguer = instance_create(0, 0, obj_dialoguer)
