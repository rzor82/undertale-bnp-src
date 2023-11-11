image_xscale = 50
conversation = 0
if (global.plot > 0)
    instance_destroy()
faketor = 0
alter = 0
temptor = 0
ossafe_ini_open("undertale.ini")
a = ini_read_real("Flowey", "Alter", 0)
b = ini_read_real("Flowey", "K", 0)
c = ini_read_real("Flowey", "SPECIALK", 0)
YesHeDid = ini_read_real("BecameAsriel", "YesHeDid", 0)
ossafe_ini_close()
if (a > 0 || b > 0 || c > 0 || YesHeDid >= 3)
    alter = 1
with (obj_floweytalker1)
    visible = false
