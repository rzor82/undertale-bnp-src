myinteract = 3
global.msc = 587
if instance_exists(obj_npc_room)
{
    global.flag[258] = 1
    with (obj_npc_room)
        talkedto = 0
}
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
mydialoguer = instance_create(0, 0, obj_dialoguer)
object_index.talkedto += 1
