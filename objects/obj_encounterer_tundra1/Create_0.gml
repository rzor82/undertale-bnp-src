alldead = 0
global.encounter = 0
script_execute(scr_steps, 120, 30, 16, 203)
if ((global.flag[203] == 0 && global.plot > 100) || global.flag[172] == 2)
    instance_destroy()
