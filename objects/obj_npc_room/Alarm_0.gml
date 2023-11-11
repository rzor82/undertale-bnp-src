myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = "* WOAH!!!^1!&* THE NPC WITH NO DIALOGUE!!^1!/%%"
if (room == room_water_trashzone1)
{
    if (x < 180)
    {
        global.msg[0] = "* Hey^1, it's the kid&  that bought our&  junk./"
        global.msg[1] = "* Like^1, what are you up to?/"
        global.msg[2] = "* I'm^1, like^1, trying not&  to gag each time Catty&  pets Burgerpants./"
        global.msg[3] = "* This is the trash dump^1,&  not a petting zoo!/%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* Turns out^1, he&  isn't such a creep&  after all./"
            global.msg[1] = "* Well^1, he totally still&  is^1, but like^1, less&  of a creep???/"
            global.msg[2] = "* At least he's starting&  to live a little./%%"
        }
        if (talkedto > 1)
            global.msg[0] = "* Don't tell him I said that./%%"
        if (global.flag[258] == 1)
            global.msg[0] = "* Oh my God??^1?&* You totally just&  dug through that fridge!/%%"
    }
    else if (x < 240)
    {
        global.msg[0] = "* Hiya^1! Decided to crash&  our party^1, huh?/"
        global.msg[1] = "* We're trying to&  teach ol' Burgerpants&  here how to have fun./"
        global.msg[2] = "* But^1, like^1, I don't&  think he likes&  collecting trash as much./"
        global.msg[3] = "* What's wrong with that^1?&* I collect trash for&  a living!/%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* Am I having fun^1?&* Like, are you kidding?&* I totally am!/"
            global.msg[1] = "* What could be more&  fun than hanging with&  my best friend???/"
            global.msg[2] = "* ...and the guy we&  met at a fast food&  place./%%"
        }
        if (global.flag[258] == 1)
            global.msg[0] = "* That's the spirit^1, bestie^1!&* Like^1, keep it up!/%%"
    }
    else
    {
        global.typer = 133
        global.msg[0] = "* Hey^1, little buddy^1.&* Didn't expect to see&  YOU here./"
        global.msg[1] = "* I spoke with Mettaton&  and^1, uh...../"
        global.msg[2] = "* Exchanged my future vacation&  days for a 30 minute&  break?????????/"
        global.msg[3] = "* Livin' the life^1,&  little buddy^1.&* Livin' the life./%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* The girls have been&  teaching me how&  to find \"good trash.\"/"
            global.msg[1] = "* Is this a joke^1?&* Is this an elaborate&  prank???/"
            global.msg[2] = "* ...they told me it's just&  \"hot girl stuff.^2\"&* Boy.../"
            global.msg[3] = "* I can't wait to&  do this again&  next week./%%"
        }
        if (global.flag[258] == 1)
        {
            sprite_index = spr_npc_bpants_casual_talkoh
            global.msg[0] = "* Did you just.../"
            global.msg[1] = "* Dig through the&  garbage?????/"
            global.msg[2] = "* (I'M SURROUNDED&  BY WEIRDOS.)/%%"
            if (talkedto > 0)
            {
                sprite_index = spr_npc_bpants_casual_talk
                global.msg[0] = "* Sorry^1, little buddy./"
                global.msg[1] = "* I uh..^1. forgot that's&  what I'm here for.../%%"
            }
        }
    }
}
if (room == room_fire_lab2)
{
    global.msg[0] = "* (It's a life-sized string&  of default flavor text.)/"
    if (sprite_index == spr_npc_mewmew)
        global.msg[0] = "* (It's a life-sized&  Mew Mew Doll.^1)&* (For..^1. something.)/"
    if (sprite_index == spr_trashdummy)
        global.msg[0] = "* (It's a life-sized replica of&  a training dummy.^1)&* (For..^1. something.)/"
    global.msg[1] = "* (It must be Alphys's.)/%%"
}
if (room == room_ruins5)
    global.msg[0] = "* (This Froggit is sleeping&  soundly in the water.)/%%"
if (room == room_ruins7A)
    global.msg[0] = "* (This Froggit seems to be&  observing you closely...)/%%"
if (room == room_tundra_iceexit)
{
    global.msg[0] = "\\K0* Oh^1, it's \\K1you^1.\\K0&* Finally come to appreciate&  how \\K1AWESOME\\K0 my pecs are?/"
    global.msg[1] = "\\K0* No^1?&* Then \\K1WHY\\K0 are you still \\K1HERE!?!?\\K0/%%"
    if (scr_murderlv() >= 7)
    {
        global.msg[0] = "\\K0* I left to find someone^1,&  \\K1ANYONE\\K0^1, that would appreciate&  how awesome I am.../"
        global.msg[1] = "\\K0* ...but everyone's must be&  playing hide-and-seek&  with me or something!/"
        global.msg[2] = "\\K0* \\K1UHHH^1, HELLOOOO??^1?\\K0&* Don't they know I&  \\K1HATE\\K0 hide-and-seek?/%%"
    }
    if (global.flag[7] == 1)
        global.msg[0] = "\\K0* I hope humans have better&  taste than \\K1YOU\\K0 do^1.&* I \\K1DESERVE\\K0 praise!!!/%%"
}
if (room == room_fire_spider)
    global.msg[0] = "* (It's a giant spider web.^1)&* (Perfect for tea parties.)/%%"
