con = 0
active = true
if (global.flag[7] == 1)
    active = false
if (global.flag[277] == 1)
    active = false
type = 0
if (global.flag[5] >= 40 && global.flag[5] <= 45)
    type = 1
if (global.flag[5] > 45 && global.flag[5] <= 50)
    type = 2
if (global.debug == true)
    type = choose(1, 2)
if (type == 0)
    active = false
if (global.plot >= 120)
    active = false
rockchance = irandom(100)
