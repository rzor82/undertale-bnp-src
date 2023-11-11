alldead = 0
global.encounter = 0
script_execute(scr_steps, 3600, 150, 16, 203)
if (global.flag[203] == 0 && global.plot > 100)
    instance_destroy()
if (global.flag[7] == 1)
    instance_destroy()
if (global.flag[282] == 1 || global.flag[282] == 2 || global.flag[282] == 5)
    instance_destroy()
murder = scr_murderlv() >= 4
gottemlol = 0
glyde = -4
stall = 0
con = 0
if ((!murder) && (global.flag[270] == 1 || global.flag[282] == 4))
    con = 1
