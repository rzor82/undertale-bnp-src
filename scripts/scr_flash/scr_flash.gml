var g = instance_create(x, y, obj_flasher)
g.fadespeed = (argument_count < 1 ? 0.2 : argument0)
g.amt = (argument_count < 2 ? 1 : argument1)
g.color = (argument_count < 3 ? 16777215 : argument2)
return g;
