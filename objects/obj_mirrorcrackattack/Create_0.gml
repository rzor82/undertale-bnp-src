event_inherited()
dmg = obj_mirrorcrack_gen.damage
active = true
crack_speed = obj_mirrorcrack_gen.crack_speed
children[0] = -4
child_drawdist[0] = 0
child_angle[0] = -1
child_dist[0] = -1
child_x[0] = -1
child_y[0] = -1
finished = false
childgen_timer = 15
num_children = irandom_range(1, 3)
for (i = 0; i < num_children; i++)
{
    children[i] = -4
    child_drawdist[i] = 0
    child_angle[i] = -1
    child_dist[i] = -1
    child_x[i] = -1
    child_y[i] = -1
}
obj_mirrorcrack_gen.nodes += num_children
init = true
