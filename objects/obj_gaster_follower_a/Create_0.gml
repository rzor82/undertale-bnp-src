dsprite = spr_npc_dadslime
usprite = spr_npc_dadslime
lsprite = spr_npc_dadslime
rsprite = spr_npc_dadslime
dtsprite = spr_npc_dadslime
utsprite = spr_npc_dadslime
ltsprite = spr_npc_dadslime
rtsprite = spr_npc_dadslime
myinteract = 0
facing = 0
direction = 0
talkedto = 0
image_speed = 0
gox = 0
if (global.flag[5] == 61)
{
    if ossafe_file_exists("undertale.ini")
    {
        ossafe_ini_open("undertale.ini")
        fsx = ini_read_real("General", "fun", 0)
        var dosave = 0
        if (fsx == 61 && global.flag[5] == 61)
        {
            gox = 1
            type = 1
            ini_write_real("General", "fun", 0)
            global.flag[5] = 0
            dosave = 1
        }
        ossafe_ini_close()
        if dosave
            ossafe_savedata_save()
    }
}
choos = choose(0, 1, 2, 3, 4)
if (choos != 4)
    gox = 0
if (global.debug == true)
    gox = 1
if (gox == 0)
    instance_destroy()
if (global.flag[7] == 1)
    instance_destroy()
gcon = 0
gtimer = 0
