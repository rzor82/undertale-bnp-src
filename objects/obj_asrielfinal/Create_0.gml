scr_monstersetup()
image_speed = 0
instance_create(0, 0, obj_expander)
part1 = obj_afinal_body
mypart1 = instance_create(x, y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_vulkinhurt
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 10
sha = 0
shb = 0
global.faceemotion = 0
songcon = 0
if (global.flag[501] > 0)
{
    obj_talkbt.spec = 1
    obj_talkbt.sprite_index = scr_getsprite(spr_savebt)
}
with (obj_battlebg)
    instance_destroy()
nextbattle = 0
gocon = 0
gotimer = 0
total = (((global.flag[505] + global.flag[506]) + global.flag[507]) + global.flag[508])
if (total == 1)
    global.msg[0] = scr_gettext("obj_asrielfinal_58")
if (total == 2)
    global.msg[0] = scr_gettext("obj_asrielfinal_59")
if (total == 3)
    global.msg[0] = scr_gettext("obj_asrielfinal_60")
if (total == 4)
    global.msg[0] = scr_gettext("obj_asrielfinal_61")
if (total == 4)
{
    if (global.flag[501] < 2)
        global.flag[501] = 2
}
savecon_a = 0
savecon_a_x = 0
if (global.flag[501] == 3)
    global.faceemotion = 3
turns = 0
endcon = 0
ht = 240
wd = 10
if (global.flag[501] == 0)
{
    global.bmenucoord[0] = 1
    global.mercy = 3
}
