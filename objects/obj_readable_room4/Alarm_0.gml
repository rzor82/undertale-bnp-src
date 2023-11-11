myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* You really shouldn't be&  reading this, should you?/%%"
if (room == room_torhouse2)
{
    if (x < 120)
    {
        global.msg[0] = scr_gettext("obj_readable_room4_78")
        if (global.flag[45] == 4)
            global.msg[0] = scr_gettext("obj_readable_room4_79")
    }
    if (x > 130 && x < 190)
        global.msg[0] = "* (There is some white fur&  stuck in the drain.)/%%"
    if (x > 220)
    {
        global.msg[0] = "* (There are many books.)/"
        global.msg[1] = "* Tales of Snails - A Story Book./"
        global.msg[2] = "* Snails Have Tails^1! - A Thesis/"
        global.msg[3] = "* (...and various other&  snail-related literature.)/%%"
    }
}
if (room == room_ruins_homehub)
{
    if (global.plot > 16 && read == 0)
    {
        global.msg[0] = "* (This tree looks just like&  the one in front of&  Toriel's house...)/"
        global.msg[1] = "* (Besides the fact that&  it actually has leaves^1,&  that is.)/%%"
    }
    else
        global.msg[0] = "* (This tree has bright red&  leaves^1, with some fallen and&  spread out at its base.)/%%"
}
if (room == room_ruins_home_store)
{
    global.msg[0] = "* (There's an assortment of&  crummy microwave dinners.)/"
    global.msg[1] = "* (Among them lies the&  peak of eatery...)&* (...Kool Kuisine...)/%%"
}
if (room == room_asrielroom)
{
    global.msg[0] = "* (A tissue box to&  wipe your sorrows away.)/%%"
    if (read > 0)
        global.msg[0] = "* (Waiting for something&  to happen...?)/%%"
}
if (room == room_fire_hh_entrance)
{
    global.msg[0] = "* (It's a tree with redish-orange&  leaves and dark red bark.)/"
    global.msg[1] = "* (Looking closely^1, you spot&  embers embedded into the bark^1,&  burning indefinitely.)/%%"
}
if (room == room_fire_hh_mainhub)
{
    global.msg[0] = "* (It's a poster for one&  of Mettaton's shows.)/"
    global.msg[1] = "* (Seems like you just&  missed the time slot.)/%%"
    if (scr_murderlv() >= 12)
        global.msg[1] = "* (It's been cancelled.)/%%"
}
if (room == room_fire_core_controlroom)
{
    if (x < 150)
        global.msg[0] = "* (It's a recycling bin.^1)&* (It's completely empty.)/%%"
    else
    {
        global.msg[0] = "* (Large letters are displayed&  on this monitor...)/"
        global.msg[1] = "\\G>CONTROL ROO^1M&>PLEASE DO NOT PUSH& RANDOM BUTTONS/"
        global.msg[2] = "\\G>THANK YOU FOR YOUR& COOPERATION/%%"
    }
}
if (room == room_fire_brattycattyshop)
{
    global.msg[0] = "* (It's a toppled over&  chip dispenser.)/"
    global.msg[1] = "* (Looks like they couldn't&  get it to work...)/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a toppled over&  chip dispenser.)/%%"
}
if (room == room_water_gersonshop)
{
    global.msg[0] = "* (It's a cup of Sea Tea.^1)&* (Served freezing cold to&  capture the Ocean's Essence.)/%%"
    if (read > 0)
        global.msg[0] = "* (You can't steal it&  because it's glued&  to the table.)/%%"
}
if (room == room_torhouse3)
{
    global.msg[0] = scr_gettext("obj_readable_room4_63")
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_readable_room4_64")
    if ossafe_file_exists("system_information_963")
        global.msg[0] = "* (It's what they call \"you.\")/%%"
    if (scr_murderlv() >= 1)
        global.msg[0] = scr_gettext("obj_readable_room4_66")
}
if (room == room_ruins19)
    global.msg[0] = "* (A bed of golden flowers.)/%%"
if (room == room_asghouse2)
    global.msg[0] = scr_gettext("obj_readable_room4_67")
if (room == room_asghouse3)
{
    global.msg[0] = scr_gettext("obj_readable_room4_70")
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_readable_room4_64")
    if ossafe_file_exists("system_information_963")
        global.msg[0] = "* (It's what they call \"you.\")/%%"
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room4_73")
}
if (room == room_kitchen && x < 130)
    global.msg[0] = scr_gettext("obj_readable_room4_76")
if (room == room_kitchen && murdererlv1() == 1 && x < 130)
    global.msg[0] = scr_gettext("obj_readable_room4_77")
if (room == room_kitchen && x > 130)
    global.msg[0] = scr_gettext("obj_readable_room4_78")
if (room == room_kitchen && x > 130 && global.flag[45] == 4)
    global.msg[0] = scr_gettext("obj_readable_room4_79")
