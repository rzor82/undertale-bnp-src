murder = 0
if (scr_murderlv() >= 7)
    murder = 1
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
item[0] = 14
item[1] = 15
item[2] = 19
item[3] = 21
itemat[0] = 5
itemdf[0] = "none"
itemat[1] = "none"
itemdf[1] = 7
itemat[2] = "none"
itemdf[2] = "none"
itemat[3] = "none"
itemdf[3] = "none"
itemat[4] = "none"
itemdf[4] = "none"
sell = 0
bought = 0
mainmessage = 0
itemcost[0] = 50
itemcost[1] = 50
itemcost[2] = 15
if (global.plot > 100)
    itemcost[2] = 30
if (global.plot > 121)
    itemcost[2] = 45
if (global.plot > 199)
    itemcost[2] = 70
itemcost[3] = 25
if (murder == 1)
{
    itemcost[0] = 0
    itemcost[1] = 0
    itemcost[2] = 0
    itemcost[3] = 0
}
minimenuy = 120
global.typer = 23
scr_setfont(fnt_maintext)
sidemessage = 0
selling = 0
global.msc = 0
glow = 0
shx = 0
eyes = instance_create((148 + shx), 40, obj_shopeyes1)
soldo = 0
cantchoose = 0
shoppingspree = 0
global.faceemotion = 0
an = 0
facespr[1] = spr_shopkeeper1_face1
facespr[2] = spr_shopkeeper1_face2
facespr[3] = spr_shopkeeper1_face3
facespr[4] = spr_shopkeeper1_face4
facespr[5] = spr_shopkeeper1_face5
facespr[6] = spr_shopkeeper1_face6
if (murder == 1)
{
    with (obj_shopeyes1)
        instance_destroy()
}
