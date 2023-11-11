SCR_BORDERSETUP()
gstep = 0
if (room != room_tundra_turnbeforeteenhangout)
{
    if (global.specialbattle == 1)
        global.specialbattle = 0
}
script_execute(scr_depth, 0, 0, 0, 0, 0)
if (global.flag[7] == 1)
{
    if (global.flag[287] <= global.flag[286])
        global.flag[287] = (global.flag[286] + 1)
}
dimcon = 0
autorun = 0
didfacecamera = 0
canshebe = 0
createaction = 0
callsprite = 0
runtimer = 0
runcounter = 0
anotheruselessvariable = 0
scr_enable_screen_border(true)
if (global.flag[6] == 1 && (!scr_hardmodename(global.charname)))
    global.flag[6] = 0
if (global.flag[27] == 0 && (!instance_exists(obj_murder_monitor)))
    instance_create(0, 0, obj_murder_monitor)
global.flag[462] = 0
birdandnolecreated = 0
oldtypedidfacecamera = 0
toristoppingyou = 0
unstick = 0
if ((x % 3) == 2)
    x += 1
if ((x % 3) == 1)
    x -= 1
if ((y % 3) == 2)
    y += 1
if ((y % 3) == 1)
    y -= 1
lastfacing = 0
snowdined = 0
cored = 0
nnn = 0
cutscene = false
oldx = x
oldy = y
image_speed = 0
global.phasing = 0
facing = global.facing
moving = false
movement = 1
webbed = 0
running = 0
run_index = 0
prev_step = 0
raise_doors = 0
disable_run = 0
lock_depth = 0
fun = false
if (global.currentroom != room && global.interact == 0 && global.debugwarp == 0 && global.flag[388] == 0)
    global.lastpce = (((("Wrong Warp (" + room_get_name(global.currentroom)) + " -> ") + room_get_name(room)) + ")")
global.debugwarp = 0
global.currentroom = room
if (global.interact == 3 && global.entrance > 0)
{
    global.interact = 0
    var marker = noone
    switch global.entrance
    {
        case 1:
            marker = obj_markerA
            break
        case 2:
            marker = obj_markerB
            break
        case 4:
            marker = obj_markerC
            break
        case 5:
            marker = obj_markerD
            break
        case 18:
            marker = obj_markerr
            break
        case 19:
            marker = obj_markers
            break
        case 20:
            marker = obj_markert
            break
        case 21:
            marker = obj_markeru
            break
        case 22:
            marker = obj_markerv
            break
        case 23:
            marker = obj_markerw
            break
        case 24:
            marker = obj_markerX
            break
    }

    if (marker == noone)
        show_message(("Invalid entrance: " + string(global.entrance)))
    else if (!instance_exists(marker))
        show_message((((("Missing marker: " + object_get_name(marker)) + " (Entrance: ") + string(global.entrance)) + ")"))
    else
    {
        x = marker.x
        y = marker.y
    }
}
dsprite = spr_maincharad
rsprite = spr_maincharar
usprite = spr_maincharau
lsprite = spr_maincharal
dsprite_run = spr_maincharad_run
rsprite_run = spr_maincharar_run
usprite_run = spr_maincharau_run
lsprite_run = spr_maincharal_run
dsprite_geno = 2905
rsprite_geno = 2917
usprite_geno = 2909
lsprite_geno = 2913
dsprite_geno_run = 3038
rsprite_geno_run = 3050
usprite_geno_run = 3042
lsprite_geno_run = 3046
if (scr_murderlv() >= 2 || global.flag[221] == 1)
{
    dsprite = spr_maincharad_geno
    rsprite = spr_maincharar_geno
    usprite = spr_maincharau_geno
    lsprite = spr_maincharal_geno
    dsprite_run = spr_maincharad_run_genocide
    rsprite_run = spr_maincharar_run_genocide
    usprite_run = spr_maincharau_run_genocide
    lsprite_run = spr_maincharal_run_genocide
}
if (global.flag[85] == 1)
{
    dsprite = spr_maincharad_umbrella
    rsprite = spr_maincharar_umbrella
    usprite = spr_maincharau_umbrella
    lsprite = spr_maincharal_umbrella
}
if (global.flag[227] == 1)
{
    dsprite = spr_maincharad_cozy
    rsprite = spr_maincharar_cozy
    usprite = spr_maincharau_cozy
    lsprite = spr_maincharal_cozy
    disable_run = 1
}
if (global.facing == 0)
    sprite_index = (obj_time.run ? dsprite_run : dsprite)
if (global.facing == 1)
    sprite_index = (obj_time.run ? rsprite_run : rsprite)
if (global.facing == 2)
    sprite_index = (obj_time.run ? usprite_run : usprite)
if (global.facing == 3)
    sprite_index = (obj_time.run ? lsprite_run : lsprite)
if (global.flag[480] == 1)
    image_blend = merge_color(c_gray, c_white, 0.3)
maxkills = [20, 16, 18, 40]
for (i = 0; i < 4; i++)
{
    killcounts[i] = 0
    cleared[i] = 0
    if (global.flag[(202 + i)] >= maxkills[i])
    {
        global.flag[(221 + i)] = 1
        cleared[i] = 1
    }
}
inwater = 0
h_skip = 0
uncan = 0
m_override = 0
gsprite = 1157
gdraw = 0
bepis = 1
stuck = false
draw_armor = 1
flip = 0
flip_x = 0
flip_y = 1
flip_y2 = 0
idle_timer = 0
sit = 0
sitting = 0
if (instance_exists(obj_iceevent) || instance_exists(obj_iceeventx4) || instance_exists(obj_iceeventup) || instance_exists(obj_iceeventright))
    caster_loop(snd_ice_slide, 0, 1)
else
    snd_stop(snd_ice_slide)
