myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = "B"
global.faceemotion = 2
global.msg[0] = scr_gettext("obj_napstablook_actor_114")
if (global.flag[36] > 0 && global.flag[94] == 0)
{
    global.msg[0] = scr_gettext("obj_napstablook_actor_119")
    global.msg[1] = scr_gettext("obj_napstablook_actor_120")
}
if (global.flag[458] == 1)
    global.msg[0] = scr_gettext("obj_napstablook_actor_123")
if (global.flag[350] == 1)
{
    global.msg[0] = scr_gettext("obj_napstablook_actor_127")
    global.msg[1] = scr_gettext("obj_napstablook_actor_128")
    global.msg[2] = scr_gettext("obj_napstablook_actor_129")
}
if (global.flag[93] == 9)
    global.msg[0] = scr_gettext("obj_napstablook_actor_134")
if (global.flag[94] == 1)
    global.msg[0] = scr_gettext("obj_napstablook_actor_138")
if (global.flag[94] == 2)
    global.msg[0] = scr_gettext("obj_napstablook_actor_140")
if (global.flag[94] == 3)
{
    global.msg[0] = scr_gettext("obj_napstablook_actor_143")
    global.msg[1] = scr_gettext("obj_napstablook_actor_144")
}
if (global.flag[7] == 1)
{
    if (global.flag[199] == 0)
    {
        global.msg[0] = scr_gettext("obj_napstablook_actor_152")
        global.msg[1] = scr_gettext("obj_napstablook_actor_153")
        if (global.flag[194] > 0)
        {
            global.msg[0] = scr_gettext("obj_napstablook_actor_157")
            global.msg[1] = scr_gettext("obj_napstablook_actor_158")
        }
        if (global.flag[36] > 0)
        {
            global.msg[2] = scr_gettext("obj_napstablook_actor_163")
            global.msg[3] = scr_gettext("obj_napstablook_actor_164")
            global.msg[4] = scr_gettext("obj_napstablook_actor_165")
        }
        if (global.flag[36] <= 0)
        {
            global.msg[2] = scr_gettext("obj_napstablook_actor_171")
            global.msg[3] = scr_gettext("obj_napstablook_actor_172")
            global.msg[4] = scr_gettext("obj_napstablook_actor_173")
        }
        global.msg[5] = scr_gettext("obj_napstablook_actor_179")
        global.msg[6] = scr_gettext("obj_napstablook_actor_180")
        global.msg[7] = scr_gettext("obj_napstablook_actor_181")
        global.msg[8] = scr_gettext("obj_napstablook_actor_182")
        global.msg[9] = scr_gettext("obj_napstablook_actor_183")
        global.msg[10] = scr_gettext("obj_napstablook_actor_184")
        global.msg[11] = scr_gettext("obj_napstablook_actor_185")
        global.msg[12] = scr_gettext("obj_napstablook_actor_186")
        global.msg[13] = scr_gettext("obj_napstablook_actor_187")
        global.msg[14] = scr_gettext("obj_napstablook_actor_188")
        global.msg[15] = scr_gettext("obj_napstablook_actor_189")
    }
    if (global.flag[199] >= 1)
    {
        global.msg[0] = scr_gettext("obj_napstablook_actor_196")
        global.msg[1] = scr_gettext("obj_napstablook_actor_197")
        global.msg[2] = scr_gettext("obj_napstablook_actor_198")
        global.msg[3] = scr_gettext("obj_napstablook_actor_199")
    }
    if (global.flag[199] >= 2)
    {
        global.msg[0] = scr_gettext("obj_napstablook_actor_204")
        global.msg[1] = scr_gettext("obj_napstablook_actor_205")
        global.msg[2] = scr_gettext("obj_napstablook_actor_206")
        global.msg[3] = scr_gettext("obj_napstablook_actor_207")
        global.msg[4] = scr_gettext("obj_napstablook_actor_208")
    }
    global.flag[199] += 1
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