if (room == room_water_dock)
{
    global.msg[0] = "* The underground is nice^1,&  but I can't wait to visit&  more places on the surface./"
    global.msg[1] = "* By boat^1, of course^1.&* This sea-fairing lifestyle&  suits me well./%%"
}
if (room == room_tundra_dock)
{
    global.msg[0] = "* I did it^1!&* The River Person was very&  nice^1, too.../"
    global.msg[1] = "* I don't know why I&  was so afraid^1, that was&  a lot of fun!/%%"
}
if (room == room_water_bhouse_stairs)
{
    global.msg[0] = "* Leaving the bath house^1, huh./"
    global.msg[1] = "* You look like you're on&  some important mission^1, so&  I won't stop you./"
    global.msg[2] = "* May your travels&  be adventurous./%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* Well^1, well^1, well^1.&* Look who's returned./"
        global.msg[1] = "* Glad to see you made&  it back in one piece./"
        global.msg[2] = "* The barrier^1, on the other hand^1.&* Is another story./%%"
    }
}
if (room == room_fire_dock)
{
    global.msg[0] = "* I've always wanted to ride&  on this boat^1, but I've never&  gathered the courage to go./"
    global.msg[1] = "* I just need..^1.&  a little bit longer.../%%"
}
if (room == room_water_prebhouse)
{
    if (x < 150)
    {
        global.msg[0] = "* (It's a pair of&  questionably large legs.)/"
        global.msg[1] = "* (You wonder if they connect&  to a fittingly sized&  body^1, arms and head.)/"
        global.msg[2] = "* (They go so far up^1,&  it's impossible to tell.)/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* (The legs haven't moved.)&* (Their sheer size is&  still intimidating.)/"
            global.msg[1] = "* (You try not to think&  about how they'll&  leave the underground.)/%%"
        }
    }
    else
    {
        global.msg[0] = "* I'm not sure what&  all the hubbub about this&  bath house is for./"
        global.msg[1] = "* So what if it's relaxing?&* So what if I can't go&  because I can't swim in water?/"
        global.msg[2] = "* Do you think I care^1?&* I don't care^1, no^1, I don't^1.&* Why would I care?/%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* Do I care about&  you choosing to&  talk to me again?/"
            global.msg[1] = "* No^1, I don't care^1.&* I don't appreciate&  the company^1, either./"
            global.msg[2] = "* You haven't made my day&  at all^1, nosiree./%%"
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* The barrier opened..^1. So what^1?&* I'm content with staying&  trapped underground forever./"
            global.msg[1] = "* ..^2.&* ..^2.&* Okay^1, that isn't true./"
            global.msg[2] = "* I can only be a contrarian&  about so many things before&  it gets silly./%%"
        }
    }
}
if (room == room_ruins_home_store)
{
    global.msc = 0
    if (x == 230)
    {
        global.msg[0] = "%%"
        troublecon = 1
    }
    else if (x == 120)
    {
        global.msg[0] = "* Hey leave me alone can't&  a sicko look at milks&  in peace/"
        global.msg[1] = "* Yea so what if&  I check every single&  milk for expiration dates/"
        global.msg[2] = "* Go ahead and sue mea/%%"
        if (talkedto > 0)
            global.msg[0] = "* No this one isn't&  the right one either/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Tiem to look at all&  the milks on the surface/"
            global.msg[1] = "* I'm a sicko and&  nothing can stop me&  not even humans/%%"
            if (talkedto > 0)
                global.msg[1] = "* I wonder if they have&  different expiration dates/%%"
        }
    }
    else
        global.msc = 3023
}
if (room == room_ruins_homehub)
{
    if (x == 1268)
    {
        global.msg[0] = "%%"
        nubcon = 1
    }
    if (x == 324)
    {
        global.msg[0] = "* Ah^1, it's that time&  already^1, is it^1?&* But the other crabs aren't-%"
        global.msg[1] = "* Huh^1? I've been mistaken^1?&* Hmm..^1. Yes^1, you aren't&  the one I'm looking for./"
        global.msg[2] = "* There's a fellow that&  comes by once a month&  and plays his harmonica./"
        global.msg[3] = "* Every time^1, always exclaiming&  \"It is time for crab\" and&  doing a fancy jig./"
        global.msg[4] = "* It's become quite popular&  among us crab folk^1,&  you see./%%"
        if (talkedto > 0)
            global.msg[0] = "* It is not yet&  time for crab./%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Ah^1, you missed it^1, human^1!&* The man came and played&  his harmonica!/"
            global.msg[1] = "* I'm sure you'll be&  able to partake in&  crab time on the surface./%%"
        }
    }
    if (x == 222)
    {
        global.msg[0] = "* HOME might seem old^1,&  but it's still full&  of life./"
        global.msg[1] = "* The name fits for sure^1,&  as many monsters call&  this place their home./"
        global.msg[2] = "\\W* The Guardian of the Ruins^1,&  \\BToriel\\W^1, helps out the&  community time to time./"
        global.msg[3] = "* Though^1, in recent years^1,&  she's been spending more&  and more time somewhere else.../%%"
        if (talkedto > 0)
            global.msg[0] = "* I wonder what she's up to...?/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* The queen opened up the&  door to the rest of&  the underground.../"
            global.msg[1] = "* And soon after^1, the&  barrier had been destroyed!/"
            global.msg[2] = "* I wonder if she'll&  remain as our queen&  on the surface.../%%"
        }
    }
    if (x == 668)
    {
        global.msg[0] = "\\K0* I'm just crying here..^1.&* Nothing bu^1t (\\K1sniffle^1\\K0) tears&  from this Whimsun.../%%"
        if (talkedto > 0)
            global.msg[1] = "\\K0* Boo hoo..^1.&* Boo..^1. (\\K1sniffle^1\\K0) hoo..../%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "\\K0* I'm just thinking here..^1.&* Nothing bu^1t (\\K1sniffle^1\\K0) goals&  and aspirations from me.../%%"
            if (talkedto > 0)
                global.msg[1] = "\\K0* Woo hoo..^1.&* Woo..^1. (\\K1sniffle^1\\K0) hoo..../%%"
        }
    }
    if (x == 966)
    {
        global.msg[0] = "%%"
        troublecon = 1
    }
}
if (room == room_fire_hh_shortcut)
{
    if (x > 110)
    {
        global.msg[0] = "* Someone turned on the laser&  that's SUPPOSED to keep people&  from the construction site.../"
        global.msg[1] = "* But since it was turned on&  without us knowing^1, half of&  the crew is stuck up here./"
        global.msg[2] = "* Sure^1, we could go&  around and get there^1, but.../"
        global.msg[3] = "* Well^1, who said I&  was complaining about it?/%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* Good thing construction&  doesn't exist on the&  surface^1, right?/%%"
    }
    else
    {
        global.msg[0] = "* Oh..^1.&* When lasers block the&  path forward^1, I feel.../"
        global.msg[1] = "* Not very spicey^1./%%"
        if (talkedto > 0)
            global.msg[0] = "* Not spicey./%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = scr_gettext("obj_vulkinnpc_77")
            global.msg[1] = scr_gettext("obj_vulkinnpc_78")
        }
    }
    if (x == 160)
    {
        global.msg[0] = "* I've never had a chance&  to just... stare into the&  abyss surrounding us./"
        global.msg[1] = "* It's... oddly relaxing./%%"
        if (talkedto > 0)
            global.msg[0] = "* Ahh..^1.&* Serendipity.../%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* I've heard there's no&  such thing as the abyss&  on the surface./"
            global.msg[1] = "* Truly tragic..^1.&* At least I can come&  visit any time^1, right?/%%"
        }
    }
}
if (room == room_fire_hh_lower)
{
    if (x == 58)
    {
        global.msg[0] = "* The view from up here&  is amazing^1, isn't it?/"
        global.msg[1] = "* You know^1, Hotland Heights&  didn't always exist./"
        global.msg[2] = "* Once the CORE was built^1,&  people needed to get there&  easily for their jobs./"
        global.msg[3] = "* Though^1, it's become&  somewhat of a residential&  area in recent years./%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* What's that^1?&* You can't see the view...?/"
            global.msg[1] = "* What do you mean^1,&  just look south^1,&  you can't miss it!/%%"
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* I'm gonna miss this view.../"
            global.msg[1] = "* Though I'm sure the views&  up on the surface are&  just as amazing!/%%"
        }
    }
    if (x == 154)
    {
        global.msg[0] = "* ..^1.&* ..^1.&* ..^1.oh^1, sorry^1. Didn't see you./"
        global.msg[1] = "* Trying to hang out in&  the shadows^1, are you^1?&* Hmmmm.../"
        global.msg[2] = "* Your style could use&  some work^1, first^1, though./"
        global.msg[3] = "* I mean^1, your color scheme&  isn't even CLOSE to being&  dark enough to fit in./%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* ..^1.&* ..^1.&* ..^1.oh^1, you're still here?/"
            global.msg[1] = "* I thought you had left&  to pursue a brighter&  future^1, or something./%%"
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* I guess we'll have to&  start going out in the sun&  more often on the surface./"
            global.msg[1] = "* Maybe I'll get a tan...?/%%"
        }
    }
    if (x == 291)
    {
        global.msg[0] = "* What do YOU want^1?&* Oh^1, you're just passing by?/"
        global.msg[1] = "* Good riddance^1, didn't want&  to talk to you anyway./%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* Did you not hear me^1?&* I'm not up for chatting./"
            global.msg[1] = "* It's too..^1.&* \"Social-y\" for my tastes./%%"
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Do I want to move out&  onto the surface^1?&* ...maybe./"
            global.msg[1] = "* Why do YOU wanna know?/%%"
        }
    }
    if (x == 255)
    {
        global.msg[0] = "* Huh^1? Am I a human^1?&* No^1, but I get that&  from everybody./"
        global.msg[1] = "* It must be because of&  this uniform my mom&  has me wear every day./"
        global.msg[2] = "* Though^1, then again^1,&  I'm terrible at picking&  out my wardrobe^1, so.../"
        global.msg[3] = "* I'm glad she does it./%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* I told you^1, I'm&  not a human^1!&* Honestly!/"
            global.msg[1] = "* How would you know&  what a human looks&  like anyway...?/%%"
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Well^1, I guess I won't&  be the only human looking&  thing around anymore./"
            global.msg[1] = "* Darn^1, my one unique trait...!/%%"
        }
    }
    if (x == 427)
    {
        global.msg[0] = "* (It seems like it's&  trying to communicate^1,&  but all you hear is static.)/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Can... can you hear me^1?&* Oh^1, finally^1!/"
            global.msg[1] = "* I'm finally able to tune&  into human frequencies^1.&* And just in time^1, too!/%%"
        }
    }
    if (scr_murderlv() >= 12)
        instance_destroy()
}
if (room == room_fire_hh_mainhub)
{
    if (x == 606)
    {
        global.msg[0] = "* Between you and me^1?&* If you have no more&  room for any items.../"
        global.msg[1] = "* You can drop one^1,&  and it'll stay where&  you dropped it!/"
        global.msg[2] = "* Neat^1, huh?/%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* That might sound like&  common sense to you^1,&  but trust me.../"
            global.msg[1] = "* Back when I was a kid&  we used to have to&  \"manage our items.\"/"
            global.msg[2] = "* Talk about inconvenient./%%"
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Say^1, kid^1, I just&  realized somethin'.../"
            global.msg[1] = "* Don't go tossing items&  on the surface^1, alright^1?/"
            global.msg[2] = "* Apparently it's called&  \"littering\" up there and&  isn't as accepted./%%"
        }
    }
    if (x == 1266)
    {
        global.msg[0] = "* Oh gee^1, this is quite&  the mess^1, that's for sure./"
        global.msg[1] = "* Everyone's been going with&  this trend of hanging clothes&  out to dry.../"
        global.msg[2] = "* What did I do wrong^1?&* Oh gee./%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* Oh gee^1, someone's noticed me..^1./"
            global.msg[1] = "* If I stand around long&  enough^1, maybe they'll go away./"
            global.msg[2] = "* I have no other plans^1,&  so I might as well try./%%"
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* The water didn't end up&  drying up at all.../"
            global.msg[1] = "* Since everyone is going to&  the surface^1, maybe I won't&  have to worry about it...?/"
            global.msg[2] = "* No^1, I should probably&  clean this mess up./%%"
        }
    }
    if (x == 435)
    {
        if (global.flag[7] == 0)
            global.msc = 3012
        else
        {
            global.msc = 0
            global.msg[0] = "* I didn't get to&  find out where you&  came from^1, but.../"
            global.msg[1] = "* I guess that doesn't&  really matter anymore!/"
            global.msg[2] = "* We're all going to&  the surface now^1, right?/%%"
        }
    }
    if (x == 832)
    {
        global.msg[0] = "* I moved to Hotland Heights&  because of my job at&  the CORE^1, but.../"
        global.msg[1] = "* I didn't realize just&  how hot it'd be!!!/"
        global.msg[2] = "* I guess it's in the&  name^1, but^1, uh.../"
        global.msg[3] = "* Well^1, I can't move back^1,&  'cause my boss won't let&  me quit anymore.../%%"
        if (talkedto > 0)
            global.msg[0] = "* Ugh!!!!^1!&* It's just SO HOT!!!!/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Hey!!^1!&* Good news^1, haha!!!/"
            global.msg[1] = "* Now that the surface is&  available^1, everyone is moving&  out of the underground!/"
            global.msg[2] = "* No more Hotland!!^1!&* No more sweating!!^1!&* No more terrible bosses!!^1!/"
            global.msg[3] = "* Th-that's if I'm able&  to find a job up there^1,&  anyway.../%%"
        }
    }
    if (x == 708)
    {
        global.msg[0] = "* Hi there^1!&* I've never seen such a&  wonderful hat-worthy head!/"
        global.msg[1] = "\\W* You look like the perfect&  person to tell my&  \\YSuper Secret\\W to!/"
        global.msg[2] = "* If you put on certain&  types of clothing, people might&  respond to it^1! Neat^1, huh?/"
        global.msg[3] = "* Try it out!/%%"
        if (talkedto > 0)
            global.msg[0] = "\\W* I hope you didn't forget&  about my \\YSuper Secret\\W!/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* I've always wanted to be&  sitting atop a head just&  like yours^1, human!/"
            global.msg[1] = "* Maybe I'll get a job&  at a clothing store on&  the surface.../%%"
        }
    }
    if (x == 1156)
    {
        global.msg[0] = "* Hey^1, get outta here^1!&* This is my hiding spot^1,&  you'll give me away for sure!/"
        global.msg[1] = "* Huh^1? What am I hiding from^1?&* Well^1, you see.../"
        global.msg[2] = "* I'm supposed to be working&  at the CORE right now^1,&  but I just.../"
        global.msg[3] = "* Want to spend more&  time in my brand new&  official MTT leggings.../%%"
        if (talkedto > 0)
            global.msg[0] = "* D-don't judge me^1!&* They... they help me&  with my... programming...?/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Now that the underground&  is about to go empty^1, I&  won't have to work anymore./"
            global.msg[1] = "* Leggings time is&  any time I want now...!/%%"
        }
    }
    if (x == 903 || x == 920)
    {
        global.msg[0] = "* Boy^1, I love the atmosphere&  here in Hotland Heights^1!&* I can't get enough of it!/"
        global.msg[1] = "* The people^1,&  the view^1,&  the colors.../"
        global.msg[2] = "* It's too much to&  take in all at once^1!/%%"
        if (talkedto > 0)
            global.msg[0] = "* Hey^1, do you like&  Hotland Heights too?/%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* I hope there's places&  just like Hotland Heights&  up on the surface!/%%"
    }
}
if (room == room_water_bhouse_lockers)
{
    global.msg[0] = "* (GASP^1)&* Welcome to the&  Hotwater Bath House./"
    global.msg[1] = "* You may not want to stay&  too long^1, Undyne's warning&  people about.../"
    global.msg[2] = "* (GASP^1)&* A human prowling around./%%"
    if (talkedto > 0)
        global.msg[0] = "* (GASP^1)&* Sorry^1, it's hard for me to&  breathe out of water./%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* (GASP^1) I hope the surface&  has enough water for&  me to breathe in./%%"
}
if (room == room_water_bhouse_splitpath)
{
    global.msg[0] = "* Can't talk^1.&* Need to find my&  locker key./"
    global.msg[1] = "* Maybe if I look long enough^1,&  I'll find a pocket on&  this uniform./"
    global.msg[2] = "* Whether or not my&  key is in there&  is another matter./%%"
    if (talkedto > 0)
    {
        global.msg[0] = "* Undyne just came through&  here. Hmm...&* Maybe she has it?/"
        global.msg[1] = "\\W* Yeah^1, \\YUndyne^1\\W, she's the&  head captain of&  \\YAsgore's Royal Guard\\W./"
        global.msg[2] = "* She's been searching&  just about everywhere^1,&  rumors of a human and all that./"
        global.msg[3] = "* I'm not really political&  myself^1, so I don't&  really care much./"
        global.msg[4] = "* What I DO care about&  is where that elusive&  locker key went!/%%"
    }
    if (talkedto > 1 || global.flag[171] == 1)
    {
        global.flag[171] = 1
        global.msg[0] = "* Hey..^1. I'm actually having&  a LOT of fun fidgeting&  with my clothes!/"
        global.msg[1] = "* I don't mind not having&  my locker key on me&  anymore.../"
        global.msg[2] = "* Messing with my clothes..^1.&* This is my lifestyle now!/"
        global.msg[3] = "* Material possessions like&  locker keys don't&  hold me back anymore./%%"
    }
    if (global.flag[7] == 1)
    {
        if (global.flag[171] == 1)
        {
            global.msg[0] = "* I can't wait to try&  messing with all kinds&  of clothes on the surface!/"
            global.msg[1] = "* Maybe I'll start out&  with... a striped&  wool sweater...?/%%"
        }
        else
        {
            global.msg[0] = "* Oh no^1, I don't have&  any more time to search&  for my locker key./"
            global.msg[1] = "* I need to move to&  the surface before I&  lose my mind^1, too!/%%"
        }
    }
}
if (room == room_water_bhouse_sauna1)
{
    if (x > 180)
    {
        global.msg[0] = "* T h i s  s a u n a&  f e e l s&  m a g n i f i c e n t ./%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* I s  t h e  s u r f a c e&  t h i s  n i c e . . . ?/%%"
    }
    else
    {
        global.msg[0] = "* Ahh..^1.&* The sauna.../"
        global.msg[1] = "* I could spend all of&  my days here.../"
        global.msg[2] = "* Well^1, the water does&  ruin my fur^1, so..^1.&* Maybe not./%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* Ahh^1, shoot^1.&* I wasted all of my&  time at the bath house.../%%"
    }
}
if (room == room_water_bhouse_outside)
{
    global.msg[0] = "* Hey^1, are you trying to&  go to the Hotwater&  Bath House too?/"
    global.msg[1] = "* I've been wanting to&  go since I was&  just a little ice cube.../"
    global.msg[2] = "* But my parents won't let me^1!&* Something about me&  melting if I ever go.../"
    global.msg[3] = "* Hmm..^1.&* Maybe it's not such a&  good idea after all./%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* I took too long deciding&  if I should go inside&  or not^1, the barrier opened up!/"
        global.msg[1] = "* That's just my luck^1,&  I suppose.../%%"
    }
}
if (room == room_water_bhouse_cragview)
{
    global.msg[0] = "* There comes a time in life&  when you need to learn an&  important lesson:/"
    global.msg[1] = "* Take life head-on^1,&  before it takes you./%%"
    if (scr_murderlv() >= 8)
        global.msg[1] = "* Not everything is about&  whether or not you can^1,&  but rather^1, if you should./%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* Whether you listened to&  my advice or not..^1.&* It doesn't really matter./"
        global.msg[1] = "* Either way^1, you've taken my&  advice into account^1.&* Splendid work^1, young one./%%"
    }
}
if (room == room_water_gersonshop)
{
    if (chattedwith == 0 && instance_exists(OBJ_WRITER) == 0)
    {
        global.msg[0] = "* Wa ha ha^1!&* You're not supposed to&  see this!/"
        if (obj_mainchara.y < 100)
        {
            global.msg[0] = "* How'd you get&  back here^1, youngster?/"
            global.msg[1] = "* I do business over the&  counter^1, not behind it^1!&* Wa ha ha!/%%"
            if (scr_murderlv() >= 10)
            {
                global.msg[0] = "* Wa da heck^1?&* How did you.../"
                global.msg[1] = "* .../"
                global.msg[2] = "* Your exploits will&  get you nothing here^1.&* Nice try^1, kiddo!/%%"
            }
        }
        else
        {
            chattedwith += 1
            if (scr_murderlv() < 10)
            {
                global.msg[0] = "\\E2* Woah there^1!&\\E0* I've got some neat&  junk for sale./%%"
                if (global.flag[7] == 1)
                {
                    sprite_index = spr_gerson_npc_laugh
                    global.msg[0] = "* Wa ha ha^1!&* Welcome back^1, kiddo!/%%"
                }
            }
            else
                global.msg[0] = "* Wa ha..^1.&* I knew you'd come&  eventually.../%%"
        }
    }
}
if (room == room_fire_brattycattyshop)
{
    if (chattedwith == 0 && instance_exists(OBJ_WRITER) == 0)
    {
        chattedwith += 1
        if (x > 150)
        {
            global.msg[0] = "\\j* Hey^1, someone's here!&* Here to check out&  what we've got?/%%"
            if (global.flag[7] == 1)
                global.msg[0] = "\\j* Hey^1, Bratty^1, we've&  got one last customer!/%%"
        }
        else
        {
            global.msg[0] = "\\p* Catty, we've got&  a customer!&* Go get the stuff!/%%"
            if (global.flag[7] == 1)
                global.msg[0] = "\\p* Like^1, looks like we're&  still getting customers^1,&  Catty!/%%"
        }
        if (sprite_index == spr_notepaper)
        {
            global.msg[0] = "* (There's a note here...)/"
            global.msg[1] = "\\j* If you're reading this^1,&  like^1, back off&  our junk^1, okay?/%%"
        }
    }
}
if (room == room_fire_hotel_bpants)
{
    if (chattedwith == 0 && instance_exists(OBJ_WRITER) == 0)
    {
        global.typer = 133
        global.msg[0] = "* If you see this^1,&  please don't tell&  Mettaton./"
        global.msg[1] = "* He'll fire me for&  not being&  \"professional\"/%%"
        if (obj_mainchara.y < 140)
        {
            global.msg[0] = "* Please don't climb&  over the counters./%%"
            if (scr_murderlv() >= 12)
                global.msg[0] = "* HELP THE CREEPY&  CHILD IS RIGHT&  NEXT TO ME/%%"
        }
        else
        {
            chattedwith += 1
            global.msg[0] = "* Welcome^1, o customer!/%%"
            if (global.flag[435] == 2)
                global.msg[0] = "* Hey^1, little buddy^1.&* You need something?/%%"
            if (global.flag[7] == 1)
                global.msg[0] = "* Welcome back^1, little buddy!/%%"
            if (scr_murderlv() >= 12)
            {
                sprite_index = spr_npc_bpants_talkoh
                global.msg[0] = "\\T0\\F0\\Tb* (God^1, please just get&  in and get out...)/%%"
            }
        }
    }
}
if (room == room_water_temshop_room)
{
    if (chattedwith == 0 && instance_exists(OBJ_WRITER) == 0)
    {
        chattedwith += 1
        global.msc = 0
        global.typer = 28
        global.facechoice = 0
        global.faceemotion = 0
        global.msg[0] = "* Hoi!!!!!^1!&* welcom 2 TEM SHOP!!!!/%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* Hoi!!!!!^1!&* welcom back 2 TEM SHOP!!!!/%%"
    }
}
if (room == room_tundra_qcshop_room)
{
    if (chattedwith == 0 && instance_exists(OBJ_WRITER) == 0)
    {
        chattedwith += 1
        global.msg[0] = "* Welcome^1, traveler^1.&* Please^1, check out what&  I've got to sell./%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* Now that's a familiar face^1.&* Want to stock&  up on snacks^1, kid?/%%"
        if (scr_murderlv() >= 7)
        {
            global.msg[0] = "* (There's a note here...)/"
            global.msg[1] = "* Please don't hurt my family./%%"
        }
    }
}
if (room == room_fire_walkandbranch2)
{
    global.msg[0] = "\\W* I'm ^1 \\YCoolbalt\\W/"
    global.msg[1] = "* You know  who I am./%%"
    if (global.flag[7] == 1)
        global.msg[1] = "* The surface  will know&  who I am./%%"
}
if (room == room_fire_newsreport)
{
    global.msg[0] = "* Hmph^1.&* I was supposed to be&  Mettaton's reporter^1, but.../"
    global.msg[1] = "* He ended up changing&  the schedule..^1./"
    global.msg[2] = "* ...and cast YOU instead./"
    global.msg[3] = "* Hmph^1.&* I guess that's just how&  the acting industry works./%%"
    if (talkedto > 0)
        global.msg[0] = "* Hmph^1.&* Are you stealing standing&  around from me too?/%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* Hmph^1.&* With the barrier open^1, I'll&  finally be able to be myself./"
        global.msg[1] = "* Nobody can lay you off&  in your personal life./%%"
    }
}
if (room == room_ruins7)
{
    global.msg[0] = "* I'm sorry..^1.&* I didn't mean to run&  away like that.../"
    global.msg[1] = "* I didn't have&  a choice.../%%"
    if (global.flag[7] == 1)
        global.flag[0] = "* On the surface..^1.&* I'll have much more room&  to make my own choices./%%"
}
if (room == room_ruins11)
    global.msg[0] = "* I hate rock puzzles...&* I can never choose&  which to push.../%%"
