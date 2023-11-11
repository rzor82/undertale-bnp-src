alldead = 0
global.encounter = 0
if (global.plot > 24 || global.plot < 9.1)
    instance_destroy()
script_execute(scr_steps, 60, 60, 20, 202)
