global.paused = false
global.interact = 0
lastinteract = global.interact
tp = 0
tpy = 30
bp = 0
bpy = 40
drawpause = 0
textlength = 0
tickersiner = -320
tickermax = 400
alpha = 0
select = 0
os_canquit = 1
timeofday = 0
if (global.osflavor > 2 || obj_time.canquit == 0)
    os_canquit = 0
maxx = ((3 + os_canquit) + global.debug)
btninfo = ["Exit the pause menu and return to\ngameplay.", "Return to the main menu.\nDon't forget to SAVE before leaving.", "Configure the game to your liking.\nSettings are saved after leaving.", "End the program.\n(You can also hold [ESC] to exit.)", "See additional information for debug mode."]
btnno = "Leaving is against the rules in this\narea!"
stateinfo = ["Bepis", "Are you sure you want to return to the\nmain menu?", "Are you sure you want to exit?"]
truezero = 0
xx = __view_get(0, 0)
yy = __view_get(1, 0)
depth = -999999999
forceclose = 0
mute = 0
noticker = 0
ss = -4
state = 0
buffer = 0
temphide = 0
state = 0
select_opt[0] = 0
select_opt[1] = 0
select_opt[2] = 0
fakepause = 0
unpersist = 0
dayofweek = current_day
murder = 0
choosething = 0
textchosen = 0
dogchosen = 0
dogchoosething = 0
dogsiner = 0
currenthour = current_hour
if (currenthour >= 0 || currenthour < 12)
    hourmessage = "NOTHING LIKE A LITTLE BIT OF FLAVOR TEXT IN THE MORNING!"
else if (currenthour >= 12 || currenthour <= 18)
    hourmessage = "NOTHING LIKE A LITTLE BIT OF FLAVOR TEXT IN THE AFTERNOON!"
else if (currenthour > 18 || currenthour <= 24)
    hourmessage = "NOTHING LIKE A LITTLE BIT OF FLAVOR TEXT LATE AT NIGHT!"
else
    hourmessage = "NOTHING LIKE A LITTLE BIT OF FLAVOR TEXT AT BEPIS O' CLOCK!"
month = current_month
if (month == 12 || (month < 3 && month < 0))
    weather = 1
else if (month < 6)
    weather = 2
else if (month < 9)
    weather = 3
else if (month < 12)
    weather = 4
else
    weather = 0
switch weather
{
    case 1:
        weathermessage = "STAY INSIDE AND PLAY MORE UNDERTALE!"
        break
    case 2:
        weathermessage = "DON'T FORGET TO PLANT SOME FLOWERS!"
        break
    case 3:
        weathermessage = "COOL OFF AND GAME ON!"
        break
    case 4:
        weathermessage = "BECOME RULER OF THE LOCAL LEAF PILE!"
        break
    default:
        weathermessage = "LOOK AT THE BEPIS!"
        break
}

if (global.allowinternet == 0)
    internetmessage = "THE WI-FI HERE SUCKS."
else
    internetmessage = "SUCCESSFULLY CONNECTED TO THE UNDERNET!"
bottommessage = ["ALSO TRY DELTARUNE!", "7.8/10, NOT ENOUGH DOGS.", "MTT BRAND APPROVED!", "NUMBER 1 RATED UNDERTALE MOD [[201X]]!!", "I THINK I LEFT MY COMEDICALLY TIMED OVEN ON...", "... Can anyone hear me...? Help...", "THERE'S NOTHING I HATE MORE THAN RANDOMLY GENERATED SCROLLING FLAVOR TEXT.", "SHOUTOUTS TO SIMPLEFLIPS.", "HEY, CHECK THIS OUT.                                     PRETTY COOL, RIGHT?", "IF YOU'RE READING THIS, THAT MEANS IT'S WORKING.", "THIS IS A CERTIFIED GOOD TEXT STRING.", "CHECK OUT THE OST ON SOUNDCLOUD!", "JOIN THE OFFICIAL DISCORD SERVER!", "ALSO TRY RIBBIT!", "ONE CAN NEVER HAVE ENOUGH BEPIS.", "APPARENTLY, THIS FLAVOR TEXT IS A DUD.", "TASTES LIKE FLAVOR TEXT.", "MOD OF THE YEAR, EVERY YEAR, BABY!", "EXPLORE AS MUCH AS YOU CAN; YOU MIGHT FIND SOMETHING NEW!", "WHAT'S 9 + 10?", "PRESS [ESC] TO OPEN THE PAUSE MENU!", "WAIT... WHO'S THAT WEIRD IT GUY...?", "A WORK IN PROGRESS!", hourmessage, "FASHIONABLY LATE!", "DON'T MISS OUT ON YOUR CHANCE TO SET UP A BIT OF DUMP DATING!", internetmessage, "DON'T YOU HAVE ANYTHING BETTER TO DO?", weathermessage, "YOU'RE PLAYING UNDERTALE: BITS AND PIECES!", "QUICK! DEPOSIT YOUR KROMER FOR ANOTHER 30 MINUTES OF EUPHORIA!!!", "ARE YOU WAITING FOR SOMETHING TO HAPPEN?", "NOW, WHERE DID THOSE KEYS GO...?", "SALTY? SWEET? SAVORY?                         TANGY?", "LOOK OUT FOR FUTURE UPDATES FOR UNDERTALE: BITS AND PIECES!", "WHY DO THEY CALL IT BITS AND PIECES WHEN YOU BITS THE PIECES OF PIECES BITS THE PIECES?", "SMILE! THE GHOST OF A CHILD MIGHT BE NARRATING YOUR EVERY MOVE.", "LOOK OUT FOR UNTITLED...                    WHENEVER THAT GETS WORKED ON...?", "100% GUARANTEED TO PROVOKE SOME KIND OF REACTION OUT OF USERS!", "ALSO TRY OFF!", "ALSO TRY YUME NIKKI!", "ALSO TRY UNDERTALE II!", "ALSO TRY CAVE STORY!", "ALSO TRY DELTARUNE+!", "IF YOU'RE OVER 23 AND HAVE A COMPUTER, THIS MOD IS A MUST HAVE!", "ALSO TRY CAVE STORY ENCORE!", "CHECK OUT TOBY FOX'S SECRET BASE ON FAMITSU!", "SIGN UP FOR THE UNDERTALE/DELTARUNE NEWSLETTER!", "UNDERTALE: BITS AND PIECES, THE FRIENDLY RPG MOD WHERE NOBODY HAS TO DIE!        ...MOSTLY."]
