solid = active
if active
{
    if init
    {
        var distA = point_distance(x, y, obj_heart.x, obj_heart.y)
        var distB = point_distance(x, y, obj_fakeheart.x, obj_fakeheart.y)
        var target_obj = (distA < distB ? obj_heart : obj_fakeheart)
        var angle_range = 60
        var angle_adjust = 0
        var do_adjust = 0
        for (i = 0; i < num_children; i++)
        {
            x = -1
            y = -1
            while (!scr_insideborder())
            {
                if (do_adjust >= 2)
                    angle_adjust += 1
                var dist = irandom_range(30, 200)
                var angle_variance = irandom_range(((-angle_range) - angle_adjust), (angle_range + angle_adjust))
                var angle = (point_direction(xstart, ystart, target_obj.x, target_obj.y) + angle_variance)
                child_x[i] = (xstart + lengthdir_x(dist, angle))
                child_y[i] = (ystart + lengthdir_y(dist, angle))
                child_angle[i] = angle
                child_dist[i] = dist
                x = child_x[i]
                y = child_y[i]
                do_adjust += 1
            }
            do_adjust = 0
            angle_adjust = 0
            x = xstart
            y = ystart
        }
        init = false
    }
    else if (childgen_timer > 0)
        childgen_timer -= 1
    else if (childgen_timer == 0)
    {
        for (i = 0; i < num_children; i++)
        {
            children[i] = instance_create(child_x[i], child_y[i], object_index)
            children[i].active = false
        }
        childgen_timer = -1
    }
    else
    {
        x = xstart
        y = ystart
        draw_set_alpha(1)
        draw_set_color(c_white)
        finished = true
        for (i = 0; i < num_children; i++)
        {
            if (child_drawdist[i] >= child_dist[i] && (!children[i].active))
            {
                child_drawdist[i] = child_dist[i]
                children[i].active = children[i].init
                children[i].childgen_timer = 0
            }
            else if (child_drawdist[i] < child_dist[i])
            {
                child_drawdist[i] += crack_speed
                finished = false
            }
            xx = (x + ((child_x[i] - x) * (child_drawdist[i] / child_dist[i])))
            yy = (y + ((child_y[i] - y) * (child_drawdist[i] / child_dist[i])))
            draw_set_color(c_white)
            draw_line_width(x, y, xx, yy, 2)
            var targets = obj_mirrorcrack_gen.target_objs
            for (j = 0; j < array_length_1d(targets); j++)
            {
                if collision_line(x, y, xx, yy, targets[j], false, false)
                    event_user(0)
            }
        }
    }
}
