alldead = 0
global.encounter = 0
factor = 360
desto = 0
if (room == room_water6)
    factor = 110
if (room == room_water5)
    factor = 340
if (room == room_water_firepuzzle)
    factor = 1500
if (room == room_water5 && global.flag[357] == 0 && global.entrance == 1)
{
    factor = 20
    desto = 1
}
script_execute(scr_steps, factor, 30, 18, 204)
if ((global.flag[204] == 0 && global.plot > 121) || global.flag[172] == 3)
    instance_destroy()
