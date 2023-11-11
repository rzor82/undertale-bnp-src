myinteract = 0
image_xscale = 1
image_yscale = 1
yourname = string_lower(environment_get_variable("USERNAME"))
doit = 0
if (string_pos("blaize", yourname) > 0)
{
    if (global.debug == true)
        doit = 1
}
if (doit == 0)
    instance_destroy()
