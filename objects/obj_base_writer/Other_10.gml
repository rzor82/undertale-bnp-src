if (halt == true)
{
    stringno++
    originalstring = scr_replace_buttons_pc(mystring[stringno])
    stringpos = 0
    halt = false
    alarm[0] = textspeed
}
else if (halt == 2)
{
    control_clear(0)
    instance_destroy()
}
else if (halt == 4)
{
    global.myfight = 0
    global.mnfight = 1
    scr_process_soon()
    control_clear(0)
    instance_destroy()
}
