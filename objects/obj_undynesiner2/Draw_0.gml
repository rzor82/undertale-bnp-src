if (!instance_exists(real_siner))
{
    instance_destroy()
    return;
}
var vars = variable_instance_get_names(id)
for (i = 0; i < array_length_1d(vars); i++)
    variable_instance_set(real_siner, vars[i], variable_instance_get(id, vars[i]))
real_siner.dimension_override = 1
