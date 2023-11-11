if (global.language == "ja")
{
    w = instance_create((x + 17), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall1_ja
    w.depth = -15
    w = instance_create((x + 57), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall2_ja
    w.depth = -15
    w = instance_create((x + 89), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall3_ja
    w.depth = -15
    w = instance_create((x + 129), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall4_ja
    w.depth = -15
    w = instance_create((x + 154), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall5_ja
    w.depth = -15
    w = instance_create((x + 167), (y + 1), obj_wordfall_word)
    w.sprite_index = spr_wordfall6_ja
    w.depth = -15
    w = instance_create((x + 180), (y + 0), obj_wordfall_word)
    w.sprite_index = spr_wordfall7_ja
    w.depth = -15
}
else
{
    w = instance_create((x + 70), (y + 10), obj_wordfall_word)
    w.sprite_index = spr_wordfall1
    w.depth = -15
    w = instance_create((x + 96), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall2
    w.depth = -15
    w = instance_create((x + 129), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall3
    w.depth = -15
    w = instance_create((x + 174), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall4
    w.depth = -15
    w = instance_create((x + 214), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall5
    w.depth = -15
    w = instance_create((x + 231), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall6
    w.depth = -15
    w = instance_create((x + 249), (y + 9), obj_wordfall_word)
    w.sprite_index = spr_wordfall7
    w.depth = -15
}
instance_destroy()