if (room == room_kitchen_final && x < 130)
{
    global.msg[0] = scr_gettext("obj_readable_room4_83")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room4_84")
}
if (room == room_kitchen_final && x > 130)
{
    global.msg[0] = scr_gettext("obj_readable_room4_90")
    if (scr_murderlv() >= 16)
        global.msg[0] = scr_gettext("obj_readable_room4_91")
}
if (room == room_asrielroom_final)
{
    if (x < 160)
    {
        global.msg[0] = scr_gettext("obj_readable_room4_98")
        if (scr_murderlv() >= 16)
            global.msg[0] = scr_gettext("obj_readable_room4_99")
    }
    if (x > 160)
    {
        global.msg[0] = scr_gettext("obj_readable_room4_104")
        if (scr_murderlv() >= 16)
            global.msg[0] = scr_gettext("obj_readable_room4_105")
    }
}
if (room == room_asgoreroom)
    global.msg[0] = scr_gettext("obj_readable_room4_110")
if (room == room_tundra_library)
{
    global.msg[0] = scr_gettext("obj_readable_room4_114")
    global.msg[1] = scr_gettext("obj_readable_room4_116")
    global.msg[2] = scr_gettext("obj_readable_room4_117")
    global.msg[3] = scr_gettext("obj_readable_room4_118")
    global.msg[4] = scr_gettext("obj_readable_room4_119")
    global.msg[5] = scr_gettext("obj_readable_room4_120")
}
if (room == room_water_prebird)
{
    global.msg[0] = scr_gettext("obj_readable_room4_126")
    global.msg[1] = scr_gettext("obj_readable_room4_127")
    global.msg[2] = scr_gettext("obj_readable_room4_128")
    if (global.flag[97] > 0)
    {
        global.msg[0] = scr_gettext("obj_readable_room4_131")
        global.flag[97] = 2
    }
    else
        global.flag[97] = 1
}
if (room == room_water7)
{
    global.msg[0] = scr_gettext("obj_readable_room4_139")
    global.msg[1] = scr_gettext("obj_readable_room4_140")
}
if (room == room_fire_lab1)
{
    global.msg[0] = scr_gettext("obj_readable_room4_145")
    if (global.plot < 126)
        global.msg[0] = scr_gettext("obj_readable_room4_146")
    if ossafe_file_exists("system_information_963")
        global.msg[0] = "* (It's what they call \"you.\")/%%"
    if (scr_murderlv() >= 12)
        global.msg[0] = scr_gettext("obj_readable_room4_147")
}
read += 1
if (room == room_fire_lab2)
    global.msc = 645
if (room == room_torhouse_bathroom || room == room_asghouse_bathroom)
    global.msc = 3008
if (room == room_fire_cookingshow)
{
    global.msg[0] = scr_gettext("obj_readable_room4_159")
    if (global.plot < 134 && scr_murderlv() < 12)
        global.msg[0] = scr_gettext("obj_readable_room4_161")
    if instance_exists(obj_mettaton_npc)
    {
        global.typer = 27
        global.msg[0] = scr_gettext("obj_readable_room4_168")
        global.msg[1] = scr_gettext("obj_readable_room4_169")
        global.msg[2] = scr_gettext("obj_readable_room4_170")
        if (global.plot == 134)
        {
            global.msg[0] = scr_gettext("obj_readable_room4_174")
            global.msg[1] = scr_gettext("obj_readable_room4_175")
        }
    }
    if (scr_murderlv() >= 12)
        global.msg[0] = "* (It's a microwave.)&* (You're not much of&  a microwave fan.)/%%"
}
if (room == room_water_undynehouse)
{
    global.msg[0] = scr_gettext("obj_readable_room4_182")
    if (x > 200)
    {
        global.facechoice = 5
        global.typer = 37
        global.msc = 714
    }
}
if (room == room_truelab_hall1)
{
    global.msg[0] = scr_gettext("obj_readable_room4_193")
    global.msg[1] = scr_gettext("obj_readable_room4_194")
    global.msg[2] = scr_gettext("obj_readable_room4_195")
    global.msg[3] = scr_gettext("obj_readable_room4_196")
    global.msg[4] = scr_gettext("obj_readable_room4_197")
    global.msg[5] = scr_gettext("obj_readable_room4_198")
    global.msg[6] = scr_gettext("obj_readable_room4_199")
    if (global.flag[485] == 1)
        global.msg[0] = scr_gettext("obj_readable_room4_201")
}
if (room == room_truelab_mirror)
    global.msg[0] = scr_gettext("obj_readable_room4_206")
if (room == room_tundra_sansroom)
{
    if (y < 128)
        global.msc = 845
    global.msg[0] = scr_gettext("obj_readable_room4_212")
}
if (room == room_tundra_sansbasement)
    global.msg[0] = scr_gettext("obj_readable_room4_217")
if (room == room_tundra_town)
{
    if (global.flag[497] < 3)
        global.msg[0] = scr_gettext("obj_readable_room4_222")
    if (global.flag[497] >= 3)
    {
        global.msg[0] = scr_gettext("obj_readable_room4_226")
        instance_create(0, 0, obj_sansbasemententer)
        snd_play(snd_item)
    }
}
if (room == room_ice_dog)
    global.msg[0] = scr_gettext("obj_readable_room4_234")
if (room == room_water3)
    global.msg[0] = scr_gettext("obj_readable_room4_237")
mydialoguer = instance_create(0, 0, obj_dialoguer)
