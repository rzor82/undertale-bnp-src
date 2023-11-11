if (con == 3)
{
    global.phone[0] = 0
    global.phone[1] = 0
    global.phone[2] = 0
    global.phone[3] = 0
    global.phone[4] = 0
    global.phone[5] = 0
    global.phone[6] = 0
    global.phone[7] = 0
    global.phone[0] = 206
    global.menuchoice[2] = 1
    global.chapter = 2
    if (ourturnyet != 7)
    {
        instance_create(0, 0, obj_persistentfader)
        scr_enable_screen_border(true)
        global.entrance = 1
        global.facing = 1
        room_goto(room_tundra1)
    }
    else
    {
        global.currentsong = caster_load("music/papyrus.ogg")
        caster_loop(global.currentsong, 0.6, 1)
        con = 4
    }
}
if (con == 4 && instance_exists(OBJ_WRITER) == 0)
{
    global.typer = 5
    global.msc = 0
    scr_papface(0, 0)
    global.msg[1] = "PSST^1.&IS IT OUR TURN&TO SHOW UP NOW?/"
    scr_sansface(2, 0)
    global.msg[3] = "* nope^1, not yet./"
    scr_papface(4, 1)
    global.msg[5] = "REALLY!?&WHEN ARE WE&SHOWING UP!?!?/"
    scr_sansface(6, 1)
    global.msg[7] = "* oh^1, right now^1,&  actually./"
    scr_papface(8, 1)
    global.msg[9] = "WHAT!!^1!&YOU'RE RIBBI-%"
    global.msg[10] = "\\E0OH^1, REALLY?/"
    scr_sansface(11, 0)
    global.msg[12] = "* yep^1.&*\\E2 \"cool outfit\" and all./"
    scr_papface(13, 0)
    global.msg[14] = "WELL^1, LET'S NOT&KEEP THEM WAITING!/%%"
    instance_create(-1000, -1000, obj_mainchara)
    scr_regulartext()
    instance_destroy(obj_mainchara)
}
if (con > 4 && instance_exists(OBJ_WRITER) == 0)
{
    caster_stop(global.currentsong)
    global.entrance = 1
    global.facing = 1
    instance_create(0, 0, obj_persistentfader)
    scr_enable_screen_border(true)
    room_goto(room_tundra1)
}
