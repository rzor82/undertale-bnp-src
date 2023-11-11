myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room == room_water_mirror)
{
    global.msg[0] = "* (It's written in a language you&  don't understand.)/%%"
    if (global.flag[365] > 0)
    {
        global.msg[0] = "* (You can barely make out&  what's written on this sign...)/"
        global.msg[1] = "\\W* \"Behold the underground's&  \\Yone and only\\W&  shapeshifting Monster!\"/"
        global.msg[2] = "* \"Feast your eyes as I&  reveal your inner&  secrets and desires.\"/"
        global.msg[3] = "* \"NOTE^1!&* One customer at a time^1.&* For your safety and mine.\"/%%"
    }
}
if (room == room_fire_core_topright)
    global.msg[0] = "\\G>This piece is titled^2:&>Fine art/%%"
if (room == room_water4)
{
    global.msg[0] = "* (This sign is written in&  very neat cursive.)/"
    global.msg[1] = "* \"Do not destroy the&  science grass.\"/"
    global.msg[2] = "* \"It is used for science.\"/%%"
}
if (room == room_ruins12B || room == room_fire_spidershop)
    global.msg[0] = scr_gettext("obj_sign_room_66")
if (room == room_ruins17)
    global.msg[0] = "* \"Ruins Sewer System^1.&* Proceed with caution!\"/%%"
if (room == room_tundra4)
{
    global.msg[0] = "* (It's a sign.^1)&  (Part of it has been written&  on in red marker.)/"
    global.msg[1] = "\\W* \\RRebellious Teen Club^1: \\WU^1p&\\W* Snowdin^1: Right/%%"
}
if (room == room_water_bhouse_lockers)
{
    global.msg[0] = "* \"Uniforms are mandatory!\"/"
    global.msg[1] = "* \"Violation of Bath House&  rules will result in&  unpleasant relaxation.\"/%%"
}
if (room == room_water_prebhouse)
{
    global.msg[0] = "* \"Up Ahead^1:&  Hotland.\"/"
    global.msg[1] = "* \"Closer Up Ahead^1:&  Hotwater Bath House.\"/%%"
}
if (room == room_water_bhouse_stairs)
{
    global.msg[0] = "* \"You are now exiting the&  Hotwater Bath House.\"/"
    global.msg[1] = "* \"Please change out of&  your assigned uniform&  before leaving.\"/%%"
}
if (room == room_tundra3)
{
    global.msg[0] = scr_gettext("obj_sign_room_90")
    global.msg[1] = scr_gettext("obj_sign_room_91")
    global.msg[2] = scr_gettext("obj_sign_room_92")
    global.msg[3] = scr_gettext("obj_sign_room_93")
}
if (room == room_water19)
    global.msg[0] = "* \"Last chance to wish&  before Hotland^1.&* Careful of pollen.\"/%%"
if (room == room_fire_lavalake)
    global.msg[0] = "* \"Now entering Hotterland^1!\"&* \"Enjoy your stay^1, and be&  careful of the green lava.\"/%%"
if (room == room_tundra5)
    global.msg[0] = scr_gettext("obj_sign_room_97")
if (room == room_tundra6)
{
    global.msg[0] = scr_gettext("obj_sign_room_101")
    global.msg[1] = scr_gettext("obj_sign_room_102")
    global.msg[2] = scr_gettext("obj_sign_room_103")
}
if (room == room_tundra8)
{
    global.msg[0] = scr_gettext("obj_sign_room_107")
    global.msg[1] = scr_gettext("obj_sign_room_108")
    global.msg[2] = scr_gettext("obj_sign_room_109")
}
if (room == room_tundra8A)
{
    global.msg[0] = scr_gettext("obj_sign_room_113")
    global.msg[1] = scr_gettext("obj_sign_room_114")
    global.msg[2] = scr_gettext("obj_sign_room_116")
    global.msg[3] = scr_gettext("obj_sign_room_117")
}
if (room == room_tundra_snowpuzz)
{
    global.msg[0] = scr_gettext("obj_sign_room_119")
    if (talkedto == 1)
        global.msg[0] = scr_gettext("obj_sign_room_120")
}
if (room == room_tundra_xoxopuzz || room == room_tundra_xoxosmall)
    global.msg[0] = scr_gettext("obj_sign_room_121")
if (room == room_tundra_lesserdog)
    global.msg[0] = scr_gettext("obj_sign_room_123")
if (room == room_tundra_poffzone)
    global.msg[0] = scr_gettext("obj_sign_room_124")
if (room == room_tundra_iceentrance)
    global.msg[0] = scr_gettext("obj_sign_room_126")
