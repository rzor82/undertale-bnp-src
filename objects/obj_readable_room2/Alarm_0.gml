myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* You really shouldn't be&  reading this, should you?/%%"
if (room == room_fire_machinepit)
{
    global.msg[0] = "* (It's an assortment of&  high-tech switches&  and buttons.)/"
    global.msg[1] = "* (They're all broken^1, so none&  of them seem&  to do anything.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's broken.)/%%"
}
if (room == room_water_bhouse_lockers)
{
    global.msg[0] = "* (This locker has a&  bag of stardust and&  various space rocks.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (Nothing useful.)/%%"
}
if (room == room_water_bhouse_exit)
{
    global.msg[0] = "* (This locker is empty.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (Empty.)/%%"
}
if (room == room_castle_coffins2)
{
    global.msg[0] = scr_gettext("obj_readable_room1_90")
    global.msg[1] = "* (...^3)&* (It's not a name that&  you recognize.)/%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* (It's empty...?)/%%"
}
if (room == room_fire_hotellobby)
    global.msg[0] = scr_gettext("obj_elevatordoor_258")
if (room == room_ruins_home_store)
    global.msg[0] = "* (It's a basket filled with&  plastic fruit toys.)/%%"
if (room == room_ruins_homehub)
{
    global.msg[0] = "* (It's a large statue&  of some famous monster.)/"
    global.msg[1] = "* (The name on the plaque&  seems to have been&  worn away...)/%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* (It's a large statue of Asgore.)/"
    if (y == 580)
        global.msg[0] = "* \"HOME, Our Grand Capital^2\"&* \"NOTE: The capital has been&  relocated to New Home.\"/%%"
}
if (room == room_water_mirror)
    global.msg[0] = "* (It's a glowing pink crystal.)&* (The light faintly shines on&  your skin.)/%%"
