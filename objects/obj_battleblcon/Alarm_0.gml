global.flag[10] = 0
global.flag[11] = 0
global.flag[12] = 0
global.flag[13] = 0
global.entrance = 0
obj_mainchara.depth = -600
battle = 1
if (room == room_asghouse1)
    battle = 2
if (room == room_asghouse2)
    battle = 2
if (room == room_asghouse3)
    battle = 2
if (room == room_kitchen_final)
    battle = 2
if (battle == 1)
{
    if (instance_exists(obj_battler) == 0)
        instance_create(0, 0, obj_battler)
}
if (battle == 2)
{
    if (instance_exists(obj_battlerstory) == 0)
        instance_create(0, 0, obj_battlerstory)
}
instance_destroy()
