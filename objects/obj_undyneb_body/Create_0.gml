part[0] = instance_create((x + 74), (y + 4), obj_undynebody_part)
part[1] = instance_create((x + 12), (y - 4), obj_undynebody_part)
part[2] = instance_create((x + 50), (y + 60), obj_undynebody_part)
part[3] = instance_create((x + 144), (y + 78), obj_undynebody_part)
part[4] = instance_create((x + 78), (y + 124), obj_undynebody_part)
part[5] = instance_create(((x + 12) + 70), ((y + 78) - 12), obj_undynebody_part)
part[7] = instance_create((x + 78), (y + 154), obj_undynebody_part)
part[6] = instance_create((x + 100), y, obj_undynebody_part)
ydiff = 0
xdiff = 0
siner = 0
air = 0
head = part[0]
head.sprite_index = spr_undyneb_face
hair = part[1]
hair.sprite_index = spr_undyneb_hair
armor = part[2]
armor.sprite_index = spr_undyneb_armor
pants = part[4]
pants.sprite_index = spr_undyneb_pants
larm = part[5]
larm.sprite_index = spr_undyneb_leftarm
rarm = part[3]
rarm.sprite_index = spr_undyneb_rightarm
legs = part[7]
legs.sprite_index = spr_undyneb_legs
fancyhair = part[6]
fancyhair.sprite_index = spr_undyne_fancyhair
for (i = 0; i < 8; i += 1)
{
    part[i].depth = (depth + i)
    part[i].visible = true
    part[i].image_speed = 0
    part[i].image_xscale = 2
    part[i].image_yscale = 2
}
hair.image_speed = 0.25
movetype = 0
jumpno = 0
slashno = 0
fadeout = 0
part[6].visible = global.flag[349] == true
