murder = 0
if (scr_murderlv() >= 12)
    murder = 1
menumax = 3
menu = 0
menuc[0] = 0
menuc[1] = 0
menuc[2] = 0
menuc[3] = 0
menuc[4] = 0
item0pic = spr_heart
item1pic = spr_heart
item2pic = spr_heart
item3pic = spr_heart
item[0] = 59
item[1] = 49
item[2] = 48
item[3] = 60
itemat[0] = "none"
itemdf[0] = "none"
itemat[1] = 12
itemdf[1] = "none"
itemat[2] = "none"
itemdf[2] = 12
itemat[3] = "none"
itemdf[3] = "none"
itemat[4] = "none"
itemdf[4] = "none"
sell = 0
bought = 0
mainmessage = 0
itemcost[0] = 25
itemcost[1] = 350
itemcost[2] = 350
itemcost[3] = 600
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
shx = 130
soldo = 0
global.faceemotion = 0
global.flag[20] = 0
cattywriter = 1
brattywriter = 2
cwe = 0
bwe = 0
shopmus = global.currentsong
catty = obj_shopkeeper_catty
bratty = obj_shopkeeper_bratty
if (murder == 1)
    obj_shopkeeper_catty.visible = false
if (murder == 1)
    obj_shopkeeper_bratty.visible = false
con = 0
