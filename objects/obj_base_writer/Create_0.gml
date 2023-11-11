SCR_TEXTTYPE(global.typer)
x = round(x)
y = round(y)
writingx = round(writingx)
writingy = round(writingy)
stringno = 0
stringpos = 0
myview = -1
halt = false
dfy = 0
sound_enable = 1
var n = 0
while (global.msg[n] != "%%%")
{
    mystring[n] = global.msg[n]
    n++
}
originalstring = scr_replace_buttons_pc(mystring[0])
alarm[0] = textspeed
force_outline = 0
quote_flip = 0
outline = 0
prev = ""
if instance_exists(obj_battlecontroller)
    alarm[1] = 1
textsurf = -4
skippable = 1
if (!instance_exists(OBJ_INSTAWRITER))
    overworldoffset = 0
