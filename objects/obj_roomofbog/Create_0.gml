alarm[0] = 5
ossafe_ini_open("undertale.ini")
global.tplot = ini_read_real("reset", "P", 0)
global.tloss = ini_read_real("reset", "X", 0)
ossafe_ini_close()
drawbar = 0
dcon = 0
global.inbattle = 1
visible = false
n_index = 0
n_alpha = 0
suppress_border = 0
display_binfo = 0
global.dmaxhp = global.maxhp
global.dhp = global.hp
global.dinv = 0
global.bmaxhp = 9999
global.bhp = 9999
dividefactor = 1
bgsiner = 0
bganimer = 0
siner = 0
ib = 0
