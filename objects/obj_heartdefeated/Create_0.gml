alarm[0] = 20
image_speed = 0
if (global.flag[500] == 0)
{
    if (global.flag[272] == 0)
        gameoversong = caster_load("music/gameover.ogg")
    if (global.flag[272] == 1)
    {
        global.typer = 17
        gameoversong = caster_load("music/dogsong.ogg")
    }
}
msgnum = -1
dingus = 0
currentvol = 1
heartcon = 0
hearttimer = 0
container = -4
if (global.flag[500] == 1)
{
    global.flag[502] += 1
    global.border = 0
    dingus = 0
}
sansed = 0
candoitnow = 0
z_count = 0
