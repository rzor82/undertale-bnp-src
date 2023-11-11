image_speed = 0
walk = false
talk_enabled = 0
facechoice = 0
typer = 5
fun = true
follow = 0
runmove = false
dir = 0
walkbuffer = 0
walktimer = 0
target = 10
parent = obj_mainchara
dsprite = parent.dsprite
usprite = parent.usprite
lsprite = parent.lsprite
rsprite = parent.rsprite
dtsprite = parent.dsprite
utsprite = parent.usprite
ltsprite = parent.lsprite
rtsprite = parent.rsprite
gdoorcon = 0
iceslide = 0
mywidth = sprite_width
myheight = sprite_height
for (i = 0; i < 75; i += 1)
{
    remx[i] = parent.x
    remy[i] = parent.y
    facing[i] = global.facing
    special[i] = -1
}
for (i = 0; i < 4; i += 1)
{
    xoffset[i] = 0
    yoffset[i] = 0
}
slide_yoffset = 0
sprite = sprite_index
sprite_subimg = image_index
sprite_x = x
sprite_y = y
prevx = x
prevy = y
inwater = 0
gsprite = dsprite
sliding_timer = 4
dontdraw = 0
snapto = 0
