subject = 287294723489373000000
requires_unlock = 0
if (global.flag[85] == 1 && room == room_water_undynebridge)
{
    global.msc = 0
    global.typer = 5
    global.interact = 1
    global.facechoice = 0
    global.faceemotion = 0
    global.flag[85] = 0
    global.msg[0] = "* You sense danger nearby.&* An umbrella would only&  hold you back./"
    global.msg[1] = "* (You dropped the umbrella.)/%%"
    instance_create(x, y, obj_dialoguer)
    requires_unlock = 1
}
if instance_exists(obj_mainchara)
{
    with (obj_mainchara)
    {
        usprite = spr_maincharau_stark
        rsprite = spr_maincharar_stark
        dsprite = spr_maincharad_stark
        lsprite = spr_maincharal_stark
        dsprite_run = 3027
        rsprite_run = 3036
        usprite_run = 3030
        lsprite_run = 3033
    }
    subject = obj_mainchara
}
