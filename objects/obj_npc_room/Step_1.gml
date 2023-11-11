script_execute(scr_depth, 0, 0, 0, 0, 0)
if (fun == false && sprite_index != spr_npc_mewmew)
    scr_npc_anim()
if instance_exists(OBJ_WRITER)
{
    if instance_exists(obj_face)
    {
        fun = true
        image_speed = 0
        image_index = 0
    }
    else if (funoverride == 0)
        fun = false
}
if (room == room_water_mushroom && warp_times == 5 && warp_talked == 0 && myinteract == 0 && x > 100)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = "* Hey^1, where are you going?/%%"
    global.interact = 1
    obj_mainchara.y -= 200
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    obj_mainchara.y += 200
    warp_talked = 1
    myinteract = 3
}
if (room == room_ruins_homehub && nubcon == 1 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = "* I'm Nubert./"
    global.msg[1] = "* Everyone loves me./%%"
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    nubcon = 2
}
if (room == room_ruins_homehub && nubcon == 2 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    fun = true
    funoverride = 1
    global.msg[0] = "* (You shout \"My man!\" while&  Nubert and you partake&  in finger gun shooting.)/"
    global.msg[1] = "* (How Nubert manages to&  pull off finger guns&  is unknown.)/%%"
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    nubcon = 3
}
if (room == room_ruins_homehub && nubcon == 3 && instance_exists(OBJ_WRITER) == 0)
{
    fun = false
    funoverride = 0
    nubcon = 4
}
if (room == room_ruins_home_store && troublecon == 1 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    sprite_index = spr_troubleboys_hitch_store
    global.msg[0] = "* Oh^1, it's the kid we&  met down in the sewers^1.&* How ya doin'^1? Ha-ha!/%%"
    if (talkedto > 1)
        global.msg[0] = "* If you're here to ask&  about all that stuff we&  had stole^1, well.../%%"
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    troublecon = 2
}
if (room == room_ruins_home_store && troublecon == 2 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    sprite_index = spr_troubleboys_portabie_store
    global.msg[0] = "\\K0* (\\K1We work at this store&  when we're not hanging&  out around town...\\K0)/%%"
    if (talkedto > 1)
    {
        global.msg[0] = "\\K0* (\\K1Hitch and I returned&  all of it to their&  rightful owners^1, heh.\\K0)/"
        global.msg[1] = "\\K0* (\\K1As for the GOLD^1,&  that's why we took up&  this store job.\\K0)/%%"
        if (scr_murderlv() > 0)
        {
            global.msg[0] = "\\K0* (\\K1We couldn't find any&  of the people we&  had stole it from.../"
            global.msg[1] = "\\K0* (\\K1In fact^1, we couldn't&  really find ANYBODY...\\K0)/%%"
        }
    }
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    troublecon = 3
}
if (room == room_ruins_home_store && troublecon == 3 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    sprite_index = spr_troubleboys_hitch_store
    global.msg[0] = "* Well^1, We're not gonna pick&  out your items out for&  you^1, but.../"
    global.msg[1] = "* Tell you what^1.&* Take your pick of&  the store^1, kid./"
    global.msg[2] = "* Not like anyone else&  is gonna be taking&  them any time soon!/%%"
    if (scr_murderlv() > 0)
        global.msg[0] = "* Hmm..^1.&* I wonder where all&  of our customers are...?/"
    if (talkedto > 1)
    {
        global.msg[0] = "* I've turned over a&  new leaf^1, human^1!&* From now on^1, I'll.../"
        global.msg[1] = "* Mop floors until I&  make enough money to&  pay off the loan sharks!/"
        global.msg[2] = "* Hyuck hyuck hyuck!/%%"
        if (scr_murderlv() > 0)
            global.msg[1] = "* Become a private investigator&  and figure out who&  made everyone disappear!/"
    }
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    troublecon = 4
}
if (room == room_ruins_home_store && troublecon == 4 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    sprite_index = spr_troubleboys_portabie_store
    global.msg[0] = "\\K0* (\\K1Th-thanks for changing his&  mind about the bullying&  thing^1, heh.....\\K0)/%%"
    if (scr_murderlv() > 0)
        global.msg[0] = "\\K0* (\\K1Th-thanks for changing your&  mind about the attacking&  and killing thing^1, heh.....\\K0)/%%"
    if (talkedto > 1)
    {
        global.msg[0] = "\\K0* (\\K1D-don't call them that^1,&  Hitch^1, you were the one&  that stole from them...\\K0)/"
        global.msg[1] = "\\K0* (\\K1At least he's working&  on it^1, I guess...\\K0)/%%"
        if (scr_murderlv() > 0)
            global.msg[0] = "\\K0* (\\K1I don't think that's&  the message to take&  from all of this...\\K0)/"
    }
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    troublecon = 5
}
if (room == room_ruins_home_store && troublecon == 5 && instance_exists(OBJ_WRITER) == 0)
{
    global.interact = 0
    troublecon = 0
}
if (chattedwith > 0 && instance_exists(OBJ_WRITER) == 0)
{
    fun = true
    global.interact = 3
    if instance_exists(obj_npc_room)
    {
        with (obj_npc_room)
        {
            fun = true
            image_speed = 0.2
        }
    }
    if (scr_murderlv() >= 12 && room == room_fire_hotel_bpants)
        image_speed = 0
    if (room == room_water_gersonshop && donetalking == 0)
    {
        sprite_index = spr_gerson_npc_laugh
        fader = instance_create(0, 0, obj_unfader)
        fader.tspeed = 0.05
        alarm[2] = 10
        image_speed = 0.2
        donetalking = 1
    }
    if (room == room_fire_brattycattyshop && donetalking == 0)
    {
        if instance_exists(obj_npc_room)
        {
            with (obj_npc_room)
            {
                if (sprite_index != spr_notepaper)
                {
                    if (x > 150)
                        sprite_index = spr_npc_catty_wave
                    else
                        sprite_index = spr_npc_bratty_wave
                }
            }
        }
        fader = instance_create(0, 0, obj_unfader)
        fader.tspeed = 0.05
        alarm[2] = 10
        image_speed = 0.2
        donetalking = 1
    }
    if (room == room_fire_hotel_bpants && donetalking == 0)
    {
        sprite_index = spr_npc_bpants_wave
        if (scr_murderlv() >= 12)
            sprite_index = spr_npc_bpants_talkoh
        fader = instance_create(0, 0, obj_unfader)
        fader.tspeed = 0.05
        alarm[2] = 10
        image_speed = 0.2
        donetalking = 1
    }
    if (room == room_water_temshop_room && donetalking == 0)
    {
        sprite_index = spr_npc_temshopkeep_wave
        if (global.flag[276] == 1)
            sprite_index = spr_npc_temshopkeep_college_wave
        fader = instance_create(0, 0, obj_unfader)
        fader.tspeed = 0.05
        alarm[2] = 10
        image_speed = 0.2
        donetalking = 1
    }
    if (room == room_tundra_qcshop_room && donetalking == 0)
    {
        if (sprite_index != spr_notepaper)
            sprite_index = spr_npc_qc_wave
        fader = instance_create(0, 0, obj_unfader)
        fader.tspeed = 0.05
        alarm[2] = 10
        image_speed = 0.2
        donetalking = 1
    }
}
if (room == room_fire_hh_mainhub)
{
    if (x == 903 || x == 920)
    {
        if (instance_exists(OBJ_WRITER) == 0)
            sprite_index = spr_npc_axolotl_stand
        else if instance_exists(OBJ_WRITER)
            sprite_index = spr_npc_axolotl_talk
    }
}
if (room == room_water_tutu && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[105] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_water_shoe && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[106] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_fire6A && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[110] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_fire_lavalake && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[117] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_fire_hh_entrance && x < 400 && instance_exists(OBJ_WRITER) == 0)
{
    if (global.flag[242] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_ruins_home_store && instance_exists(OBJ_WRITER) == 0)
{
    if (x < 100 && global.flag[231] == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_fire_apron && instance_exists(OBJ_WRITER) == 0)
{
    if (x != 200)
    {
        if (global.flag[111] == 1)
        {
            global.interact = 0
            instance_destroy()
        }
    }
}
if (room == room_water_bhouse_lockers)
{
    if (instance_exists(OBJ_WRITER) && obj_mainchara.x > 155 && obj_mainchara.x < 250)
        sprite_index = spr_npc_flounder_talk
    else if (instance_exists(OBJ_WRITER) == 0)
        sprite_index = spr_npc_flounder
}
if (room == room_water_bhouse_splitpath)
{
    if (global.flag[171] == 0)
        sprite_index = spr_nervous
    else
        sprite_index = spr_nervous_happy
}
if (room == room_truelab_bedroom)
{
    if (global.flag[483] >= 2)
        image_index = 1
    else
        image_index = 0
    image_speed = 0
}
if (room == room_asrielroom_final)
{
    if (x < (-10 + (room_width / 2)))
    {
        if (global.flag[114] == 1)
            image_index = 1
        else
            image_index = 0
    }
    if (x >= (-10 + (room_width / 2)))
    {
        if (global.flag[115] == 1)
            image_index = 1
        else
            image_index = 0
    }
}
if (room == room_water5A && global.flag[104] == 1 && (!instance_exists(OBJ_WRITER)))
{
    global.interact = 0
    instance_create(x, y, obj_bench)
    instance_destroy()
}
if (room == room_ruins_homehub && troublecon == 1 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    sprite_index = spr_troubleboys_hitch
    global.msg[0] = "* Hey^1, it's the human^1.&* Glad to see you're&  alive and kickin'!/%%"
    if (talkedto > 1)
    {
        global.msg[0] = "* Remember^1, kid..^1. if you&  ever see me out in public..^1.&* I won't recognize you!/"
        global.msg[1] = "* I'll be too busy being&  a best selling author or&  space astronaut!/"
        global.msg[2] = "* Hyuck hyuck hyuck!/%%"
    }
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    troublecon = 2
}
if (room == room_ruins_homehub && troublecon == 2 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    sprite_index = spr_troubleboys_portabie
    troublecon = 3
    global.msg[0] = "\\K0* (\\K1We heard about the&  barrier being broken...\\K0^1)&* (\\K1Did you do that...?\\K0)/%%"
    if (talkedto > 1)
    {
        global.msg[0] = "\\K0* (\\K1I-I'll be sure to remind&  him if we ever DO see&  you out there^1, human...\\K0)/"
        global.msg[1] = "\\K0* (\\K1Thanks again... Heh...\\K0)/%%"
        troublecon = 5
    }
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
}
if (room == room_ruins_homehub && troublecon == 3 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    sprite_index = spr_troubleboys_hitch
    global.msg[0] = "* Me and Portabie are&  going to live a new&  life on the surface!/"
    global.msg[1] = "* Fresh air^1, big shot jobs^1,&  hot girls as far as&  the eye can see.../%%"
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    troublecon = 4
}
if (room == room_ruins_homehub && troublecon == 4 && instance_exists(OBJ_WRITER) == 0)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    sprite_index = spr_troubleboys_portabie
    global.msg[0] = "\\K0* (\\K1I d-don't know about&  the \"hot girls\" part^1,&  Hitch.....\\K0)/%%"
    global.interact = 1
    mydialoguer = instance_create(0, 0, obj_dialoguer)
    troublecon = 5
}
if (room == room_ruins_homehub && troublecon == 5 && instance_exists(OBJ_WRITER) == 0)
{
    global.interact = 0
    troublecon = 0
}
if (sprite_index == spr_fukufire || sprite_index == spr_hotdog_harpy || sprite_index == spr_jerry_npc || sprite_index == spr_prunsel || sprite_index == spr_nervous || sprite_index == spr_nervous_happy || sprite_index == spr_fukufire_alt || sprite_index == spr_npc_glyde)
    image_speed = 0.2
