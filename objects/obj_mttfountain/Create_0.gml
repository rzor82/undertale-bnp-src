scr_depth()
siner = 0
pudd = scr_marker(x, y, spr_mttfountain_puddle)
pudd.image_speed = 0.5
pudd.depth = 800000
murder = scr_murderlv() >= 12
if murder
    pudd.visible = false
