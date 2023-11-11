dsprite = spr_gkid_d
usprite = spr_gkid_u
lsprite = spr_gkid_l
rsprite = spr_gkid_r
dtsprite = spr_gkid_dt
utsprite = spr_gkid_ut
ltsprite = spr_gkid_lt
rtsprite = spr_gkid_rt
myinteract = 0
facing = 3
direction = 180
talkedto = 0
image_speed = 0
con = 0
fun = false
if (room == room_water7 && global.plot < 110)
    instance_destroy()
type = 0
gox = 0
if (global.flag[5] >= 90)
{
    if ossafe_file_exists("undertale.ini")
    {
        ossafe_ini_open("undertale.ini")
        fsx = ini_read_real("General", "fun", 0)
        if (fsx >= 90 && global.flag[5] >= 90)
        {
            gox = 1
            type = 1
        }
        ossafe_ini_close()
    }
}
if (global.debug == true)
    gox = 1
if (gox == 0)
    instance_destroy()
if (global.flag[7] == 1)
    instance_destroy()