if (global.flag[7] == 1)
    global.flag[0] = "* I'm glad there aren't any&  rock puzzles on the surface..^3.&* (I hope...)/%%"
if (room == room_ruins9)
{
    global.msg[0] = "* The RUINS are such&  a drag sometimes!/"
    global.msg[1] = "* I can't even do&  staring contests&  because I always win./"
    global.msg[2] = "* Hmph!/%%"
    if (global.flag[7] == 1)
        global.flag[0] = "* Once I make it to the surface^1,&  I'll show that OTHER Loox&  who's boss!/%%"
}
if (room == room_water_prewaterfall)
{
    global.msg[0] = "* Are you gonna take&  an umbrella^1?&* Go ahead^1! I don't need one./%%"
    if (global.flag[85] == 1)
        global.msg[0] = "* Now we're both protected&  from the rain!/%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* I can't wait to see&  the rain on the surface^1./"
        global.msg[1] = "* Hmmm..^1.&* Do humans wear raincoats...?/%%"
        if (global.flag[85] == 1)
            global.msg[0] = "* If you take too long&  walking with that umbrella^1,&  everyone will have left!/%%"
    }
}
if (room == room_ruins17)
{
    global.msg[0] = "* Look out when exploring&  the sewers^1, okay?/"
    global.msg[1] = "\\W* I've heard the&  \\YTroubleboys\\W&  patrol down there./"
    global.msg[2] = "* They'll mug you^1,&  big time!/%%"
    if (global.flag[39] == 1)
    {
        global.msg[0] = "* Look out when exploring&  the..^1.&* What?/"
        global.msg[1] = "* You took care of&  the Troubleboys?/"
        global.msg[2] = "* Well^2. Well^2!&* Good job./%%"
    }
    if (global.flag[7] == 1)
        global.msg[0] = "* Now that the barrier is&  broken^1, I guess there's no&  use for sewers anymore.../%%"
}
if (room == room_ruins_sewer_pretrouble)
{
    if (global.flag[39] == 1)
    {
        global.msg[0] = "\\K0* The Troubleboys hav^1e (\\K1sniffle^1\\K0)&  reverted their ways.../"
        global.msg[1] = "\\K0* They even returned the&  things the^1y (\\K1sniffle^1\\K0)&  stole from everyone.../"
        global.msg[2] = "* Oh no..^1.&* Now I have to go&  buy my spider cider.../%%"
        if (global.flag[129] != 0)
        {
            global.msg[0] = "\\K0* The Troubleboys seem to&  hav^1e (\\K1sniffle^1\\K0) disappeared.../"
            global.msg[1] = "* There's no more trouble&  making^1, but... nobody&  got their things back.../%%"
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = "\\K0* I could probaly jus^1t& (\\K1sniffle^1\\K0) use this GOLD to&  purchase a bus ticket.../"
            global.msg[1] = "* Wait^1, is GOLD even a&  currency on the surface...?/%%"
        }
    }
    else
    {
        global.msg[0] = "\\K0\\W* Oh no..^1.&* (\\K1sniffle\\K0) The \\YTroubleboys\\W just&  stole all of my GOLD.../"
        if (global.flag[7] == 1)
            global.msg[0] = "\\W* I never got my&  GOLD back from the&  \\YTroubleboys.../"
        global.msg[1] = "* How will I afford&  anything now...?/%%"
    }
}
if (room == room_tundra_teenhangoutroom)
{
    if (sprite_index == spr_siskid)
    {
        global.msg[0] = "* Yo^1! It's the new kid!/"
        global.msg[1] = "* Welcome to the Rebellion./%%"
        global.flag[230] = 1
        if (global.flag[230] == 1)
            global.msg[1] = "* Are you doing your&  part in the&  Rebellion's cause?/%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* Huh^1? What are we&  rebelling against?/"
            global.msg[1] = "* Well..^1. Nothing^1, really^1.&* We just bully the&  Nice Cream man^1, Haha!/%%"
        }
        if (global.flag[68] > 0)
        {
            global.msg[0] = "* Yo^1, new kid^1.&* I've got some good&  news for 'ya!/"
            global.msg[1] = "* We've achieved victory&  against the&  Nice Cream man!/"
            global.msg[2] = "* My little sib' says&  he's moved to Waterfall^1,&  but I'm skeptical./"
            global.msg[3] = "* You thinking of checking&  it out^1? Make sure my sib'&  stays out of trouble^1, ok?/%%"
            if (talkedto > 0)
                global.msg[0] = "* You thinking of checking&  it out^1? Make sure my sib'&  stays out of trouble^1, ok?/%%"
        }
        if (global.flag[352] == 1)
        {
            if (global.flag[98] == 0)
            {
                if (talkedto >= 0)
                {
                    global.msg[0] = "* Yo.../"
                    global.msg[1] = "* What do YOU want^1, kid^1?&* I don't wanna talk to&  a coward like you./%%"
                    global.flag[230] = 1
                }
            }
            if (global.flag[98] == 1)
            {
                if (talkedto >= 0)
                {
                    global.msg[0] = "* Yo.../"
                    if (global.flag[230] == 1)
                    {
                        global.msg[1] = "* I wanted to thank you^1.&* For keeping my little&  sib' safe like I asked./"
                        global.msg[2] = "* It means a lot^1, new kid!&* I think I'll like&  having you around^1, haha!/%%"
                        global.flag[230] = 1
                    }
                    else
                    {
                        global.msg[1] = "* I wanted to thank you^1.&* I heard how you&  kept my sib' safe./"
                        global.msg[2] = "* It means a lot^1, new kid!&* I'm starting to like&  having you around^1, haha!/%%"
                    }
                }
            }
            if (global.flag[98] == 2)
            {
                if (talkedto >= 0)
                {
                    global.msg[0] = "* Yo.../"
                    global.msg[1] = "* What do YOU want^1, kid^1?&* Talking to you is&  just wasting my time./%%"
                    global.flag[230] = 1
                }
            }
        }
        if (global.flag[7] == 1)
        {
            if (global.flag[98] == 1)
            {
                if (talkedto >= 0)
                {
                    global.msg[0] = "* I heard the adults&  talking about some&  barrier opening up./"
                    global.msg[1] = "* Barrier..^1?&* What was that...?/"
                    global.msg[2] = "* Oh yeah^1!&* I remember learning&  about that in school./"
                    global.msg[3] = "* Sheesh... I forgot&  about the thing keeping us&  trapped down here.../%%"
                }
            }
            else if (talkedto >= 0)
            {
                if (global.flag[230] == 1)
                {
                    global.msg[0] = "* Why do you keep&  coming back here, kid?/"
                    global.msg[1] = "* I would rather&  you just stay home./%%"
                }
                else
                {
                    global.msg[0] = "* Who let YOU in^1, kid?/"
                    global.msg[1] = "* Go home^1.&* You're not welcome here./%%"
                }
            }
        }
    }
    if (sprite_index == bg_labtv)
    {
        global.msg[0] = "* (It's a broken television.)/"
        global.msg[1] = "* (The only thing displaying&  on this screen is&  your reflection.)/%%"
    }
    if (sprite_index == spr_coolslimeteen)
    {
        global.msg[0] = "* (Cool slime sounds.)/%%"
        if (talkedto > 0)
            global.msg[0] = "* (More cool slime sounds.)/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* (Now that the barrier is&  broken^1, I can make even&  MORE cool slime sounds.)/%%"
            if (talkedto > 0)
                global.msg[0] = "* (What's with the weird face?)&* (I can talk just fine^1,&  you know^2. Rude.)/%%"
        }
    }
    if (sprite_index == spr_npc_nubert)
    {
        global.msg[0] = "* Nubert's moving up&  in the world./"
        global.msg[1] = "* Literally and figuratively./%%"
    }
}
if (room == room_tundra_inn_2f_real)
{
    global.msg[0] = "* What a great rest^1!&* Now^1, if only those&  two wouldn't snore.../%%"
    if (x > 300)
        global.msg[0] = "\\K0* I slept really well!!^1!&* Even though my&  friends kept \\K1SNORING!\\K0/%%"
    if (x > 330)
    {
        global.msg[0] = "* Nothing like a good&  night's sleep./"
        global.msg[1] = "* The other two couldn't&  even keep me up!/%%"
    }
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* What a great rest^1!&* Now^1, if only I can&  sleep on the surface.../%%"
        if (x > 300)
            global.msg[0] = "\\K0* I slept really well!!^1!&* On the surface^1, I can sleep&  without my friends \\K1SNORING!\\K0/%%"
        if (x > 330)
        {
            global.msg[0] = "* Nothing like a good&  night's sleep./"
            global.msg[1] = "* The barrier breaking&  didn't even wake me up!/%%"
        }
    }
}
if (room == room_ruins15E)
{
    global.msg[0] = "* What are you looking&  at^1, huh^1? Me?/"
    global.msg[1] = "* I'll have you know^1,&  I'm #1 in the&  HOME staring contest./"
    global.msg[2] = "* Three years running^1.&* A-thank you./%%"
    if (global.flag[7] == 1)
    {
        global.msg[1] = "* I'll have you know^1,&  I plan to be the #1&  at a WORLDWIDE level!/"
        global.msg[2] = "* And nobody can stop me./%%"
    }
}
if (room == room_fire_core_mettmeetingplace)
{
    global.msg[0] = "* Just a useless pile of junk./%%"
    if (talkedto > 0)
        global.msg[0] = "* Time to get a move on./%%"
}
if (room == room_fire_rpuzzle)
{
    global.msg[0] = "* You know what I HATE^1?&* That's right^1, Bepis./"
    global.msg[1] = "* The taste..^1.&* The smell..^1.&* The TEXTURE..^1./"
    global.msg[2] = "* Disgusting./%%"
    if (talkedto > 0)
        global.msg[0] = "* Hey....^3.&* You're drooling./%%"
    if (global.flag[7] == 1)
    {
        if (talkedto >= 0)
            global.msg[0] = "* I hope there's no Bepis&  on the surface./%%"
    }
}
if (room == room_tundra9)
{
    global.msg[0] = "* Thanks for helping me&  realize my true inner beauty./"
    global.msg[1] = "* It's time for THIS IceCube&  to get into showbiz^1, darling!/%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* Now that the barrier has&  been destroyed^1, I can make my&  world-wide debut!/"
        global.msg[1] = "* The whole world will finally&  see how COOL I am!/"
        global.msg[2] = "* And it's all thanks to you^1,&  beautiful^1. Keep shining bright!/%%"
    }
}
if (room == room_tundra_spaghetti)
{
    global.msg[0] = "\\W* Can't talk right now^1, it's&  \\RGAME \\YTIME\\W!!!!/%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* The barrier is open!?!^1?&* One more level^1, then&  I'll go, okay?/%%"
}
if (room == room_tundra_lake)
{
    global.msg[0] = "* Huh^1? Don't mind me^1.&* I'm waiting for the ice&  to melt./"
    global.msg[1] = "* Can't go fishing on a&  frozen pond^1, haha./%%"
    if (global.plot > 160)
    {
        global.msg[0] = "* Huh^1? Don't mind me^1.&* I'm ice fishing./"
        global.msg[1] = "* I guess you CAN go fishing&  on a frozen pond^1, haha./%%"
    }
}
if (room == room_tundra_town)
{
    if (x > 1700)
    {
        global.msg[0] = "* Huh^1? Don't mind me^1.&* I just got back&  from my fishing trip./"
        global.msg[1] = "* As it turns out..^1.&* You can't fish on&  a frozen pond^1, haha./%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Huh^1? Don't mind me^1.&* I'm just planning my&  future surface fishing trips./"
            global.msg[1] = "* It's a fisherman's life&  for me^1, haha./%%"
        }
    }
    else
    {
        global.flag[215] = 1
        global.msg[0] = "* Hey^1, you^1!&* I haven't seen you around&  here before.../"
        global.msg[1] = "* You probably don't even&  know about the recent&  town renovations!/"
        global.msg[2] = "* I COULD tell you&  about what exactly&  was changed^1, but.../"
        global.msg[3] = "\\K0* I'd prefer to keep&  my super secrets as&  \\K1MY\\K0 super secrets!/"
        global.msg[4] = "* Hah^1, that's right!&* Toil in your failure^1,&  forever and ever.../"
        global.msg[5] = "* Unable to ever truly&  comprehend my blessing&  of knowledge!/"
        global.msg[6] = "* Heh^1!&* Sometimes I can't believe&  how cool I am./%%"
        if (talkedto > 0)
            global.msg[0] = "* Leave me be^1, human^1!&* I'm busy training&  in my mind palace!/%%"
        if (global.flag[7] == 1)
        {
            global.faceemotion = 0
            global.msg[0] = "* Did you hear^1?&* I bet you didn't^1!&* The barrier's open!/"
            global.msg[1] = "\\K0* And I \\K1STILL\\K0 didn't&  tell you about&  my secret info!/"
            global.msg[2] = "* ... who cares^1?&* I'll see you in surface&  school^1, Frisk^1!/"
            global.msg[3] = "* Then^1, I'll show you&  just how cool I can&  really be^1! Heh!/%%"
            if (talkedto > 0)
            {
                global.msg[0] = "* It's too late^1, I've&  already decided that we&  are academic rivals./"
                global.msg[1] = "* I'm smarter than any&  human can ever be^1!&* Especially you!/"
                global.msg[2] = "* Though..^1.&* Maybe one day we'll&  grow closer as rivals.../"
                global.msg[3] = "* Maybe even..^2.&  ... becoming friends...?/"
                global.msg[4] = "* NOT^1!&* Not in this universe^1,&  not in any other^1! Hah!/%%"
            }
        }
    }
}
if (room == room_asrielroom_final)
{
    if (x <= (-10 + (room_width / 2)))
    {
        if (global.flag[114] == 0)
            global.msc = 268
        else
            global.msc = 272
    }
    if (x >= (-10 + (room_width / 2)))
    {
        if (global.flag[115] == 0)
            global.msc = 270
        else
            global.msc = 272
    }
}
if (room == room_fire_machinepit)
{
    global.msg[0] = "* Because of my long legs^1,&  I can't complete the puzzle&  up above./"
    global.msg[1] = "* I keep falling down.../%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* The barrier is opened..^1?&* Wow^1, that's great!/"
        global.msg[1] = "* ..^1.&* ..^1.&* ..^1./"
        global.msg[2] = "* ... Could you help me out^1?/%%"
    }
}
if (room == room_fire_lavalake)
{
    if (sprite_index == spr_introlast)
    {
        if (global.flag[117] == 0)
            global.msc = 3039
        else
        {
            global.msc = 0
            instance_destroy()
            return;
        }
    }
    if (x < 520)
    {
        global.msg[0] = "* The lava is just right for&  us^1, but I'm not sure&  you'd be able to join in./"
        global.msg[1] = "* You might get a little..^1.&* Burnt.../%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* Hmm..^1.&* I think I'll spend a&  little bit more time here.../%%"
    }
    if (x > 520)
    {
        global.msg[0] = "* Aaah^1, how I love the warm lava^1.&* It feels nice on my skin./"
        global.msg[1] = "* Watch out^1, I might spill&  some on you^1!&* Be careful^1, kid./%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* I'll finally be able to&  fulfill my dream of bathing&  in a volcano!/%%"
    }
    if (sprite_index == spr_bigstomper)
    {
        global.msg[0] = "* I'm thinking of giving&  this puzzle another try.../"
        global.msg[1] = "* Wish me luck!/%%"
        if (talkedto > 0)
            global.msg[0] = "* Huh^1?&* Am I blocking your way^1?&* Sorry about that./%%"
    }
}
if (room == room_water15)
{
    global.msg[0] = "* I love staring into&  the abyss.&* It really helps me relax./"
    global.msg[1] = "* Especially around Echo Flowers.&* Nobody will know&  it's you speaking^1, haha!/%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* I'll have to bring my&  own Echo Flower to the&  surface^1, huh?/"
        global.msg[1] = "* It'll be good to give&  it some well deserved&  fresh air^1, haha!/%%"
    }
}
if (room == room_water12)
{
    if (x > 300)
    {
        global.msg[0] = "\\K0* (\\K1sniffle\\K0) I thought by coming&  to Waterfall^1, I'd cheer&  up (\\K1sniffle\\K0)./"
        global.msg[1] = "\\K0* But the water just..^1. (\\K1sniffle^1\\K0)&  made me sadder./%%"
        if (global.flag[7] == 1)
            global.msg[0] = "* I hope the surface's stars&  will cheer me up.&/%%"
    }
    else
    {
        global.msg[0] = "* I wore this coat to&  keep me dry./"
        global.msg[1] = "* I'm not a fan of&  being wet^1, you see./"
        global.msg[2] = "* How ironic^1, I'm a&  fish that hates being&  wet.../%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Hopefully there's no&  rain on the surface./"
            global.msg[1] = "* Finally^1, I could take&  off this coat.../%%"
        }
    }
}
if (room == room_tundra_snowpuzz)
{
    global.msg[0] = "* Phew! I made it on time^1,&  not a minute late!/"
    global.msg[1] = "* I wouldn't want to be late on&  the first day of my new&  position!/"
    global.msg[2] = "* Come to think of it^1, why'd they&  shift around the sentry&  rotation^1, anyway?/%%"
    if (talkedto > 0)
    {
        global.msg[0] = "* I saw some of the K-9 unit&  around here^1. They're so cute^1,&  I can't help but pet them!/"
        global.msg[1] = "* I didn't ask^1, I hope it was&  alright^1! Hah^1aha..^1. h^2aha.../%%"
    }
    if (global.armor == 48 && global.flag[7] == 0)
    {
        global.msg[0] = "* Hey^1, that's a pretty cool hat^1!&* It looks kinda..^1. familiar..^2./"
        global.msg[1] = "* Where'd you get that from^1?&* Someone I..^1. used to know wore&  one like that./"
        global.msg[2] = "* Sorry^1, I'm sure it's just a&  coincidence./%%"
    }
    if (global.flag[53] == 1 || global.flag[54] == 1 || global.flag[52] == 1 || global.flag[55] == 1)
    {
        if (talkedto > 0)
        {
            global.msg[0] = "* I saw some of the K-9 unit&  around here^1. They're so cute^1,&  I can't help but pet them!/"
            global.msg[1] = "* I haven't met all of them^1,&  though^1.&* I hope I see them soon.../%%"
        }
    }
    if (global.flag[53] == 1 && global.flag[54] == 1 && global.flag[52] == 1 && global.flag[55] == 1)
    {
        if (talkedto > 0)
        {
            global.msg[0] = "* I saw some of the K-9 unit&  around here^1. I can't seem to&  find them anymore^1, though./"
            global.msg[1] = "* I hope my petting&  didn't scare them off.../%%"
        }
    }
    if (scr_murderlv() >= 7)
    {
        global.msg[0] = "* It's okay^1, Mart^1.&* Just because there's nobody&  in town doesn't mean.../"
        global.msg[1] = "* Oh^1!&* Hi!/"
        global.msg[2] = "* Looks like I had nothing&  to worry about after all./%%"
        if (talkedto > 0)
        {
            global.msg[0] = "* I'll guard this station&  like nobody's guarded&  a station before!/"
            global.msg[1] = "* If I wait long enough^1,&  maybe everyone will&  come back.../%%"
        }
        if (scr_murderlv() >= 10)
        {
            global.msg[0] = "* It's been a while.../"
            global.msg[1] = "* Really^1, where is everyone...?/%%"
        }
        if (scr_murderlv() >= 13)
        {
            global.msg[0] = "* (A note.)/"
            global.msg[1] = "* Hi^1!&* Martlet here./"
            global.msg[2] = "* If you're that one&  stranger that I've&  seen walking around.../"
            global.msg[3] = "* I got the evacuation message^1!&* Yeah, some pretty scary&  stuff is going down./"
            global.msg[4] = "* I'm not sure where&  I'm going to^1, but I&  hope I meet you there./"
            global.msg[5] = "* (That's all she wrote.)/%%"
            if (talkedto > 0)
                global.msg[0] = "* (That's all she wrote.)/%%"
        }
    }
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* The Barrier opened up...^1?&  You mean^1, the Barrier&  to the outside world?/"
        global.msg[1] = "* I guess I'm out of a job^1, huh^1?&* No problem^1, I'm sure there are&  plenty of jobs on the surface./%%"
    }
}
if (room == room_water_candy)
    global.msc = 512