if (room == room_torhouse_bathroom)
{
    global.msg[0] = "* (There's a couple of hygiene&  products on the walls&  of this bathtub.)/"
    global.msg[1] = "* (Shampoo^1, conditioner^1,&  hand soap^1, body wash...^2)&* (A gallon of fur cleaner...)/"
    global.msg[2] = "* (Sadly^1, there are no&  rubber ducks to be seen.)/%%"
}
if (room == room_fire_hh_mainhub)
{
    global.msg[0] = "* (It's an event board.^1)&* (Various notices are attached&  to the front.)/"
    global.msg[1] = "* (Construction updates...^1)&* (Nuzzle Champs announced...^1)&* (Mettaton...)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's an event board.)/%%"
    if (x > 900)
        global.msg[0] = "* (Someone has left their lunch&  sitting out on this table.)/%%"
}
if (room == room_fire_hh_entrance)
{
    global.msg[0] = "* (It's a flashy sign.^1)/"
    global.msg[1] = "* \"Welcome to Hotland Heights!^1\"&* \"Please^1, enjoy your stay!\"/%%"
}
if (room == room_asghouse_bathroom)
{
    global.msg[0] = "* (There's a couple of hygiene&  products on the walls&  of this bathtub.)/"
    global.msg[1] = "* (Shampoo^1, conditioner^1,&  hand soap^1, body wash...^2)&* (A gallon of fur cleaner...)/"
    global.msg[2] = "* (There's also a faded&  women's brand... some&  kind of cleaning product.)/"
    global.msg[3] = "* (The label is so old^1, you&  can only make out the &  \"Women's\" label at the top.)/%%"
}
if (room == room_water12)
{
    global.msg[0] = "* (The sign is barely legible...)/"
    global.msg[1] = "* Bug Catching Room: Right&* Path Forward: Up/%%"
}
if (room == room_water_temshop_room)
{
    global.msg[0] = "* (It's a bowl of&  Temmie Flakes^1.)/"
    global.msg[1] = "* (You suddenly don't&  feel very hungry...)/%%"
    if (scr_murderlv() >= 8)
        global.msg[0] = "* (It's a bowl of&  Temmie Flakes.)/%%"
}
if (room == room_fire_core_controlroom)
{
    global.msg[0] = "* (It's some sort of&  printing machine.)/"
    global.msg[1] = "* (It seems to have been&  hastily knocked over...)/%%"
}
if (room == room_fire_brattycattyshop)
{
    trashchoice = irandom(5)
    global.msg[0] = "* (It's a trash can.)/"
    global.msg[1] = "* (There are some&  trashed items inside.)/"
    global.msg[2] = "* (You dug around in&  the trash can.^1)&* (Well^1, let's see here...)/"
    if (trashchoice == 0)
    {
        global.msg[3] = "* (There's a brown paper&  lunch bag at the bottom.)/"
        global.msg[4] = "* (Inside it is a half-eaten&  tuna sandwich^1, an opened&  cigarette pack^1, a lighter...)/"
        global.msg[5] = "* (...and an MTT-Brand&  romance advice novel.)/%%"
    }
    else if (trashchoice == 1)
    {
        global.msg[3] = "* (There are several crumpled&  Glamburger wrappers.)/"
        global.msg[4] = "* (You're suddenly craving&  nail polish and&  rubber latex...)/%%"
    }
    else if (trashchoice == 2)
        global.msg[3] = "* (...nothing but a lone^1,&  barely eaten Crab Apple.)/%%"
    else if (trashchoice == 3)
        global.msg[3] = "* (Eugh!^1)&* (Spoiled Puppydough Icecream!)/%%"
    else
        global.msg[3] = "* (...a Stoic Onion stares&  right back at you.)/%%"
    if (read > 0)
        global.msg[0] = "* (Your garbage enthusiasm&  is concerning.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a trash can.)/%%"
}
if (room == room_tundra_inn_2f_real)
{
    global.msg[0] = "* (It's a billboard.^1)&* (There are several papers&  tacked to it.)/"
    global.msg[1] = "* (Half of the board&  is taken up by&  job listings.)/"
    global.msg[2] = "* (You aren't old enough to&  apply^1, but even if&  you were...)/"
    global.msg[3] = "* (They're all already taken.^3)^1&&* (By Sans.)/%%"
}
if (room == room_water_gersonshop)
{
    global.msg[0] = "* (A pair of Cloudy Glasses.^1)&* (They actually make&  your sight worse.)/%%"
    if (read > 0)
        global.msg[0] = "* (You can't steal it&  because it's glued&  to the table.)/%%"
    if (scr_murderlv() >= 8)
        global.msg[0] = "* (A pair of Cloudy Glasses.)/%%"
}
if (room == room_asrielroom)
{
    global.msg[0] = scr_gettext("obj_readable_room2_63")
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_67")
}
if (room == room_asrielroom_final)
{
    global.msg[0] = scr_gettext("obj_readable_room2_72")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room2_75")
}
if (room == room_tundra_teenhangoutroom)
    global.msg[0] = "* (It's a red bicycle with&  a golden basket attached&  to the front.)/%%"
if (room == room_ruins_sewer2)
{
    global.msg[0] = "* (Water is rushing&  out of this drain.)/"
    global.msg[1] = "* (Watching the water&  flow is slightly&  relaxing...)/%%"
}
if (room == room_ruins18)
{
    global.msg[0] = "* (It's a trash can.^1)&* (Or is it a trash can't?^1)/"
    global.msg[1] = "%%"
    if (global.flag[7] == 1)
        global.msg[1] = "* (At the end of the day^1,&  it's a trash could.^1)/%%"
    if (scr_murderlv() >= 2)
        global.msg[1] = "* (Yeah^1, that sounds about right.)/%%"
}
if (room == room_ruins19)
{
    global.msg[0] = "* (A watering can and a spade.)&  (Seems to be Toriel's.)/%%"
    if (read > 0)
        global.msg[0] = "* (Just gardening tools.)/%%"
}
if (room == room_fire_lavalake)
    global.msg[0] = "* (It's a strange device.)&* (You can't even see inside&  because of all the steam.)/%%"
if (room == room_fire_core1)
{
    global.msg[0] = "* (The screen displays&  large characters...)/"
    global.msg[1] = "\\G>Control Room ->/%%"
}
if (room == room_water_mushroom)
    global.msg[0] = "* (It's a mushroom encased in&  a cyan crystal.)/%%"
