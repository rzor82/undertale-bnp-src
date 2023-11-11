SCR_TEXTTYPE(global.typer)
x = round(x)
y = round(y)
writingx = round(writingx)
writingy = round(writingy)
stringno = 0
stringpos = 1
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
prev = ""
textsurf = -4
