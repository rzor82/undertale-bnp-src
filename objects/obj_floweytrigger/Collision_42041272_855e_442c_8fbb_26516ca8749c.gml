if (global.plot == 0 && global.interact == 0)
{
    global.interact = 1
    if (alter == 0)
    {
        flow = obj_floweytalker1
        with (flow)
            visible = false
        flow_p = scr_marker(flow.x, flow.y, spr_floweysink)
        with (flow_p)
        {
            image_index = 5
            image_speed = -0.25
            scr_depth()
        }
        conversation = 50
    }
    else
        conversation = 55
}
