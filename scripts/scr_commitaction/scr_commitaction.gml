obj_battlecontroller.myfight_buffer[global.currentparty] = global.myfight
obj_battlecontroller.mercyuse_buffer[global.currentparty] = global.mercyuse
obj_battlecontroller.bmenucoord_buffer[global.currentparty] = scr_array_clone(global.bmenucoord)
obj_battlecontroller.bmenuno_buffer[global.currentparty] = global.bmenuno
obj_battlecontroller.mytarget_buffer[global.currentparty] = global.mytarget
obj_battlecontroller.talked_buffer[global.currentparty] = global.talked
obj_battlecontroller.en_buffer[global.currentparty] = global.en
if (global.bmenuno == 4 || global.bmenuno == 7)
{
    if (global.partycount > 1)
        global.en += 16
}
if global.monster[0]
{
    var instance0 = global.monsterinstance[0]
    obj_battlecontroller.whatiheard1_buffer[global.currentparty] = instance0.whatiheard
}
if global.monster[1]
{
    var instance1 = global.monsterinstance[1]
    obj_battlecontroller.whatiheard2_buffer[global.currentparty] = instance1.whatiheard
}
if global.monster[2]
{
    var instance2 = global.monsterinstance[2]
    obj_battlecontroller.whatiheard3_buffer[global.currentparty] = instance2.whatiheard
}
with (OBJ_WRITER)
    halt = 3
with (OBJ_INSTAWRITER)
    halt = 3
global.currentparty++
if (global.currentparty >= global.partycount)
{
    global.currentparty = 0
    global.currentprocessing = -1
    scr_do_actions()
    return 1;
}
else
{
    global.mntrg = global.monsterinstance[0]
    global.mytarget = 0
    global.myfight = 0
    global.mnfight = 0
    global.mercyuse = -1
    global.bmenuno = 0
    global.talked = -1
    for (var i = 0; i < 11; i++)
        global.bmenucoord[i] = 0
    global.typer = 1
    global.msg[0] = global.tmsg
    global.msc = 0
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
}
return 0;
