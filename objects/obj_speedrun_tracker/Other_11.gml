var vars = variable_instance_get_names(id)
for (i = 0; i < array_length_1d(vars); i++)
    variable_instance_set(id, vars[i], 0)
start = gmlscripts_unix_timestamp()
ossafe_ini_open("undertale.ini")
true_restart = (!(ini_read_real("Flowey", "Met1", 0)))
ossafe_ini_close()
force = 1
event_user(0)
