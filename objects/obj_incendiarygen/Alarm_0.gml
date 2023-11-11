gen = instance_create(100, 150, obj_sideplanebullet)
caster_free(snd_fall)
caster_play(snd_fall, 0.6, 0.8)
if instance_exists(gen)
    gen.dmg = dmg
alarm[0] = rate
