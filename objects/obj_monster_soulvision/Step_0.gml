if (instance_exists(obj_monsterkidtrigger7) && obj_monsterkidtrigger7.murder == 1)
{
    if (obj_monsterkidtrigger7.con == 151)
        event_user(1)
    else if (obj_monsterkidtrigger7.con == 158)
        event_user(2)
}
if (fade == 1 && ((fade_speed > 0 && salpha < 1) || (fade_speed < 0 && salpha > 0)))
    salpha += fade_speed
else
    fade = 0