if (room == room_torhouse2)
{
    if (x >= 200)
    {
        global.msg[0] = scr_gettext("obj_readable_room2_80")
        global.msg[1] = scr_gettext("obj_readable_room2_81")
        global.msg[2] = scr_gettext("obj_readable_room2_82")
        global.msg[3] = scr_gettext("obj_readable_room2_83")
        global.msg[4] = scr_gettext("obj_readable_room2_84")
        global.msg[5] = scr_gettext("obj_readable_room2_85")
        if (scr_murderlv() == 1)
            global.msg[0] = "\\R* I've already read these./%%"
    }
    else
    {
        global.msg[0] = scr_gettext("obj_readable_room2_140")
        if (global.flag[103] > 0)
            global.msg[0] = scr_gettext("obj_readable_room2_141")
        if (global.flag[7] == 1)
            global.msg[0] = scr_gettext("obj_readable_room2_144")
    }
}
if (room == room_asgoreroom)
{
    global.msg[0] = scr_gettext("obj_readable_room2_90")
    global.msg[1] = scr_gettext("obj_readable_room2_91")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room2_94")
}
if (room == room_asghouse2)
{
    global.msg[0] = scr_gettext("obj_readable_room2_100")
    global.msg[1] = scr_gettext("obj_readable_room2_101")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room2_105")
}
if (room == room_asghouse3)
    global.msg[0] = scr_gettext("obj_readable_room2_111")
if (room == room_torhouse1)
    global.msg[0] = scr_gettext("obj_readable_room2_114")
if (room == room_asghouse1)
    global.msg[0] = scr_gettext("obj_readable_room2_115")
if (room == room_castle_throneroom)
    global.msg[0] = scr_gettext("obj_readable_room2_119")
if (room == room_torielroom)
{
    global.msg[0] = scr_gettext("obj_readable_room2_124")
    if (global.flag[7] == 1)
        global.msg[0] = "* (Still a regular old bucket^3 & &  of snails.)/%%"
    if (x > 90)
    {
        global.msg[0] = scr_gettext("obj_readable_room2_127")
        global.msg[1] = scr_gettext("obj_readable_room2_128")
        global.msg[2] = scr_gettext("obj_readable_room2_129")
        global.flag[50] = 1
    }
}
if (room == room_torhouse3)
{
    global.msg[0] = scr_gettext("obj_readable_room2_135")
    if (global.flag[50] == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_136")
    if (x > 300 && y == 175)
    {
        global.msg[0] = "* (It's a book about snails.^1)&* (It's opened at a&  random page...)/"
        global.msg[1] = "* Snails are passive creatures^1,&  or so it seems./"
        global.msg[2] = "* There is no research on&  whether or not they wish for&  our demise at every moment./"
        global.msg[3] = "* (...that's enough snail&  facts for one day.)/%%"
    }
}
if (room == room_kitchen)
{
    global.msg[0] = scr_gettext("obj_readable_room2_140")
    if (global.flag[103] > 0)
        global.msg[0] = scr_gettext("obj_readable_room2_141")
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_144")
}
if (room == room_tundra_library)
{
    global.msg[0] = scr_gettext("obj_readable_room2_149")
    global.msg[1] = scr_gettext("obj_readable_room2_150")
    global.msg[2] = scr_gettext("obj_readable_room2_151")
    global.msg[3] = scr_gettext("obj_readable_room2_152")
}
if (room == room_icecave1)
    global.msg[0] = scr_gettext("obj_readable_room2_164")
if (room == room_tundra1)
    global.msg[0] = scr_gettext("obj_readable_room2_166")
if (room == room_tundra8)
{
    if instance_exists(obj_iceflag)
    {
        if (read == 0)
        {
            if (obj_iceflag.image_index == 0)
            {
                if (global.flag[387] == 0)
                {
                    global.msg[0] = scr_gettext("obj_readable_room2_178")
                    global.msg[1] = scr_gettext("obj_readable_room2_179")
                    global.msg[2] = scr_gettext("obj_readable_room2_180")
                    global.gold += 50
                    global.flag[387] += 1
                }
                else
                {
                    global.msg[0] = scr_gettext("obj_readable_room2_186")
                    global.msg[1] = scr_gettext("obj_readable_room2_187")
                    global.gold += 10
                }
            }
            if (obj_iceflag.image_index == 1)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_194")
                global.msg[1] = scr_gettext("obj_readable_room2_195")
                global.gold += 5
            }
            if (obj_iceflag.image_index == 2)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_201")
                global.msg[1] = scr_gettext("obj_readable_room2_202")
                global.gold += 3
            }
            if (obj_iceflag.image_index == 3)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_208")
                global.msg[1] = scr_gettext("obj_readable_room2_209")
                global.gold += 2
            }
            if (obj_iceflag.image_index == 4)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_215")
                global.msg[1] = scr_gettext("obj_readable_room2_216")
                global.gold += 1
            }
            if (obj_iceflag.image_index == 5)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_222")
                global.msg[1] = scr_gettext("obj_readable_room2_223")
                global.gold += 2
            }
            if (obj_iceflag.image_index == 6)
            {
                global.msg[0] = scr_gettext("obj_readable_room2_229")
                global.msg[1] = scr_gettext("obj_readable_room2_230")
                global.msg[2] = scr_gettext("obj_readable_room2_231")
                global.gold += 4
            }
        }
        else
            global.msg[0] = scr_gettext("obj_readable_room2_238")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_readable_room2_245")
        if (global.flag[203] >= 16)
            global.msg[0] = scr_gettext("obj_readable_room2_247")
    }
}
if (room == room_tundra8A)
    global.msg[0] = scr_gettext("obj_readable_room2_252")