if (room == room_fire_core4)
{
    global.msg[0] = "* 1'M 98-B0T^1! 1'M H3R3&  70 H3LP Y0U!/"
    global.msg[1] = "* H0W C4N I HELP YOU&  TO-%"
    global.msg[2] = "* 1'M 98-B0T^1! 1'M H3R3&  70 H3LP Y0U!/"
    global.msg[3] = "* H0W C4N I HELP YOU&  TO-%"
    global.msg[4] = "* 1'M 98-B0T^1! 1'M H3R3&  T0 H3LP Y0U!/"
    global.msg[5] = "* H0W C4N I HELP YOU&  TO-%"
    global.msg[6] = "* 1'M 98-B0T^1! 1'M H3R3&  70 H3LP Y0U!/"
    global.msg[7] = "* WHAT C4N I H3LP-/"
    global.msg[8] = "* R3P3A71NG MYS3LF^1?&  TH47'S UBSURD./%%"
    if (talkedto > 0)
        global.msg[0] = "* R3P3AT1NG MYS3LF^1?&  7H4T'S UBSURD./%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* 1 CAN'7 W417 70 H3LP&  PL3N7Y 0F HUM4NS 0N&  7H3 SURF4C3!!!/%%"
}
if (room == room_water_friendlyhub)
{
    global.msg[0] = "* Huh^1? Me^1? No^1, I'm just visiting.&* Nobody really lives here&  anymore./"
    global.msg[1] = "* Well^1, there's Undyne.&* The ghost scares everyone else&  away./"
    global.msg[2] = "* I don't think they try to^1,&  though./%%"
    if (global.flag[7] == 1)
    {
        global.msg[0] = "* Huh^1? Me^1? No^1, I'm just visiting.&* Nobody really lives here&  anymore./"
        global.msg[1] = "* Now that the barrier is broken^1,&  everybody's going to move./"
        global.msg[2] = "* The underground will go&  empty after all^1, huh?/%%"
    }
}
if (room == room_kitchen_final)
{
    global.msg[0] = scr_gettext("obj_npc_room_271")
    global.msg[1] = scr_gettext("obj_npc_room_272")
    if (global.debug == true || global.flag[5] == 69)
        global.msg[1] = "* (That's a bit sussy.)/%%"
}
if (room == room_asgoreroom)
    global.msg[0] = scr_gettext("obj_npc_room_277")
