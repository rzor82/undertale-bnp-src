global.entrance = 2
caster_free(-3)
instance_create(0, 0, obj_persistentfader)
room_goto(room_tundra_inn_2f_real)
if (global.hp < global.maxhp)
    global.hp = global.maxhp
if (global.hp == 36)
    global.hp = 38
if (global.hp == 32)
    global.hp = 36
if (global.hp == 28)
    global.hp = 34
if (global.hp == 24)
    global.hp = 32
if (global.hp == 20)
    global.hp = 30
global.interact = 0
global.facing = 0
