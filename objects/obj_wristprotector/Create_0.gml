x += (sprite_width / 2)
y += (sprite_height / 2)
sprite_index = spr_wristprotector
x -= (sprite_width / 2)
y -= (sprite_height / 2)
myinteract = 0
con = 0
wonalready = 0
if ossafe_file_exists("system_information_320")
    wonalready = 1
ossafe_ini_open("undertale.ini")
won = ini_read_real("General", "Won", 0)
ossafe_ini_close()
if (wonalready == 0)
{
    if ((!won) || global.flag[28] == 1)
        instance_destroy()
}