if (room == room_water2)
{
    global.msg[0] = scr_gettext("obj_npc_room_282")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_283")
    if (obj_echoflower.v == 1)
        global.msg[0] = scr_gettext("obj_npc_room_284")
}
if (room == room_water5A)
    global.msc = 246
if (room == room_water_tutu)
    global.msc = 248
if (room == room_water_savepoint1)
{
    global.msg[0] = scr_gettext("obj_npc_room_291")
    global.msg[1] = scr_gettext("obj_npc_room_292")
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_npc_room_295")
}
if (room == room_water11)
{
    global.msg[0] = scr_gettext("obj_npc_room_300")
    global.msg[1] = scr_gettext("obj_npc_room_301")
    global.msg[2] = scr_gettext("obj_npc_room_302")
    global.msg[3] = scr_gettext("obj_npc_room_303")
    global.msg[4] = scr_gettext("obj_npc_room_304")
    global.msg[5] = scr_gettext("obj_npc_room_305")
    if (global.flag[85] == 1)
        global.msg[0] = scr_gettext("obj_npc_room_308")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_313")
        global.msg[1] = scr_gettext("obj_npc_room_314")
    }
    if (global.flag[350] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_319")
        global.msg[1] = scr_gettext("obj_npc_room_320")
    }
}
if (room == room_water_nicecream)
    global.msc = 250