if (room == room_tundra_sanshouse)
{
    if instance_exists(obj_papyrusparent)
    {
        scr_papface(0, 0)
        global.msg[1] = scr_gettext("obj_readable_room2_259")
        global.msg[2] = scr_gettext("obj_readable_room2_260")
        global.msg[3] = scr_gettext("obj_readable_room2_261")
        global.msg[4] = scr_gettext("obj_readable_room2_262")
        global.msg[5] = scr_gettext("obj_readable_room2_263")
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room2_266")
    if (read > 0)
        global.msg[0] = scr_gettext("obj_readable_room2_268")
}
if (room == room_tundra_paproom)
{
    if instance_exists(obj_papyrusparent)
    {
        scr_papface(0, 0)
        global.msg[1] = scr_gettext("obj_readable_room2_276")
        global.msg[2] = scr_gettext("obj_readable_room2_277")
        global.msg[3] = scr_gettext("obj_readable_room2_278")
        global.msg[4] = scr_gettext("obj_readable_room2_279")
        global.msg[5] = scr_gettext("obj_readable_room2_280")
        global.msg[6] = scr_gettext("obj_readable_room2_281")
        global.msg[7] = scr_gettext("obj_readable_room2_282")
        global.msg[8] = scr_gettext("obj_readable_room2_283")
        global.msg[9] = scr_gettext("obj_readable_room2_284")
        global.msg[10] = scr_gettext("obj_readable_room2_285")
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room2_287")
    if (read > 0)
        global.msg[0] = scr_gettext("obj_readable_room2_288")
}
if (room == room_water7)
{
    global.msg[0] = scr_gettext("obj_readable_room2_295")
    global.msg[1] = scr_gettext("obj_readable_room2_296")
    global.msg[2] = scr_gettext("obj_readable_room2_297")
}
if (room == room_water_firepuzzle)
    global.msg[0] = "* (It's a pink crystal wall.^1)&* (It's very cloudy..^1. you can't&  even see your reflection...)/%%"
if (room == room_water14)
{
    global.msg[0] = scr_gettext("obj_readable_room2_302")
    global.msg[1] = scr_gettext("obj_readable_room2_303")
    global.msg[2] = scr_gettext("obj_readable_room2_304")
}
if (room == room_water_candy)
    global.msg[0] = "* (It's a candy dish.^2)&* (For some reason^1, it feels&  oddly familiar...)/%%"
if (room == room_water15)
{
    global.msg[0] = scr_gettext("obj_readable_room2_310")
    global.msg[1] = scr_gettext("obj_readable_room2_311")
    global.msg[2] = scr_gettext("obj_readable_room2_312")
}
if (room == room_water_preundyne)
{
    global.msg[0] = scr_gettext("obj_readable_room2_318")
    global.msg[1] = scr_gettext("obj_readable_room2_319")
    global.msg[2] = scr_gettext("obj_readable_room2_320")
}
if (room == room_water_prebird)
{
    global.msg[0] = scr_gettext("obj_readable_room2_326")
    global.msg[1] = scr_gettext("obj_readable_room2_327")
}
if (room == room_fire_lab1)
{
    global.msg[0] = scr_gettext("obj_readable_room2_332")
    if (global.plot < 126 && scr_murderlv() < 12)
        global.msg[0] = scr_gettext("obj_readable_room2_333")
}
if (room == room_fire_lab2)
    global.msc = 643
if (room == room_fire_cookingshow)
{
    global.msg[0] = scr_gettext("obj_readable_room2_343")
    if (global.plot < 134)
        global.msg[0] = scr_gettext("obj_readable_room2_345")
    if instance_exists(obj_mettaton_npc)
    {
        global.typer = 27
        global.msg[0] = scr_gettext("obj_readable_room2_353")
        global.msg[1] = scr_gettext("obj_readable_room2_354")
        global.msg[2] = "* YOU'RE EXCITED^1,&  AREN'T YOU^1, DARLING?(TM)/%%"
    }
    if (global.plot == 134)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_readable_room2_360")
    }
}
if (room == room_water_undynehouse)
{
    global.typer = 37
    global.facechoice = 5
    global.faceemotion = 0
    global.msc = 0
    if (x < 100)
    {
        global.msg[0] = scr_gettext("obj_readable_room2_373")
        global.msg[1] = scr_gettext("obj_readable_room2_374")
        global.msg[2] = scr_gettext("obj_readable_room2_375")
        if (read > 0)
            global.msg[0] = scr_gettext("obj_readable_room2_377")
    }
    if (x == 270 && y == 175)
    {
        global.msg[0] = "\\E9* Yeah^1! You should totally&  meet my pet fish!!!/"
        global.msg[1] = "\\E0* Huh^1?&* What's their name^1?/"
        global.msg[2] = "\\E6* It's Dog!/%%"
        if (read > 0)
            global.msg[0] = "\\E1* What's that look for^1?&\\E2* Can't I name my&  fish in peace!?!?/%%"
    }
}
if (room == room_fire_spidershop)
{
    global.msg[0] = scr_gettext("obj_readable_room2_390")
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a spider donut.)/%%"
}
if (room == room_fire_core_branch)
    global.msg[0] = scr_gettext("obj_readable_room2_395")