if (room == room_water3)
{
    global.msg[0] = scr_gettext("obj_sign_room_130")
    global.msg[1] = scr_gettext("obj_sign_room_131")
    global.msg[2] = scr_gettext("obj_sign_room_132")
    global.msg[3] = scr_gettext("obj_sign_room_133")
}
if (room == room_water5)
{
    global.msg[0] = scr_gettext("obj_sign_room_145")
    global.msg[1] = scr_gettext("obj_sign_room_146")
}
if (room == room_water_mushroom)
    global.msg[0] = scr_gettext("obj_sign_room_151")
if (room == room_water_prewaterfall)
    global.msg[0] = scr_gettext("obj_sign_room_156")
if (room == room_water_friendlyhub)
    global.msg[0] = scr_gettext("obj_sign_room_163")
if (room == room_water_undynehouse)
    global.msc = 706
if (room == room_tundra_town)
{
    global.msg[0] = scr_gettext("obj_sign_room_207")
    global.msg[1] = scr_gettext("obj_sign_room_208")
}
if (room == room_water_temvillage)
{
    global.msg[0] = scr_gettext("obj_sign_room_220")
    if (x > 270)
        global.msg[0] = scr_gettext("obj_sign_room_221")
    if (x > 330)
        global.msg[0] = scr_gettext("obj_sign_room_222")
}
if (room == room_fire_hoteldoors)
{
    global.msg[0] = scr_gettext("obj_sign_room_227")
    global.msg[1] = scr_gettext("obj_sign_room_228")
}
if (room == room_dogshrine_ruined)
{
    if (sprite_index == spr_ds2_rope)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_0")
        if (x >= 60)
        {
            global.msg[0] = scr_gettext("obj_sign_room_ds2_1")
            global.msg[1] = scr_gettext("obj_sign_room_ds2_2")
        }
    }
    if (sprite_index == spr_ds2_portrait1)
        global.msg[0] = scr_gettext("obj_sign_room_ds2_3")
    if (sprite_index == spr_ds2_portrait2)
        global.msg[0] = scr_gettext("obj_sign_room_ds2_4")
    if (sprite_index == spr_ds2_mascot1)
        global.msg[0] = scr_gettext("obj_sign_room_ds2_5")
    if (sprite_index == spr_ds2_goldbox || sprite_index == spr_ds2_goldbox_complete || sprite_index == spr_ds_donationbox_trash)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_6")
        if (sprite_index == spr_ds2_goldbox_complete)
            global.msg[0] = "* (The dognation slot has&  fled the scene of&  the crime...)/"
        if (sprite_index == spr_ds2_goldbox)
            global.msg[0] = "* (An unorganized pile&  of coins sits at&  the bottom of the box...)/"
        global.msg[1] = scr_gettext("obj_sign_room_ds2_7")
    }
    if (sprite_index == spr_ds2_dogtap)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_8")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_9")
        global.msg[2] = scr_gettext("obj_sign_room_ds2_10")
    }
    if (sprite_index == spr_ds2_dango)
        global.msg[0] = scr_gettext("obj_sign_room_ds2_11")
    if (sprite_index == spr_ds2_certificate)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_12")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_13")
    }
    if (sprite_index == spr_ds2_boombox)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_14")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_15")
    }
    if (sprite_index == spr_ds2_cd)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_16")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_17")
    }
    if (sprite_index == spr_ds2_blueprint)
    {
        global.msg[0] = scr_gettext("obj_sign_room_ds2_18")
        global.msg[1] = scr_gettext("obj_sign_room_ds2_19")
    }
}
if (room == room_water_undyneyard)
{
    global.typer = 146
    if (global.flag[157] >= 3)
    {
        global.msg[0] = scr_gettext("obj_sign_room_mew_0")
        global.msg[1] = scr_gettext("obj_sign_room_mew_1")
        global.msg[2] = scr_gettext("obj_sign_room_mew_2")
    }
    else
    {
        global.msg[0] = scr_gettext("obj_sign_room_mew_3")
        global.msg[1] = scr_gettext("obj_sign_room_mew_4")
        global.msg[2] = scr_gettext("obj_sign_room_mew_5")
        global.msg[3] = scr_gettext("obj_sign_room_mew_6")
        global.msg[4] = scr_gettext("obj_sign_room_mew_7")
        global.msg[5] = scr_gettext("obj_sign_room_mew_8")
        global.msg[6] = scr_gettext("obj_sign_room_mew_9")
        if (talkedto >= 1)
        {
            global.msg[0] = scr_gettext("obj_sign_room_mew_10")
            global.msg[1] = scr_gettext("obj_sign_room_mew_11")
        }
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