if (room == room_water_shoe)
    global.msc = 252
if (room == room_fire_hh_entrance)
{
    if (sprite_index == spr_puppydough_icecream_item)
        global.msc = 3010
    else
    {
        global.msc = 0
        global.msg[0] = "* Oh^1, hey there^1!&* I hope my sis didn't&  give you too much trouble./"
        global.msg[1] = "* Since you've fought her^1,&  she's been in a&  slightly better mood./"
        global.msg[2] = "* She's a bit disappointed&  that she didn't get&  the reward money^1, though.../%%"
        if (global.flag[59] >= 9000)
        {
            global.msg[1] = "* Since you donated to her^1,&  she's been in a&  very good mood!/"
            global.msg[2] = "* You were so generous^1, she&  doesn't even need&  that reward money!/%%"
        }
        if (talkedto == 1)
        {
            global.msg[0] = "* Oh^1, are you heading&  off to the MTT Resort^1?/"
            global.msg[1] = "* Well^1, you're going in the&  right direction^1, then!/"
            global.msg[2] = "* If you go through&  Hotland Heights^1, you won't&  be able to miss it./"
            global.msg[3] = "* I believe you can&  get there through that&  elevator over there./"
            global.msg[4] = "* Well^1, good luck^1, then!/%%"
        }
        if (talkedto > 1)
            global.msg[0] = "* I wonder if they've&  finished the construciton&  going on in Hotterland.../%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* My sis got enough&  money to save the&  spiders in the RUINS!/"
            global.msg[1] = "* She was even able&  to convince the king&  to open up the river.../"
            global.msg[2] = "* Apparently^1, it&  cost quite a lot to&  get the path un-blocked./"
            global.msg[3] = "* She wasn't able to&  afford much besides that&  rescue mission./"
            global.msg[4] = "* I was looking forward&  to playing some spider&  baseball^1, too.../%%"
            if (global.flag[59] >= 1)
                global.msg[3] = "* She's recently got&  SOME donations^1, so&  it's not all bad./%%"
            if (global.flag[59] >= 13)
                global.msg[3] = "* She recently got a larger&  than usual donation^1, so&  it's not all bad./%%"
            if (global.flag[59] >= 25)
                global.msg[3] = "* She's recently got quite&  a few donations^1, so&  things are looking up!/%%"
            if (global.flag[59] >= 40)
                global.msg[3] = "* She's recently gotten some&  generous donations^1, so&  things are looking up!/%%"
            if (global.flag[59] >= 70)
                global.msg[3] = "* She's recently got TONS&  of large donations^1, so&  things are looking up!/%%"
            if (global.flag[59] >= 100)
            {
                global.msg[3] = "* She got enough donations&  to afford a whole&  new bakery!/"
                global.msg[4] = "* Whoever it was who&  donated so much^1, she&  really appreciates it!/%%"
            }
            if (global.flag[59] >= 9000)
            {
                global.msg[3] = "* I can't believe this^1,&  she's got enough to.../"
                global.msg[4] = "* Well^1, perhaps I'll&  let her tell you&  herself^1, yeah?/%%"
            }
        }
        if (global.flag[397] == 1)
        {
            global.msg[0] = "* Say..^1.&* Do you know what&  happened to my sister?/"
            global.msg[1] = "* Ever since she fought&  you^1, she went off&  somewhere.../"
            global.msg[2] = "* You think she took a&  spider vacation&  without me...?/%%"
        }
    }
}
if (sprite_index == spr_signsock)
{
    global.msc = 0
    global.typer = 5
    global.facechoice = 0
    global.faceemotion = 0
    global.msg[0] = scr_gettext("obj_npc_room_334")
    global.msg[1] = scr_gettext("obj_npc_room_335")
    global.msg[2] = scr_gettext("obj_npc_room_336")
    global.msg[3] = scr_gettext("obj_npc_room_337")
    global.msg[4] = scr_gettext("obj_npc_room_338")
    global.msg[5] = scr_gettext("obj_npc_room_339")
    global.msg[6] = scr_gettext("obj_npc_room_340")
    global.msg[7] = scr_gettext("obj_npc_room_341")
    global.msg[8] = scr_gettext("obj_npc_room_342")
    global.msg[9] = scr_gettext("obj_npc_room_343")
    global.msg[10] = scr_gettext("obj_npc_room_344")
    global.msg[11] = scr_gettext("obj_npc_room_345")
    global.msg[12] = scr_gettext("obj_npc_room_346")
    global.msg[13] = scr_gettext("obj_npc_room_347")
    global.msg[14] = scr_gettext("obj_npc_room_348")
    global.msg[15] = scr_gettext("obj_npc_room_349")
    global.msg[16] = scr_gettext("obj_npc_room_350")
    global.msg[17] = scr_gettext("obj_npc_room_351")
    global.msg[18] = scr_gettext("obj_npc_room_352")
    global.msg[19] = scr_gettext("obj_npc_room_353")
    global.msg[20] = scr_gettext("obj_npc_room_354")
    global.msg[21] = scr_gettext("obj_npc_room_355")
    global.msg[22] = scr_gettext("obj_npc_room_356")
}
if (room == room_water_mushroom)
{
    if (x > 100)
        global.msc = 580
    else
    {
        global.msg[0] = "* You're not supposed to&  be reading this^1, haha!/%%"
        if (global.flag[7] == 0 && global.armor != 12)
        {
            if (talkedto == 0)
                global.msc = 3014
            else
            {
                global.msg[0] = "* Is there something else&  that you need?/"
                global.msg[1] = "* Or are you just taking&  your time walking around?/"
                global.msg[2] = "* Be careful around those rails^1.&* I used to ride them&  back in the day.../"
                global.msg[3] = "* Not anymore^1, they're too&  dangerous now that they're&  all broken and everything./%%"
            }
        }
        else if (global.armor == 12)
        {
            global.msg[0] = "* Hm^1? Oh^1, he%"
            global.msg[1] = "* .../"
            global.msg[2] = "* Oh^1, sorry^1!&* Just that ribbon..^1.&* It reminds me of.../"
            global.msg[3] = "* N-nevermind!/%%"
            if (talkedto > 0)
            {
                global.msg[0] = "* Is there something else&  that you need?/"
                global.msg[1] = "* Or are you just taking&  your time walking around?/"
                global.msg[2] = "* Be careful around those rails^1.&* I used to ride them&  back in the day.../"
                global.msg[3] = "* Not anymore^1, they're too&  dangerous now that they're&  all broken and everything./%%"
            }
        }
        else if (global.flag[7] == 1)
        {
            global.msg[0] = "* Well then^1, I guess you&  really WERE a human^1, huh?/"
            global.msg[1] = "* Though..^1.&* I didn't even ask&  for your name.../"
            global.msg[2] = "* .../"
            global.msg[3] = "* Wait a second^1, did I...^1?&* For some reason^1, I know&  your name is Frisk.../"
            global.msg[4] = "* Is that right^1?&* It is^1?&* That's a nice name^1, Frisk./"
            global.msg[5] = "* Did you hear^1?&* We finally get to&  leave the underground!/"
            global.msg[6] = "* Such an exciting day./%%"
        }
    }
}
if (room == room_water_undyneyard)
{
    global.typer = 130
    global.msg[0] = scr_gettext("obj_npc_room_368")
    global.msg[1] = scr_gettext("obj_npc_room_369")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_372")
        global.msg[1] = scr_gettext("obj_npc_room_373")
    }
    if (scr_murderlv() >= 9)
    {
        global.msg[0] = scr_gettext("obj_npc_room_377")
        global.msg[1] = scr_gettext("obj_npc_room_378")
    }
}
if (room == room_water_farm)
{
    global.msg[0] = scr_gettext("obj_npc_room_384")
    global.msg[1] = scr_gettext("obj_npc_room_385")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_388")
        global.msg[1] = scr_gettext("obj_npc_room_389")
    }
}
if (room == room_fire8)
{
    global.msg[0] = scr_gettext("obj_npc_room_406")
    global.msg[1] = scr_gettext("obj_npc_room_407")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_409")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_417")
        global.msg[1] = scr_gettext("obj_npc_room_418")
    }
    if (global.flag[425] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_423")
        global.msg[1] = scr_gettext("obj_npc_room_424")
    }
    if (id == instance_find(object_index, 1))
    {
        global.msg[0] = scr_gettext("obj_npc_room_430")
        global.msg[1] = scr_gettext("obj_npc_room_431")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_npc_room_434")
        if (global.flag[7] == 1)
            global.msg[0] = scr_gettext("obj_npc_room_436")
        if (global.flag[425] == 1)
            global.msg[0] = scr_gettext("obj_npc_room_440")
    }
}
if (room == room_tundra_grillby)
{
    if (x > 230)
    {
        global.msg[0] = "* Hey^1, don't I recognize&  you from someplace?/"
        global.msg[1] = "* Oh yeah^1, I think&  I saw you&  over in Hotland!/"
        global.msg[2] = "* Since school is&  out^1, and since she's&  working today.../"
        global.msg[3] = "* I decided to hang&  out here^1, and&  keep her company./%%"
        if (talkedto > 0)
            global.msg[0] = "* Hanging out here&  with her...&* Feels nice./%%"
    }
    else
    {
        global.msg[0] = "* Sorry^1, I can't&  serve you much./"
        global.msg[1] = "* We have a strict&  \"no water\" policy&  as well.../"
        global.msg[2] = "* Feel free to keep&  up your loitering&  skills^1, though./%%"
        if (talkedto > 0)
            global.msg[0] = "* Working isn't so bad^1.&* Especially since I've&  got her here./%%"
    }
}
if (room == room_fire9)
{
    global.msg[0] = scr_gettext("obj_npc_room_451")
    global.msg[1] = scr_gettext("obj_npc_room_452")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_454")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_458")
        global.msg[1] = scr_gettext("obj_npc_room_459")
    }
    if (global.flag[425] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_464")
        global.msg[1] = scr_gettext("obj_npc_room_465")
    }
    if (id == instance_find(object_index, 1))
    {
        global.msg[0] = scr_gettext("obj_npc_room_470")
        global.msg[1] = scr_gettext("obj_npc_room_471")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_npc_room_474")
        if (global.flag[7] == 1)
        {
            global.msg[0] = scr_gettext("obj_npc_room_478")
            global.msg[1] = scr_gettext("obj_npc_room_479")
        }
        if (global.flag[425] == 1)
        {
            global.msg[0] = scr_gettext("obj_npc_room_484")
            global.msg[1] = scr_gettext("obj_npc_room_485")
        }
    }
}
if (room == room_fire6A)
    global.msc = 260
