vol = 0.8
murder = 0
if (scr_murderlv() >= 12)
{
    murder = 1
    if (global.flag[435] < 2)
        global.flag[435] = 2
    with (instance_create(0, 0, obj_alarmflasher))
        active = true
}
instance_create(0, 0, obj_fader)
menumax = 3
menu = 0
menuc[0] = 0
menuc[1] = 0
menuc[2] = 0
menuc[3] = 0
menuc[4] = 0
shopmus = global.currentsong
item0pic = spr_heart
item1pic = spr_heart
item2pic = spr_heart
item3pic = spr_heart
item[0] = 42
item[1] = 40
item[2] = 43
item[3] = 61
sell = 0
bought = 0
mainmessage = 0
itemcost[0] = 60
itemcost[1] = 120
itemcost[2] = 300
itemcost[3] = 500
minimenuy = 120
global.typer = 133
scr_setfont(fnt_maintext)
sidemessage = 0
selling = 0
global.msc = 0
glow = 0
shx = 100
instance_create(shx, 13, obj_burgerpants_body)
soldo = 0
cantchoose = 0
shoppingspree = 0
genoshoppingspree = 0
willyoubuddy = 0
goofygoober = 0
talkedtosad = 0
letsnot = 0
if (global.flag[435] < 2)
    shoppingspree = 1
global.faceemotion = 0
