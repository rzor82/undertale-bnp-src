myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = (("* (You picked up the&   " + scr_gettext(("item_name_" + string(itemid)))) + ".)/%%")
noroom = 0
success = 1
with (obj_time)
{
    scr_itemget(other.itemid)
    other.noroom = noroom
}
if noroom
{
    success = 0
    global.msg[0] = "* (You're carrying too much.)/%%"
}
else if (itemid == 23)
{
    if (instance_exists(obj_quicheguilt) && obj_quicheguilt.guilt == 1)
        global.msg[0] = "* (You tell the quiche you're&  back.)/%%"
    with (obj_quicheguilt)
        instance_destroy()
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
