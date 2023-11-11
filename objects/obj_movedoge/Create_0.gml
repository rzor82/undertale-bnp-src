script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
image_speed = 0
part0 = scr_marker(x, y, spr_movedogebody_outline)
part0.image_xscale = 2
part0.image_yscale = 2
part1 = obj_movedogehead
part2 = obj_movedogetail
part3 = obj_movedogearms
part4 = obj_movedogebody
mypart1 = instance_create((x + 4), y, part1)
mypart2 = instance_create(x, y, part2)
mypart3 = instance_create((x + 4), (y + 4), part3)
mypart4 = instance_create(x, y, part4)
with (mypart1)
    depth -= 8
with (mypart2)
    depth += 12
with (mypart3)
    depth -= 9
with (mypart4)
    depth -= 10
part0.depth = (mypart2.depth + 1)
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -15
excited = -1
pets = 0
ht = 150
wd = 100