if (room == room_fire_apron)
{
    if (x == 200)
    {
        global.msc = 0
        global.msg[0] = "* Hey^1, don't tell anyone&  I told you this^1, but.../"
        global.msg[1] = "* There's a path somewhere in&  this room made out&  of magical glass./"
        global.msg[2] = "* You can't see it until&  you're walking right over it^1.&* Go ahead^1, try it out!/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Now we can share the&  gift of magical glass&  with the humans!/"
            global.msg[1] = "* It's only the most&  revolutionary invention&  since dimensional boxes!/%%"
        }
    }
    else
        global.msc = 262
}
if (room == room_fire_walkandbranch)
{
    if (x > 300)
    {
        global.msg[0] = "* I saw a sign saying art club&  meets here at some time^1,&  but I can't remember when!/"
        global.msg[1] = "* I can't even remember&  where I saw it.../"
        global.msg[2] = "* What rotten memory^1, huh?/%%"
        if (talkedto > 0)
            global.msg[0] = "* Hmmmm..^1.&* Something about a..^1.&  similar place...?/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Aww, did I miss art club!^1?&* I just can't seem to catch&  a break^1,&  can I?/%%"
            if (talkedto > 0)
                global.msg[0] = "* I'm gonna start my own&  art club on the surface./%%"
            if (global.flag[281] == 2)
            {
                global.msg[0] = "* So THIS is the art club leader^1?&* Can't say I'm very impressed^1,&  but he's great at art./%%"
                if (talkedto > 0)
                    global.msg[0] = "* I guess I'll join their&  art club..^1. I can learn&  a thing or two.../%%"
            }
        }
    }
    if (x < 300)
    {
        if (talkedto == 0)
        {
            global.msg[0] = scr_gettext("obj_npc_room_sosorry_0")
            global.msg[1] = scr_gettext("obj_npc_room_sosorry_1")
            global.msg[2] = scr_gettext("obj_npc_room_sosorry_2")
            global.msg[3] = scr_gettext("obj_npc_room_sosorry_3")
            global.msg[4] = scr_gettext("obj_npc_room_sosorry_4")
            global.msg[5] = scr_gettext("obj_npc_room_sosorry_5")
        }
        else
        {
            global.msg[0] = scr_gettext("obj_npc_room_sosorry_6")
            global.msg[1] = scr_gettext("obj_npc_room_sosorry_7")
            global.msg[2] = scr_gettext("obj_npc_room_sosorry_8")
        }
    }
}
if (room == room_fire_mewmew2)
{
    global.msg[0] = scr_gettext("obj_npc_room_508")
    global.msg[1] = scr_gettext("obj_npc_room_509")
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_npc_room_513")
}
if (room == room_water_undynehouse)
{
    global.facechoice = 5
    global.faceemotion = 9
    global.typer = 37
    global.msc = 0
    global.msg[0] = scr_gettext("obj_npc_room_523")
    global.msg[1] = scr_gettext("obj_npc_room_524")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_527")
}
if (room == room_fire_spidershop)
{
    global.msg[0] = scr_gettext("obj_npc_room_534")
    global.msg[1] = scr_gettext("obj_npc_room_535")
    global.msg[2] = scr_gettext("obj_npc_room_536")
    global.msg[3] = scr_gettext("obj_npc_room_537")
    if (talkedto > 0)
        global.msg[0] = scr_gettext("obj_npc_room_540")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_545")
        global.msg[1] = scr_gettext("obj_npc_room_546")
    }
    if (global.flag[425] == 1)
        global.msg[0] = scr_gettext("obj_npc_room_551")
}
if (room == room_fire_core_treasureleft)
    global.msc = 264
