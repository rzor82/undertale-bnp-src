script_execute(scr_depth, 0, 0, 0, 0, 0)
if (myinteract == 1)
{
    if (con == 0)
    {
        global.interact = 1
        myinteract = 3
        global.msc = 0
        global.typer = 5
        global.facechoice = 0
        global.faceemotion = 0
        skip = false
        month = current_month
        if (current_day > 10)
            month += 1
        if (month > 12)
            month = 1
        month_name = "If only it was the"
        switch month
        {
            case 1:
                month_name = "January"
                break
            case 2:
                month_name = "February"
                break
            case 3:
                month_name = "March"
                break
            case 4:
                month_name = "April"
                break
            case 5:
                month_name = "May"
                break
            case 6:
                month_name = "June"
                break
            case 7:
                month_name = "July"
                break
            case 8:
                month_name = "August"
                break
            case 9:
                month_name = "September"
                break
            case 10:
                month_name = "October"
                break
            case 11:
                month_name = "November"
                break
            case 12:
                month_name = "December"
                break
        }

        global.msg[0] = (("* Art Club: Meet here!&* Next meeting:&* " + month_name) + " 10th/%%")
        if (global.debug == true)
            global.msg[0] = "* Art Club: Meet here!&* Next meeting:&* Today at Now./%%"
        if (murd == 1)
        {
            skip = true
            global.msg[0] = scr_gettext("obj_artclass_sign_213")
        }
        if (global.flag[281] == 1)
        {
            global.msg[0] = scr_gettext("obj_artclass_sign_218")
            skip = true
        }
        if (global.flag[281] == 2)
        {
            global.msg[0] = scr_gettext("obj_artclass_sign_224")
            skip = true
        }
        if (global.flag[7] == 1 || global.flag[8] == 1)
        {
            global.msg[0] = scr_gettext("obj_artclass_sign_231")
            skip = true
        }
        if (skip == false)
        {
            if (current_day == 10 || global.debug == true)
            {
                con = 1
                myinteract = -1
            }
        }
        mydialoguer = instance_create(0, 0, obj_dialoguer)
        talkedto += 1
    }
    else
        myinteract = 0
}
if (myinteract == 3)
{
    if (instance_exists(mydialoguer) == 0)
    {
        global.interact = 0
        myinteract = 0
    }
}
if (con == 1 && instance_exists(OBJ_WRITER) == 0)
{
    global.facing = 0
    snd_play(snd_b)
    instance_create(obj_mainchara.x, (obj_mainchara.y - 11), obj_cosmeticblcon)
    con = 2
    alarm[4] = 60
    global.interact = 1
}
if (con == 2 && instance_exists(OBJ_WRITER) == 0)
{
    global.facing = 0
    global.interact = 1
}
if (con == 3 && instance_exists(OBJ_WRITER) == 0)
{
    global.msg[0] = scr_gettext("obj_artclass_sign_281")
    global.msg[1] = scr_gettext("obj_artclass_sign_282")
    scr_regulartext()
    con = 4
}
if (con == 4 && instance_exists(OBJ_WRITER) == 0)
{
    snd_play(snd_escaped)
    sory = scr_marker((obj_mainchara.x - 10), 240, spr_sorry_u)
    sory.vspeed = -5
    sory.depth = 1000
    sory.image_speed = 0.5
    con = 5
}
if (con == 5)
{
    if (sory.y <= (obj_mainchara.y + 15))
    {
        with (sory)
            instance_destroy()
        snd_play(snd_impact)
        dk = scr_marker(-5, -5, spr_pixblk)
        dk.image_xscale = 300
        dk.image_yscale = 300
        con = 6
        alarm[4] = 40
    }
}
if (con == 7)
{
    with (dk)
        instance_destroy()
    global.battlegroup = 140
    global.mercy = 1
    instance_create(0, 0, obj_battler)
    con = 8
    alarm[4] = 31
}
if (con == 9)
{
    myinteract = 0
    global.mercy = 0
    global.interact = 0
    con = 0
    alarm[4] = -1
}