if (room == room_fire_core_right)
    global.msg[0] = scr_gettext("obj_readable_room2_400")
if (room == room_truelab_hall1)
{
    global.msg[0] = scr_gettext("obj_readable_room2_405")
    global.msg[1] = scr_gettext("obj_readable_room2_406")
    global.msg[2] = scr_gettext("obj_readable_room2_407")
    global.msg[3] = scr_gettext("obj_readable_room2_408")
    global.msg[4] = scr_gettext("obj_readable_room2_409")
    global.msg[5] = scr_gettext("obj_readable_room2_410")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_412")
}
if (room == room_truelab_prebed)
{
    global.msg[0] = scr_gettext("obj_readable_room2_417")
    global.msg[1] = scr_gettext("obj_readable_room2_418")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_419")
}
if (room == room_truelab_bedroom)
    global.msg[0] = scr_gettext("obj_readable_room2_424")
if (room == room_truelab_mirror)
{
    global.msg[0] = scr_gettext("obj_readable_room2_429")
    global.msg[1] = scr_gettext("obj_readable_room2_430")
    global.msg[2] = scr_gettext("obj_readable_room2_431")
    global.msg[3] = scr_gettext("obj_readable_room2_432")
    global.msg[4] = scr_gettext("obj_readable_room2_433")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_434")
}
if (room == room_truelab_hall3)
{
    global.msg[0] = scr_gettext("obj_readable_room2_439")
    global.msg[1] = scr_gettext("obj_readable_room2_440")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_441")
}
if (room == room_truelab_tv)
{
    global.msg[0] = scr_gettext("obj_readable_room2_446")
    global.msg[1] = scr_gettext("obj_readable_room2_447")
}
if (room == room_truelab_fan)
{
    global.msg[0] = scr_gettext("obj_readable_room2_452")
    global.msg[1] = scr_gettext("obj_readable_room2_453")
    global.msg[2] = scr_gettext("obj_readable_room2_454")
    global.msg[3] = scr_gettext("obj_readable_room2_455")
    global.msg[4] = scr_gettext("obj_readable_room2_456")
    global.msg[5] = scr_gettext("obj_readable_room2_457")
}
if (room == room_truelab_cooler)
{
    global.msg[0] = scr_gettext("obj_readable_room2_462")
    global.msg[1] = scr_gettext("obj_readable_room2_463")
    global.msg[2] = scr_gettext("obj_readable_room2_464")
    global.msg[3] = scr_gettext("obj_readable_room2_465")
    global.msg[4] = scr_gettext("obj_readable_room2_466")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_467")
    if (global.flag[490] == 0)
        global.msg[0] = scr_gettext("obj_readable_room2_468")
}
if (room == room_truelab_prepower)
{
    global.msg[0] = scr_gettext("obj_readable_room2_473")
    if (global.flag[485] == 1)
    {
        global.msg[0] = scr_gettext("obj_readable_room2_476")
        global.msg[1] = scr_gettext("obj_readable_room2_477")
    }
}
if (room == room_tundra_town)
{
    global.msg[0] = scr_gettext("obj_readable_room2_483")
    if (instance_exists(obj_papyrus_houseoutside) || instance_exists(obj_papyrus_room))
    {
        global.msg[0] = "* (It's locked from the&  inside.)/"
        scr_papface(1, 5)
        global.msg[2] = scr_gettext("obj_readable_room2_488")
        if instance_exists(obj_undyne_friendc)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("obj_readable_room2_492")
            global.msg[3] = scr_gettext("obj_readable_room2_493")
            scr_undface(4, 6)
            global.msg[5] = scr_gettext("obj_readable_room2_495")
            scr_papface(6, 0)
            global.msg[7] = scr_gettext("obj_readable_room2_497")
            global.msg[8] = scr_gettext("obj_readable_room2_498")
            global.msg[9] = scr_gettext("obj_readable_room2_499")
            scr_undface(10, 9)
            global.msg[11] = scr_gettext("obj_readable_room2_501")
        }
        if (global.flag[67] < 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("obj_readable_room2_506")
            if instance_exists(obj_undyne_friendc)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("obj_readable_room2_509")
                scr_undface(3, 1)
                global.msg[4] = scr_gettext("obj_readable_room2_511")
                scr_papface(5, 0)
                global.msg[6] = scr_gettext("obj_readable_room2_513")
                global.msg[7] = scr_gettext("obj_readable_room2_514")
                scr_undface(8, 0)
                global.msg[9] = scr_gettext("obj_readable_room2_516")
                global.msg[10] = scr_gettext("obj_readable_room2_517")
                scr_papface(11, 1)
                global.msg[12] = scr_gettext("obj_readable_room2_519")
                global.msg[13] = scr_gettext("obj_readable_room2_520")
                scr_undface(14, 1)
                global.msg[15] = scr_gettext("obj_readable_room2_522")
            }
        }
        if (read > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("obj_readable_room2_528")
        }
    }
}
if (room == room_tundra_grillby)
    global.msg[0] = scr_gettext("obj_readable_room2_534")
