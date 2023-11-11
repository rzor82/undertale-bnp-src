var temp_array;
script_execute(SCR_BORDERSETUP, 0, 0, 0, 0, 0)
script_execute(scr_battlegroup, 0, 0, 0, 0, 0)
newmessage = 0
if (global.ambush == 1)
{
    newmessage = global.msg[0]
    obj_heart.specialscene = 1
    global.myfight = 0
    global.mnfight = 1
    caster_free(global.batmusic)
    if (global.batmusic == mus_battle1)
    {
        global.batmusic = caster_load("music/prebattle1.ogg")
        if global.flag[6]
            global.batmusic = caster_load("music/prebattle2.ogg")
    }
    if (global.batmusic == mus_battle2)
        global.batmusic = caster_load("music/prebattle2.ogg")
    if (global.batmusic == mus_battle3)
        global.batmusic = caster_load("music/prebattle3.ogg")
    caster_play(global.batmusic, 1, 1)
    obj_heart.x = (round(((global.idealborder[0] + global.idealborder[1]) / 2)) - 8)
    obj_heart.y = (round(((global.idealborder[2] + global.idealborder[3]) / 2)) - 8)
}
invalid_battlegroup = (scr_monstersum() == 0 && global.battlegroup != 19)
if invalid_battlegroup
    global.msg[0] = "%%"
global.interact = 3
global.mercyuse = -1
global.inbattle = 1
global.itemused = 0
global.facechoice = 0
global.faceemotion = 0
global.flag[271] = 0
teamselect = 0
runaway = 0
global.msg[4] = global.msg[0]
if (global.flag[27] == 0 && global.flag[15] == 0 && global.batmusic == mus_battle1 && global.extraintro != 2 && audio_is_playing(global.batmusic) && scr_murderlv() >= 7)
{
    caster_free(global.batmusic)
    global.batmusic = caster_load("music/battle3.ogg")
    caster_loop(global.batmusic, 0.8, 1)
    if (scr_murderlv() >= 9)
        caster_set_pitch(global.batmusic, 0.99)
    if (scr_murderlv() >= 11)
        caster_set_pitch(global.batmusic, 0.97)
    if (scr_murderlv() >= 13)
        caster_set_pitch(global.batmusic, 0.95)
    if (scr_murderlv() >= 14)
        caster_set_pitch(global.batmusic, 0.93)
    if (scr_murderlv() >= 15)
        caster_set_pitch(global.batmusic, 0.9)
    if (scr_murderlv() >= 16)
        caster_set_pitch(global.batmusic, 0.89)
}
if (global.kills > 15 && global.plot >= 36)
{
    if (global.lv > 3 && scr_murderlv() < 7 && (global.batmusic == mus_battle1 || global.batmusic == mus_doggers || global.batmusic == mus_battle2 || global.batmusic == mus_guard_intro || global.batmusic == mus_guard_battle || global.batmusic == mus_troublebattle))
    {
        if (global.lv >= 5)
            caster_set_pitch(global.batmusic, 0.97)
        if (global.lv >= 6)
            caster_set_pitch(global.batmusic, 0.93)
        if (global.lv >= 7)
            caster_set_pitch(global.batmusic, 0.87)
        if (global.lv >= 9)
            caster_set_pitch(global.batmusic, 0.83)
        if (global.lv >= 12)
            caster_set_pitch(global.batmusic, 0.73)
        if (global.lv >= 15)
            caster_set_pitch(global.batmusic, 0.69)
    }
}
if (global.actfirst == 0 && global.extraintro == 0 && global.ambush == 0)
{
    global.myfight = 0
    global.mnfight = 0
    global.typer = 1
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
}
shield = global.flag[365] == 1
rage = global.flag[365] > 1
strongermsg = irandom(6)
ragemsgalpha = 0
ragemax = 10
rageamt = 0
strongermsg = choose(0, 1, 2, 3, 4, 5, 6)
shinied = 0
losthponasidenotewhydowenotuseanysortofcasing = 0
previoushp = global.hp
global.turn = 0
global.turntimer = -1
won = 0
global.heard = 0
global.tmsg = "%%%"
if (global.lv > 20)
    global.lv = 20
global.maxhp = (16 + (global.lv * 4))
if (global.hp > (global.maxhp + 15))
    global.hp = (global.maxhp + 15)
global.at = (8 + (global.lv * 2))
global.df = (9 + ceil((global.lv / 4)))
if (global.lv == 20)
{
    global.df = 30
    global.maxhp = 99
}
prevhp = global.hp
tempat = global.at
tempdf = global.df
tempspd = global.sp
active = false
mainloop = (!caster_is_playing(global.batmusicintro))
alarm[0] = 3
healed = 0
drawrect = 1
drawbinfo = 1
rearrange = 0
drawcorners = 0
suppress_border = 0
cost = 0
stoptryingtocheattherunsystem = random(100)
if global.screen_border_active
{
    if (global.battlegroup == 91 || global.battlegroup == 92 || global.battlegroup == 100 || global.battlegroup == 101 || global.battlegroup == 135 || global.battlegroup == 255 || global.battlegroup == 256)
    {
        suppress_border = 1
        scr_enable_screen_border(false)
    }
}
gsprite = 1157
gdraw = 0
global.partynames[0] = global.charname
global.partyat[0] = global.at
global.partywstrength[0] = global.wstrength
global.partycount = 1
global.currentparty = 0
for (var i = 0; i < global.partycount; i++)
{
    whatiheard1_buffer[i] = -1
    whatiheard2_buffer[i] = -1
    whatiheard3_buffer[i] = -1
    myfight_buffer[i] = global.myfight
    mercyuse_buffer[i] = 0
    for (var j = 0; j < 11; j++)
        temp_array[j] = 0
    bmenucoord_buffer[i] = temp_array
    bmenuno_buffer[i] = 0
    mytarget_buffer[i] = 0
    talked_buffer[i] = -1
}
global.en = 0
global.currentprocessing = -1
process_next_frame = 0
myturn = 0
theirturn = 0
enease3 = 0
enease2 = 0
enease = 0
timerset = 0
