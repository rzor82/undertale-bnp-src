scr_depth()
depth += 5
moved = 0
walk = false
runmove = false
if (obj_mainchara.canshebe != 0)
    instance_destroy()
if (obj_mainchara.x != remx[0])
    moved = 1
if (obj_mainchara.y != remy[0])
    moved = 1
if (follow == -1)
    fun = true
else
    fun = false
if (follow <= 0 && (moved == 1 || special[target] == 2 || special[target] == 3 || special[target] == 5))
{
    for (i = 75; i > 0; i -= 1)
    {
        remx[i] = remx[(i - 1)]
        remy[i] = remy[(i - 1)]
        facing[i] = facing[(i - 1)]
        special[i] = special[(i - 1)]
    }
    remx[0] = obj_mainchara.x
    remy[0] = obj_mainchara.y
    facing[0] = global.facing
    if (iceslide == 1)
        special[0] = 3
    else if (inwater == 1)
        special[0] = 4
    else
        special[0] = -1
    if (special[target] == 2)
        dir = 0
    else
        dir = facing[target]
    x = (remx[target] + xoffset[dir])
    y = (remy[target] + yoffset[dir])
    if (special[target] == 2)
        y += slide_yoffset
    if (abs((remx[(target + 1)] - remx[target])) > 4)
        runmove = true
    if (abs((remy[(target + 1)] - remy[target])) > 4)
        runmove = true
}
gsprite = sprite_index
if (follow == 1)
{
    speed = (point_distance(sprite_x, sprite_y, x, y) / 30)
    direction = point_direction(sprite_x, sprite_y, x, y)
    x = sprite_x
    y = sprite_y
    scr_npc_watch(1)
    follow = 2
    alarm[0] = 30
}
if (follow == 3)
{
    speed = 0
    direction = 0
    follow = 0
    scr_npc_watch(1)
}
if (talk_enabled && instance_exists(obj_dialoguer) && instance_exists(obj_dialoguer.writer) && global.facechoice == facechoice && global.typer == typer && obj_dialoguer.writer.stringpos < string_length(obj_dialoguer.writer.originalstring))
{
    if (facing[target] == 0)
        sprite_index = dtsprite
    if (facing[target] == 1)
        sprite_index = rtsprite
    if (facing[target] == 2)
        sprite_index = utsprite
    if (facing[target] == 3)
        sprite_index = ltsprite
    image_speed = 0.25
    if instance_exists(obj_face_anything_new)
        image_speed = obj_face_anything_new.image_speed
    sprite = sprite_index
    sprite_subimg = image_index
}
else if (fun == false && special[target] != 2 && special[target] != 3)
{
    if (x != prevx)
        walk = true
    if (y != prevy)
        walk = true
    if (walk == true)
        walkbuffer = 6
    if (walkbuffer > 3)
    {
        walktimer += 2
        if (runmove == true)
            walktimer += 3
        if (walktimer >= 40)
            walktimer -= 40
        if (walktimer < 10)
            image_index = 0
        if (walktimer >= 10)
            image_index = 1
        if (walktimer >= 20)
            image_index = 2
        if (walktimer >= 30)
            image_index = 3
    }
    if (walkbuffer <= 0)
    {
        if (walktimer < 10)
            walktimer = 9.5
        if (walktimer >= 10 && walktimer < 20)
            walktimer = 19.5
        if (walktimer >= 20 && walktimer < 30)
            walktimer = 29.5
        if (walktimer >= 30)
            walktimer = 39.5
        image_index = 0
    }
    walkbuffer -= 0.75
    image_speed = 0
    if (facing[target] == 0)
        sprite_index = dsprite
    if (facing[target] == 1)
        sprite_index = rsprite
    if (facing[target] == 2)
        sprite_index = usprite
    if (facing[target] == 3)
        sprite_index = lsprite
}
else if (special[target] == 3)
{
    fun = true
    image_index = 1
    image_speed = 0
}
else
{
    image_index = 0
    sprite_subimg = 0
}
if (follow == 0 || follow == 2)
{
    sprite = sprite_index
    sprite_subimg = image_index
    sprite_x = x
    sprite_y = y
}
prevx = x
prevy = y