if (room == room_tundra_sansroom)
{
    if (x == 175)
    {
        global.msg[0] = "* (You dug around in&  the trash can.^1)&* (Well^1, let's see here...)/"
        global.msg[1] = "* (Inside are several crumpled&  invitations to some kind&  of fighting tournament.)/"
        global.msg[2] = "* (Doesn't seem to be&  any that are even&  opened...)/%%"
    }
    else
        global.msg[0] = scr_gettext("obj_readable_room2_539")
}
if (room == room_tundra_sansbasement)
    global.msg[0] = scr_gettext("obj_readable_room2_544")
if (room == room_fire_hotelrestaurant)
{
    global.msg[0] = scr_gettext("obj_readable_room2_549")
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a performance schedule.^1)&* (Seems like there's a break now.)/%%"
}
if (room == room_fire_hotelbed)
{
    global.msg[0] = scr_gettext("obj_readable_room2_554")
    global.msg[1] = scr_gettext("obj_readable_room2_555")
}
if (room == room_water_temvillage)
{
    global.msg[0] = scr_gettext("obj_readable_room2_560")
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_readable_room2_563")
}
if (room == room_water11)
{
    global.msg[0] = scr_gettext("obj_readable_room2_569")
    global.msg[1] = scr_gettext("obj_readable_room2_570")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
read += 1
