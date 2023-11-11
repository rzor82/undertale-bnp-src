scr_setfont(fnt_main)
instance_create(0, 0, obj_battle_discoball)
instance_create(0, 188, obj_quizstage)
tv = instance_create(0, 0, obj_quiztv)
depth = (tv.depth + 1)
phase = -1
q = 0
qtext = "No question."
a1 = "Funyuns"
a2 = "Juggalos"
a3 = "Happy Beefsteak"
a4 = "Thunder muffin"
quiztimer = 0
correct = -1
answer = -1
limit = 4
quizinit = 0
image_speed = 0.08
mettamt = 0
con = 0
shake = 0
asked = 0
