myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_echoflower_96")
if (room == room_water2)
{
    if instance_exists(obj_npc_room)
    {
        if (obj_npc_room.talkedto == 0)
        {
            global.msg[0] = scr_gettext("obj_echoflower_104")
            global.msg[1] = scr_gettext("obj_echoflower_105")
            v = 1
        }
        if (obj_npc_room.talkedto == 1 && v == 0)
            global.msg[0] = scr_gettext("obj_echoflower_110")
        if (obj_npc_room.talkedto > 1 && v == 0)
            global.msg[0] = scr_gettext("obj_echoflower_114")
        if (obj_npc_room.talkedto > 0 && v == 1)
            global.msg[0] = scr_gettext("obj_echoflower_118")
    }
    else
        global.msg[0] = scr_gettext("obj_echoflower_123")
}
if (room == room_water3)
{
    if (x < (room_width / 2))
        global.msg[0] = scr_gettext("obj_echoflower_130")
    if (x > (room_width / 2))
        global.msg[0] = scr_gettext("obj_echoflower_131")
    if (scr_murderlv() >= 8)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_echoflower_173")
    }
}
if (room == room_water_bridgepuzz1)
{
    global.msg[0] = "* I can't seem to solve&  this puzzle.&* It's driving me insane.../%"
    if (scr_murderlv() >= 8)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_echoflower_173")
    }
}
if (room == room_water5A)
{
    global.msg[0] = scr_gettext("obj_echoflower_135")
    if (scr_murderlv() >= 8)
        global.msg[0] = scr_gettext("obj_echoflower_173")
}
if (room == room_water5)
{
    global.typer = 60
    global.msg[0] = "* Dum dee dum..^2.&* These bridge seeds will be&  handy once they're grown!/%%"
    if (x < 200)
        global.msg[0] = "* Why'd they keep something like&  that behind this waterfall...^1?&* It's so eerie.../%%"
    if (scr_murderlv() >= 8)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_echoflower_173")
    }
}
if (room == room_water11)
{
    if (x < 400)
    {
        global.typer = 60
        global.msg[0] = "* Oh dear...&* I may have overdone&  it a little.../%%"
    }
    else
        global.msg[0] = scr_gettext("obj_echoflower_205")
    if (scr_murderlv() >= 8)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_echoflower_173")
    }
}
if (room == room_water13)
{
    global.typer = 60
    global.msg[0] = "* The bridge seeds...^2!&* How will anyone find&  them in the grass.../%%"
    if (scr_murderlv() >= 8)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_echoflower_173")
    }
}
if (room == room_water_farm)
{
    global.typer = 60
    global.msg[0] = "* Oh^1.&* I seem to have lost.../"
    global.msg[1] = "* That's okay^1!&* I come here for&  the experience./%%"
    if (scr_murderlv() >= 8)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_echoflower_173")
    }
}
if (room == room_water6)
{
    if (x > 40)
    {
        global.msg[0] = scr_gettext("obj_echoflower_141")
        global.msg[1] = scr_gettext("obj_echoflower_142")
        global.msg[2] = scr_gettext("obj_echoflower_143")
        if (scr_murderlv() >= 8)
            global.msg[0] = scr_gettext("obj_echoflower_145")
    }
    if (x > 180)
    {
        global.msg[0] = scr_gettext("obj_echoflower_150")
        global.msg[1] = scr_gettext("obj_echoflower_151")
        if (scr_murderlv() >= 8)
            global.msg[0] = scr_gettext("obj_echoflower_153")
    }
    if (x > 280)
        global.msg[0] = scr_gettext("obj_echoflower_156")
    if (x > 380)
        global.msg[0] = scr_gettext("obj_echoflower_157")
    if (x > 620)
        global.msg[0] = scr_gettext("obj_echoflower_159")
    if (scr_murderlv() >= 8 || global.flag[350] == 1)
        global.msg[0] = scr_gettext("obj_echoflower_161")
}
if (room == room_water_firepuzzle)
{
    global.msg[0] = scr_gettext("obj_echoflower_166")
    if (scr_murderlv() >= 8)
        global.msg[0] = scr_gettext("obj_echoflower_173")
}
if (room == room_water_savepoint1)
{
    global.msg[0] = scr_gettext("obj_echoflower_171")
    if (scr_murderlv() >= 8)
        global.msg[0] = scr_gettext("obj_echoflower_173")
}
if (room == room_water12)
{
    global.msg[0] = scr_gettext("obj_echoflower_178")
    global.msg[1] = scr_gettext("obj_echoflower_179")
    if (x < 700 && y < 360 && x > 500)
    {
        global.msg[0] = scr_gettext("obj_echoflower_183")
        global.msg[1] = scr_gettext("obj_echoflower_184")
    }
    if (x < 700 && y > 360 && x > 500)
    {
        global.msg[0] = scr_gettext("obj_echoflower_189")
        global.msg[1] = scr_gettext("obj_echoflower_190")
        global.msg[2] = scr_gettext("obj_echoflower_191")
    }
    if (x < 500 && y < 360)
    {
        global.typer = 47
        global.facechoice = 0
        global.faceemotion = 0
        global.msg[0] = "* I-I hope this isn't t-too&  obvious...\\F0 \\T0/"
        global.msg[1] = "* (Huh!?^1)&* (There's a camera on this&  Echo Flower...)/%%"
        if (scr_murderlv() >= 8)
        {
            global.msg[0] = "* (There's a camera on&  this Echo Flower...)/%%"
            global.msg[1] = scr_gettext("obj_echoflower_194")
        }
    }
    if ((scr_murderlv() >= 8 && x > 500) || (global.flag[350] == 1 && x > 500))
        global.msg[0] = scr_gettext("obj_echoflower_194")
}
if (room == room_water_shoe)
{
    global.msg[0] = scr_gettext("obj_echoflower_199")
    if (scr_murderlv() >= 8)
        global.msg[0] = scr_gettext("obj_echoflower_173")
}
if (room == room_water19)
{
    global.msg[0] = scr_gettext("obj_echoflower_205")
    if (y == 160)
    {
        global.msg[0] = scr_gettext("obj_echoflower_209")
        global.msg[1] = scr_gettext("obj_echoflower_210")
        global.msg[2] = scr_gettext("obj_echoflower_211")
    }
    if (y == 240)
    {
        global.msg[0] = scr_gettext("obj_echoflower_217")
        global.msg[1] = scr_gettext("obj_echoflower_218")
    }
    if (y == 320)
    {
        global.msg[0] = scr_gettext("obj_echoflower_223")
        global.msg[1] = scr_gettext("obj_echoflower_224")
        global.msg[2] = scr_gettext("obj_echoflower_225")
    }
    if (y == 420)
    {
        global.msg[0] = scr_gettext("obj_echoflower_230")
        global.msg[1] = scr_gettext("obj_echoflower_231")
    }
    if (y > 450)
    {
        global.msg[0] = scr_gettext("obj_echoflower_236")
        global.msg[1] = scr_gettext("obj_echoflower_237")
    }
    if (xxx == 1 && y == 420)
    {
        global.typer = 4
        global.msg[0] = scr_gettext("obj_echoflower_243")
        global.msg[1] = scr_gettext("obj_echoflower_244")
        global.msg[2] = scr_gettext("obj_echoflower_245")
        global.msg[3] = scr_gettext("obj_echoflower_246")
        global.msg[4] = scr_gettext("obj_echoflower_247")
        global.msg[5] = scr_gettext("obj_echoflower_248")
        global.msg[6] = scr_gettext("obj_echoflower_249")
        if (global.flag[45] == 4)
        {
            global.typer = 4
            global.msg[0] = scr_gettext("obj_echoflower_253")
            global.msg[1] = scr_gettext("obj_echoflower_254")
            global.msg[2] = scr_gettext("obj_echoflower_255")
            global.msg[3] = scr_gettext("obj_echoflower_256")
            global.msg[4] = scr_gettext("obj_echoflower_257")
        }
        special = true
    }
    else if (scr_murderlv() >= 8 || global.flag[350] == 1)
    {
        global.typer = 5
        global.msg[0] = scr_gettext("obj_echoflower_262")
    }
}
if (room == room_water_bird)
{
    global.typer = 5
    if (scr_murderlv() >= 8 && global.flag[27] == 0)
        global.msg[0] = scr_gettext("obj_echoflower_257")
    else if (global.flag[350] == 1)
        global.msg[0] = scr_gettext("obj_echoflower_194")
    else if (talkedto > 0)
    {
        global.msg[0] = "* But there's no sky./%%"
        with (obj_carrybird)
            sprite_index = spr_smallbird_cry
    }
    else
    {
        global.msg[0] = "* My heart.../"
        global.msg[1] = "* My heart is high.../"
        global.msg[2] = "* I want to fly.../"
        global.msg[3] = "* But there's no sky./%%"
        with (obj_carrybird)
            special = true
    }
}
if (room == room_fire_conveyorlaser || room == room_fire_machinepit)
    global.msg[0] = scr_gettext("obj_echoflower_301")
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
