alarm[4] = 150
ip = -4
req = -1
con = 0
dox = 0
flowey = -1
alarm[5] = 60
fimg = 0
global.inbattle = 0
global.faceemotion = 0
newthing = ossafe_file_text_open_write("system_information_320")
ossafe_file_text_write_string(newthing, "b")
ossafe_file_text_close(newthing)
ossafe_ini_open("undertale.ini")
rpt = ini_read_real("EndF", "P", 0)
realf = ini_read_real("EndF", "EndF", 0) == 1
chara = ini_read_string("General", "Name", "Chara")
ossafe_ini_close()
scr_enable_screen_border(false)
if (rpt == 100 && dox && global.allowinternet)
    req = "69.120.420.96"
