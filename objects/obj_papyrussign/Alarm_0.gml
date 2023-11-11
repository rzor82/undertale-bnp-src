global.debug = false
myinteract = 3
global.typer = 5
global.facechoice = 0
global.msc = 0
global.msg[0] = "* You've just made a terrible&  mistake^1, Blaize./"
global.msg[1] = "* I will now count down&  from 100./"
for (i = 2; i <= 90; i++)
{
    global.msg[i] = (("* " + string((100 - (i - 2)))) + "^9 ^9 /")
    if (i == 90)
        global.msg[i] += "%%"
}
global.faceemotion = 0
mydialoguer = instance_create(0, 0, obj_dialoguer)