if (room == room_fire_core_treasureright)
    global.msc = 266
if (room == room_castle_exit)
    global.msg[0] = scr_gettext("obj_npc_room_568")
if (room == room_fire_prelab)
{
    if (y < 70)
    {
        global.msg[0] = scr_gettext("obj_npc_room_580")
        if (talkedto > 0)
            global.msg[0] = scr_gettext("obj_npc_room_582")
    }
}
if (room == room_truelab_bedroom)
{
    if (y > 200)
        global.msg[0] = scr_gettext("obj_npc_room_588")
    else
    {
        global.msg[0] = "* (It's a strange mushroom doll.^1)&* (It seems to be leaking&  an oddly colored liquid...)/%%"
        if (global.flag[483] >= 2)
            global.msg[0] = "* (It's gone.)/%%"
    }
}
if (room == room_tundra_sansroom)
{
    global.msg[0] = scr_gettext("obj_npc_room_593")
    global.msg[1] = scr_gettext("obj_npc_room_594")
}
if (room == room_fire_hotelfront_1)
    global.msg[0] = scr_gettext("obj_npc_room_599")
if (room == room_tundra4)
    global.msg[0] = scr_gettext("obj_npc_room_604")
if (room == room_water_blookyard)
{
    global.typer = 27
    global.facechoice = 8
    if (global.flag[198] == 0)
    {
        global.msg[0] = scr_gettext("obj_npc_room_615")
        global.msg[1] = scr_gettext("obj_npc_room_616")
        global.msg[2] = scr_gettext("obj_npc_room_617")
        global.msg[3] = scr_gettext("obj_npc_room_618")
        global.msg[4] = scr_gettext("obj_npc_room_619")
        global.msg[5] = scr_gettext("obj_npc_room_620")
        global.msg[6] = scr_gettext("obj_npc_room_621")
        global.msg[7] = scr_gettext("obj_npc_room_622")
        global.msg[8] = scr_gettext("obj_npc_room_623")
        global.msg[9] = scr_gettext("obj_npc_room_624")
        global.msg[10] = scr_gettext("obj_npc_room_625")
        global.msg[11] = scr_gettext("obj_npc_room_626")
        global.msg[12] = scr_gettext("obj_npc_room_627")
    }
    if (global.flag[198] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_631")
        global.msg[1] = scr_gettext("obj_npc_room_632")
        global.msg[2] = scr_gettext("obj_npc_room_633")
        global.msg[3] = scr_gettext("obj_npc_room_634")
        global.msg[4] = scr_gettext("obj_npc_room_635")
        global.msg[5] = scr_gettext("obj_npc_room_636")
        global.msg[6] = scr_gettext("obj_npc_room_638")
        global.msg[7] = scr_gettext("obj_npc_room_640")
        global.msg[8] = scr_gettext("obj_npc_room_641")
        global.msg[9] = scr_gettext("obj_npc_room_642")
        global.msg[10] = scr_gettext("obj_npc_room_644")
        global.msg[11] = scr_gettext("obj_npc_room_645")
        global.msg[12] = scr_gettext("obj_npc_room_646")
    }
    if (global.flag[198] >= 2)
    {
        global.msg[0] = scr_gettext("obj_npc_room_651")
        global.msg[1] = scr_gettext("obj_npc_room_652")
        global.msg[2] = scr_gettext("obj_npc_room_653")
    }
    global.flag[198] += 1
}
if (room == room_ice_dog)
{
    global.msg[0] = scr_gettext("obj_npc_room_662")
    global.msg[1] = scr_gettext("obj_npc_room_663")
}
if (room == room_fire_hotelrestaurant)
{
    global.msg[0] = scr_gettext("obj_npc_room_669")
    global.msg[1] = scr_gettext("obj_npc_room_670")
    if (global.flag[7] == 1)
        global.msg[0] = scr_gettext("obj_npc_room_674")
    if (global.flag[425] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_679")
        global.msg[1] = scr_gettext("obj_npc_room_680")
        global.msg[2] = scr_gettext("obj_npc_room_681")
    }
    if (x < 120)
    {
        global.msg[0] = scr_gettext("obj_npc_room_686")
        global.msg[1] = scr_gettext("obj_npc_room_687")
        global.msg[2] = scr_gettext("obj_npc_room_688")
        if (global.flag[7] == 1)
        {
            global.msg[0] = scr_gettext("obj_npc_room_692")
            global.msg[1] = scr_gettext("obj_npc_room_693")
            global.msg[2] = scr_gettext("obj_npc_room_694")
        }
        if (global.flag[425] == 1)
        {
            global.msg[0] = scr_gettext("obj_npc_room_699")
            global.msg[1] = scr_gettext("obj_npc_room_700")
        }
    }
    if (y > 120)
    {
        if (x > 600 && x < 660)
        {
            global.msg[0] = scr_gettext("obj_npc_room_709")
            global.msg[1] = scr_gettext("obj_npc_room_710")
            global.msg[2] = scr_gettext("obj_npc_room_711")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_npc_room_715")
                global.msg[1] = scr_gettext("obj_npc_room_716")
            }
            if (global.flag[425] == 1)
            {
                global.msg[0] = scr_gettext("obj_npc_room_721")
                global.msg[1] = scr_gettext("obj_npc_room_722")
            }
        }
        if (x > 510 && x < 540)
        {
            global.msg[0] = scr_gettext("obj_npc_room_728")
            global.msg[1] = scr_gettext("obj_npc_room_729")
            global.msg[2] = scr_gettext("obj_npc_room_730")
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("obj_npc_room_734")
                global.msg[1] = scr_gettext("obj_npc_room_735")
            }
            if (global.flag[425] == 1)
            {
                global.msg[0] = scr_gettext("obj_npc_room_740")
                global.msg[1] = scr_gettext("obj_npc_room_741")
                global.msg[2] = scr_gettext("obj_npc_room_742")
            }
        }
    }
}
if (room == room_fire_pacing)
{
    global.msg[0] = scr_gettext("obj_npc_room_751")
    global.msg[1] = scr_gettext("obj_npc_room_752")
    if (global.flag[7] == 1)
    {
        global.msg[0] = scr_gettext("obj_npc_room_756")
        global.msg[1] = scr_gettext("obj_npc_room_757")
    }
    if (global.flag[425] == 1)
        global.msg[0] = scr_gettext("obj_npc_room_762")
}
if (room == room_fire_hotellobby)
{
    if (x > 300)
    {
        global.msg[0] = scr_gettext("obj_npc_room_769")
        global.msg[1] = scr_gettext("obj_npc_room_770")
        global.msg[2] = scr_gettext("obj_npc_room_771")
        if (global.flag[7] == 1)
        {
            global.msg[0] = scr_gettext("obj_npc_room_775")
            global.msg[1] = scr_gettext("obj_npc_room_776")
        }
        if (global.flag[425] == 1)
        {
            global.msg[0] = scr_gettext("obj_npc_room_781")
            global.msg[1] = scr_gettext("obj_npc_room_782")
            global.msg[2] = scr_gettext("obj_npc_room_783")
            global.msg[3] = scr_gettext("obj_npc_room_784")
        }
    }
    else
    {
        global.msg[0] = "* I asked for a room&  about 3 hours ago./"
        global.msg[1] = "* They told me they'd&  come get me when&  they had one open.../"
        global.msg[2] = "* So I've just been&  sitting here^1.&* Waiting./%%"
        if (talkedto > 0)
            global.msg[0] = "* Sitting can be tiring^1.&* Why would anyone&  like doing it...?/%%"
        if (global.flag[7] == 1)
        {
            global.msg[0] = "* Turns out I never&  asked for a room&  in the first place./"
            global.msg[1] = "* I would be mad^1, but..^1.&* Sitting here has given me&  a new appreciation for it./%%"
            if (talkedto > 0)
                global.msg[0] = "* I hope there aren't any&  sitting taxes up on&  the surface.../%%"
        }
    }
}
if (room == room_fire_hotdog)
{
    if (x > 170)
    {
        global.msg[0] = scr_gettext("obj_npc_room_792")
        global.msg[1] = scr_gettext("obj_npc_room_793")
        global.msg[2] = scr_gettext("obj_npc_room_794")
        if (!instance_exists(obj_sans_room))
        {
            global.msg[0] = scr_gettext("obj_npc_room_798")
            global.msg[1] = scr_gettext("obj_npc_room_799")
            global.msg[2] = scr_gettext("obj_npc_room_800")
        }
        if (global.flag[7] == 1)
        {
            global.msg[0] = scr_gettext("obj_npc_room_805")
            global.msg[1] = scr_gettext("obj_npc_room_806")
            global.msg[2] = scr_gettext("obj_npc_room_807")
        }
    }
    else
        global.msg[0] = scr_gettext("obj_npc_room_812")
}
if (room == room_water_temvillage)
    global.msg[0] = scr_gettext("obj_npc_room_817")
if (room == room_water_trashzone2)
{
    if (global.flag[296] == 0)
        global.msc = 952
    if (global.flag[296] >= 1)
        global.msc = 960
}
if (room == room_prunsel)
{
    global.facechoice = "p"
    global.msg[0] = "\\Fp\\E0^9^9^9^9^9^9^9^9^9^9^9/%"
}
if (sprite_index == spr_slimemonster)
{
    slimemsg = choose(0, 1, 2, 3)
    if (slimemsg == 0)
        global.msg[0] = "* Burble burb.../%%"
    if (slimemsg == 1)
        global.msg[0] = "* Squorch.../%%"
    if (slimemsg == 2)
        global.msg[0] = "* (The Moldsmal is&  making sloppy&  slime sounds.)/%%"
    if (slimemsg == 3)
        global.msg[0] = "* (The Moldsmal is&  wiggling in a&  seductive way.)/%%"
    if (global.flag[7] == 1)
        global.msg[0] = "* (The Moldsmal is making&  plans for a beach&  vacation.)/%%"
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
