global.msc += 1
stringno = 0
stringpos = 1
writingx = round(writingx)
writingy = round(writingy)
myx = writingx
myy = writingy
script_execute(SCR_TEXT, global.msc)
n = 0
while (global.msg[n] != "%%%")
{
    mystring[n] = global.msg[n]
    n += 1
}
originalstring = scr_replace_buttons_pc(mystring[0])
halt = false
alarm[0] = textspeed
