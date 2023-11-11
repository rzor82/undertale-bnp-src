if (!(variable_instance_exists(-2, "active")))
    other.active = true
if (!(variable_instance_exists(-2, "grazed")))
    other.grazed = false
if (!(variable_instance_exists(-2, "timepoints")))
{
    if (global.ambush == 0)
        other.timepoints = 1
    else
        other.timepoints = 0
}
if (!(variable_instance_exists(-2, "grazepoints")))
    other.grazepoints = 1
if (!other.active)
    return;
var _grazetpfactor = grazetpfactor
var _grazetimefactor = grazetimefactor
if ((!instance_exists(obj_greydoor)) && (!instance_exists(obj_mysteryman)))
{
    with (other)
    {
        if (global.invc < 0)
        {
            if (grazed == true)
            {
                scr_tensionheal(((grazepoints / 40) * _grazetpfactor))
                if (global.ambush == 0)
                {
                    if (global.turntimer >= 10)
                        global.turntimer -= ((timepoints / 40) * _grazetimefactor)
                }
                with (obj_grazebox)
                {
                    if (grazetimer >= 0 && grazetimer < 4)
                        grazetimer = 3
                    if (grazetimer < 2)
                        grazetimer = 2
                }
            }
            if (grazed == false)
            {
                grazed = true
                scr_tensionheal((grazepoints * _grazetpfactor))
                if (global.ambush == 0)
                {
                    if (global.turntimer >= 10)
                        global.turntimer -= (timepoints * _grazetimefactor)
                }
                snd_stop(snd_graze)
                snd_play(snd_graze)
                with (obj_grazebox)
                    grazetimer = (40 / global.sp)
            }
        }
    }
}
