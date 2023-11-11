var roomname = room_get_name(global.currentroom)
myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* How did you get here^1?/"
global.msg[1] = "* Fascinating^1.&* Are you lost^1? Or did you just&  want to talk to me?/%%"
if (string_pos("tundra", roomname) != 0)
{
    global.msg[0] = "* Hello there^1, visitor^1.&* How did you get here^1?/"
    global.msg[1] = "* .../"
    global.msg[2] = "* Fascinating^1.&* Why not stay for a drink^1?&* I've got plenty more./%%"
    if (talkedto > 0)
    {
        global.msg[0] = "* Decide to stay after all^1?&* Company is good every once&  in a while^1, you know./"
        global.msg[1] = "* Did you see what had just&  happened over there^1?/"
        global.msg[2] = "* Yes^1? You did^1?/"
        global.msg[3] = "* No^1, not that^2.&* Not that either./"
        global.msg[4] = "* No, no, no^1, THEM^2, over there^1.&* Watch closely.../%%"
    }
    if (talkedto > 1)
    {
        global.msg[0] = "* What^1? You say you don't&  see anything^1?/"
        global.msg[1] = "* In time^1, you'll see^1.&* Your eyes just haven't&  adjusted yet./%%"
    }
}
if (string_pos("fire", roomname) != 0)
{
    global.msg[0] = "* Hello there^1, visitor^1.&* How did you get here^1?/"
    global.msg[1] = "* .../"
    global.msg[2] = "* Fascinating^1.&* Why not stay for a drink^1?&* I've got plenty more./%%"
    if (talkedto > 0)
    {
        global.msg[0] = "* I've always enjoyed this&  world's architecture./"
        global.msg[1] = "* And these recent additions&  are fascinating./"
        global.msg[2] = "* Why put resting areas in&  a constantly shifting&  super generator?/"
        global.msg[3] = "* Ha ha ha^1, this world&  never ceases to&  amaze me./%%"
    }
}
if (room == ROOM_TESTING)
{
    if (TESTED == 0 && instance_exists(OBJ_WRITER) == 0)
    {
        TESTED += 1
        global.msg[0] = "* Cleverly done^1, young one^1.&* But you're not supposed&  to be here./"
        global.msg[1] = "* In fact..^1.&* You're not./"
        global.msg[2] = "* Get back to where&  you belong and...&* Forget about all this./%%"
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
