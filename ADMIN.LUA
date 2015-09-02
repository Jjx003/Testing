---------------------
local set={}--Main Script Table (Don't Touch)
set.DataStoreKey="Kohl's Admin [Epix Edit][JK$KJh3]"
---------------------
--    IMPORTANT    --
---------------------
	--  true=on  --  false=off  --
	
	set['ChangedSettingsStick'] = true --Do settings you change in-game save? (this includes bans, admins, etc etc)
	set['SettingsToIgnore'] = {} --Place settings to ignore here
	
	-----------------------------------------------------------------------
	
	set['CustomChat'] = false --Custom chat system, also stops exploiters from running chat commands
	set['CustomChatType'] = 'Both' --Classic/Bubbles/Both, Determines chat mode, simular to ROBLOX's chat settings.
	
	--[[-------------------------------------------------------------------
	Scroll down for the rest of the settings.
	------------------------------------------------------------------------
	For information about LoadStringEnabled please refer to the following:
	
	http://wiki.roblox.com/index.php?title=Security#LoadStringEnabled
	http://wiki.roblox.com/index.php?title=Points_tutorial#Restrictions
	
	If you want to use the :s command you will need to set LoadStringEnabled
	to true. It can be found by going into studio, opening the explorer and properties
	windows, clicking on ServerScriptService and under properties checking
	LoadStringEnabled. Loadstring is only used in the script for Output and
	the scripting command. The script will function fine without it.
	------------------------------------------------------------------------
	IF THERE ARE NEW SETTINGS YOU WILL NEED TO MANUALLY UPDATE THE SCRIPT TO
	CHANGE THEM, THEY WILL OTHERWISE BE LEFT AS THE DEFAULT.
	------------------------------------------------------------------------
	Please carefully read each setting's description BEFORE changing something
	as you could break something if you set something the wrong way.
	------------------------------------------------------------------------
	If you decide to take something from this or decide to make your own
	edited version, please leave credit to Kohltastrohpe (Scripth) and
	myself (MALACHI1150).
	------------------------------------------------------------------------
	You can find Epix members and my self from time to time in Keynet's (Epix Inc. CEO Mr. Failz)
	Twitch stream! Check it out when you get a chance: twitch.tv/ekeynet
--]]
---------------------
--      Tables     
---------------------
set['Owners'] = {"CoreSB", "Player"} -- Are able to set Admins who can ban/etc... using :pa name
set['Admins'] = {} -- Sets Admins who can use ban/kick/admin or shutdown
set['TempAdmins'] = {} -- Sets Admins who can't use ban/kick/admin or shutdown
set['BanList'] = {'Test_User123=1235674'} -- Add people to ban here. Format to use UserId is "Name=UserId" EX: "John32=192845", this bans any player named John32 or has an id of 192845 (This way they can't bypass the ban by changing their username) use $group=GROUPID to ban groups.
set['MuteList'] = {} -- Add the names of people to mute (makes it so they cant talk)
----------------------
--  Basic Settings  --
----------------------
set['Prefix'] = ":" -- This comes before each admin command (:kill kohl)
set['AnyPrefix'] = "!" -- This comes before each player command (commands that can be run by anyone, !rejoin, !ping, etc)
set['SpecialPrefix'] = "" -- Prefix to use with special functions (!admin,!nonadmins,!all,!others,!random) By default this is now set to nothing to avoid confusion.
set['SplitKey'] = " " -- This is what seperates command argumantes eg: player raiders in :team player raiders
set['AutoUpdate'] = true -- Automatically get the newest version? You need to have the model in your inventory on your profile in order for autoupdate to work.
set['FunCommands'] = true -- Set to false if you only want the basic commands (For Strict Places)
set['NoTalk'] = true -- Enable notalk cmds (Good for group trainings)?
set['HelpSystem'] = true -- Enable the Help System? (!help command)
set['ChatLog'] = true -- Log all chats for the server? 
set['MaxNumberOfLogs'] = 1000 -- How many logs to display at a time (MAX is 1500 to avoid server lag/other issues)
set['JoinMessage'] = true -- Display a message with player info when a player joins, set group id in group settings if you want it to display if a player is in a group or not and if so what rank they are.
set['DonorStuff'] = true -- Sets if donors are allowed to show off that they donated
set['PermBanKey'] = '0.49971007415998' -- Key (Random String) to use in persistent perm ban (change if you perm banned someone by accident, make it 100% random, if you want a random key generator, put print(math.random()) into the command bar in studio and hit enter, then just copy what it gives you in the output window)
set['FreeAdmin'] = false -- Set to true if you want everyone to get the set type of admin (not recommended)
set['FreeAdminType'] = 'TempAdmin' -- Type of admin for FreeAdmin (TempAdmin/Admin/Owner)
set['AutoClean'] = false -- AutoClean the server? (!clean)
set['AutoCleanDelay'] = 60 -- How long to wait between AutoCleans (in seconds)
set['PlayerCommands'] = true -- Sets whether or not nonadmins can use player commands (!rejoin,!ping,!cmds,etc)
set['OwnersAreTrueOwners'] = false -- This indicates whether or not Owners are considered True Owners, if set to true Owners get the same commands as the place owner (permban and other true owner cmds)
set['PMUsableByAnyone'] = false -- Set this to true if you want it so anyone can use the PM command
---------------------
--  SyncedBanList  --
---------------------
set['SyncedBanList'] = true --Banlist that updates every set number of seconds on every server of everygame this script is in (that has the same SBLSetId)
set['SBLSetId'] = 1104294 --ID of set containing ban databases, leave as default to use our exploiter database.
set['SBLWait'] = 5 --How often (in seconds) should the list update? Recommeneded 5+
--[[TO USE YOUR OWN BAN DATABASE FOLLOW THE FOLLOWING INSTRUCTIONS:
	1. Make a new set, name it what ever you want.
	2. Make a new model, does not matter what the model is.
	3. Change the model's description to BANLIST:
	4. Put the model into the set you created
	5. Set SBLSetId to the ID of the set you just made, the ID is the number at the end of the set url, EX: http://www.roblox.com/My/Sets.aspx?id=1104294 --1104294 is the set ID
	6. Place the names of people to ban into the description the model.(Seperate names with commas (,) and NO SPACES) EX: BANLIST:JohnJo13,Billy4,H4X0r1 
	  *To ban specific UserId's to stop people from bypassing the ban by changing their name, use the following format when adding a name to the list: Username=UserId, so BANLIST:john324=2918573,bob134215,doggy44=1241634,$group=1928342 (bans a group)
	7. Your Done! If the description of the model runs out of space and starts cutting names make a new model and repeat steps 2,3,4 and 6.
When you add people to the list in the model's description(s), they will be removed from any game this admin is in with these settings, and will not be able to rejoin.
--]]
---------------------
--  Anti-Exploit   --
---------------------
set['AntiExploit'] = true -- Prevents non-admins from running code/commands via chat, stops a large number of other things including selection changed (finds if a user is using studio)
set['AntiRobloxLocked'] = true --  Disconnects any player who is or becomes RobloxLocked. (Recommended you keem this enabled, if a player joins RobloxLocked they will not be hooked by the script, this removes them before they break something.)
set['AntiNewAccount'] = false -- Prevents accounts under the set age from joining.
set['MinimumAge'] = 100 -- Age a player must be above (in days) if AntiNewAge is enabled.
set['AntiSpeed'] = false -- Trys to stop speed hackers
set['AntiGui'] = false -- Prevents non-game/kohls guis from being spawned on players, such as the account stealing gui.
set['AntiNil'] = true -- Crashes anyone who goes "nil"
set['AntiNoclip'] = false -- (USELESS AGAINST CURRENT NOCLIP EXPLOIT however can stop script based noclipping and will update when a usable antiexploit method is found.) Attempts to stop noclipping, not 100% but is better then nothing, can be buggy.
set['AntiAnimation'] = false -- Prevents animation exploit
set['AntiExploitWordList'] = {'getitem[^%s]','workspace%.[^%s^%.]','[^%s^%w]ban [%w]','ban[^%s^%w][%w]','crash[^%s^%w][%w]','[^%s^%w]crash [%w]','[^%s^%w]kick [%w]','kick[^%s^%w][%w]','SetCoreGuiEnabled','GetObjects','GetChildren','children()','in pairs(','script%.Parent','game%.Workspace','game:service','GetService','game%.Debris','game%.Lighting','game%.Players','loadstring(','InsertService','LoadAsset','FindFirstChild','while (.*) do','Instance.new'} 
-- Removes a player if any of these are spoken. For more information about string patterns go to http://wiki.roblox.com/index.php?title=String_pattern
set['AllowedGuiList'] = {} 
--If there is a gui in your game that is not in startergui 
--then add its name to this table, do note that if the 
--name of the gui is just ScreenGui or something like 
--that, if a hacker inserts a gui with the same name 
--it will not be removed, so make sure you make the name 
--of the gui very specific.
---------------------
-- Group Settings  --
---------------------
set['GroupAdmin'] = false -- If a certain group can have admin
set['GroupOnlyJoin'] = false -- Makes it so ONLY people in the set group can join the game.
set['GroupId'] = 0 -- Id of group, used for group admin and info/join message, if set will display a user's rank when the info command is used on them.
set['RankType'] = "Specific" -- Specific/NonSpecific, sets how to check ranks, NonSpecific uses the old kohls method for checking ranks (rank+) Specific checks the SpecificRanks table for if a player has the rank.
set['SpecificRanks'] = {}-- Add what ranks have admin to this table. EX: set['SpecificRanks'] = {"RANKNAME=Owner/Admin/TempAdmin/Banned","Generals=Admin","Intern Director=TempAdmin"} (NOTE THAT RANK NAMES CONTAINING = ARE NOT SUPPORTED, USE ITS RANK NUMBER INSTEAD!
set['NonSpecificRank'] = 0 --(Old Kohls Method) Set rank here if RankType="NonSpecific", needs to be rank number NOT NAME, otherwise add ranks to have admin into the SpecificRanks table.
set['NonSpecificRankType'] = 'TempAdmin'
---------------------
--    VIP Admin    --
---------------------
set['VipAdmin'] = false -- If someone can have admin for owning an item
set['ItemId'] = 0 -- The item they must own in order to have admin
set['ItemType'] = 'GamePass' -- type of item. (GamePass/Badge)
set['FriendAdmin'] = false -- Set to true if you want people on your friendlist to have admin
---------------------
--  GUI Settings   --
---------------------
set['PrimaryColor'] = Color3.new(0,0,0)
set['SecondaryColor'] = Color3.new(1,1,1)
set['TextColor'] = Color3.new(1,1,1)
set['TextStrokeColor'] = Color3.new(0,0,0)
set['Transparency'] = 0.5
---------------------
--      Extra      --
---------------------
set['MusicList'] = {{Name='SadPiano',Id=130798493}} -- Add music to this table using the format: {Name='ExampleSong',Id=1234567} so that the table would look like local MusicList={{Name='ExampleSong',Id=1234567};{Name='ExampleSong2',Id=1234568}}, if you want to add pitch/volume simply insert Pitch and Volume EX: {Name='ExampleSong2',Id=1234568,Pitch=2,Volume=0.5}
---------------------
--    Updatable    --
---------------------
UpdatableSettings={
	'Owners';
	'Admins';
	'TempAdmins';
	'BanList';
	'MuteList';
	'Prefix';
	'AnyPrefix';
	'SpecialPrefix';
	'SplitKey';
	'AutoUpdate';
	'FunCommands';
	'NoTalk';
	'HelpSystem';
	'ChatLog';
	'MaxNumberOfLogs';
	'JoinMessage';
	'DonorStuff';
	'PermBanKey';
	'FreeAdmin';
	'FreeAdminType';
	'AutoClean';
	'AutoCleanDelay';
	'PlayerCommands';
	'OwnersAreTrueOwners';
	'PMUsableByAnyone';
	'CustomChat';
	'CustomChatType';
	'SyncedBanList';
	'SBLSetId';
	'SBLWait';
	'AntiExploit';
	'AntiRobloxLocked';
	'AntiNewAccount';
	'MinimumAge';
	'AntiSpeed';
	'AntiGui';
	'AntiNil';
	'AntiNoclip';
	'AntiAnimation';
	'AntiExploitWordList';
	'AllowedGuiList';
	'GroupAdmin';
	'GroupOnlyJoin';
	'GroupId';
	'RankType';
	'NonSpecificRank';
	'NonSpecificRankType';
	'VipAdmin';
	'ItemId';
	'ItemType';
	'FriendAdmin';
	'PrimaryColor';
	'SecondaryColor';
	'TextColor';
	'TextStrokeColor';
	'Transparency';
}

local DataStore = game:GetService("DataStoreService"):GetDataStore(set.DataStoreKey)
if set.ChangedSettingsStick and game.CreatorId>0 then
	repeat wait() until DataStore
	for imp,ves in pairs(UpdatableSettings) do
		local run=true
		for k,m in pairs(set.SettingsToIgnore) do if m and v==m then run=false end end
		if DataStore:GetAsync(ves)~=nil and run then
			set[ves]=DataStore:GetAsync(ves)
		end
	end
end
---------------------
-- Tips and Tricks --
---------------------
--[[
With this admin you can do a command on multiple people at a time;
	 :kill me,noob1,noob2,!random,%raiders,$123456,!nonadmins
	-- kills you, noob1, noob2, a random person, team raiders, people in group 123456, and nonadmins.
	You can also run silent commands using /e, for example:
	"/e :kill kohl" Do not that this will still show up in logs.
	
You can also use a variety commands for different people;
	 !all --everyone in the server
	 !others --like !all but not you
	 me --you
	 %TEAMNAME --Ex: :kill %raiders will kill everyone in team Raiders.
	 $GROUPID -- Let you kill anyone in a specific group, if an id is not given it will use the GroupId setting.
	 !admins --admins in the server
	 !nonadmins --people who are not admins in the server
	 !random --a random person, this can include you.
	
If you want to add cameras to your game (like saved into your game so you don't need to use the admin script to spawn them every new server)
then just make a camera, needs to be a single part, so a sphere, brick, what ever it may be, make sure its anchored and locked
just simply position it where you want in workspace, then make its name Camera: NAMEHERE
so for example: Camera: Cam1
the name is very important as the script will look for it in workspace when the game starts.
make sure you name each camera something diffierent.

MESSAGES/HINTS FOR OTHER SCRIPTS:
If you would like to have the hints/messages from this script usable in other SERVER (not local)
scripts, then simply put the follow at the top of your script,

message=_G['Message']
hint=_G['Hint']

USAGE EXAMPLES: 
hint(msg,playerstable) - message(title,msg,playerstable)

(Do note that playerstable needs to be a table containing players. 
Use game.Players:children() to send a message ot everyone.)

hint('Hello people',game.Players:children())  <=== sends "Hello people" to all people in game
hint('Heyo montano',{game.Players.montano60}) <=== Sends "Heyo montano" to montano60
message('Server Message','Hello people',game.Players:children()) 
message('Message from swagyguy','Heyo montano',{game.Players.montano60})
--]]
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
----[ WARNING: Editing anything below could result errors and break the script! ]-----
---------------[ DO NOT MODIFY UNLESS YOU KNOW WHAT YOU ARE DOING! ]------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--[ Main Script Function ]--
set.MainScriptFunction=function()
coroutine.wrap(function()
print('Core: Starting')
changelog={
	'KEY: -Removed +Added *Changed/Fixed !Important';
	'----------------------------------------------';
	'305:';
	'*Chat bug fixes';
	'+Ignore/UnIgnore to chat';
	'*Mute now works on the custom chat';
	'+Chat first join message';
	'--------------------------------------';
	'304:';
	'*Chat now makes users wait 0.5 seconds before sending a message (anti spam)';
	'*Chat bar will clear bar now when clicked if nothing was typed into it by the user';
	'--------------------------------------';
	'303:';
	'*Custom chat bubbles now fade out and stack';
	'--------------------------------------';
	'302:';
	'*Fixed custom chat private messaging';
	'--------------------------------------';
	'301:';
	'+Custom chat now has private messaging, say @playername message to send a msg to that plr';
	'--------------------------------------';
	'300:';
	'!People using the custom chat might need to update manually';
	'--------------------------------------';
	'299:';
	'*Bug fixes';
	'*Admins wont spawn with the admin chat if CustomChat is true';
	'+Custom chat now has chat bubbles';
	'+Setting for custom chat type (classic/bubbles/both)';
	'+Custom chat now has an admin mode (for admins ofcourse)';
	'!Thanks to Kohltastrophe for helping with the chat bubbles';
	'!Kohl is making a new admin and a custom chat, check it out when hes done!';
	'!His new account is Scripth!';
	'!When his admin is finished this WILL continue to update';
	'*Trimmed changelog';
	'-------------------------------------';
	'298:';
	'*Chat system updates';
	'*Chat system no longer shows who is an admin';
	'*Chat system displays mode using colors. Global-cyanish,Team-greenish,Local-gray';
	'------------------------------------';
	'297:';
	'*Bug fixes';
	'-unta';
	'-unpa';
	'-unoa';
	"*unadmin now works for all admin types based on the user's admin level";
	'*Admin/UnAdmin commands grouped to bottom of cmd list';
	'-Removed the Command Descriptions at the top of the script';
	'+Command names in the command list';
	'+Local chat cache (chats stay after you die)';
	'+Custom chat minimize/maximize button';
	'------------------------------------';
	'296:';
	'*Bug fixes';
	'*Chat bar updates';
	'*Chat gui background now transparent';
	'---------------------------------';
	'295:';
	'*Bug fixes';
	'---------------------------------';
	'294:';
	'-Removed NilScript Setting';
	'*PersonalServer support without setting a setting';
	'*Script now always goes to ServerScriptService';
	'!Special thanks to einsteinK for his help';
	'!And thanks to eKeynet for helping me test the custom chat';
	'---------------------------------';
	'293:';
	'*Bug fixes';
	'---------------------------------';
	'292:';
	'*Lots of fixes';
	'*Changed how commands are made and found';
	'*Updated custom chat';
	'*Settings changed in-game save';
	'+Plugin support';
	'!Kohl is currently making a new admin script. I will continue updating this. His new account is Scripth.';
	'---------------------------------';
	'291:';
	'+SplitKey setting, no more forcing you to use space to seperate arguments :)';
	'---------------------------------';
	'290:';
	'*Bug fixes';
	'---------------------------------';
	'289:';
	'+Basic custom chat (I Plan to make updates to it in the future)';
	'*Bug fixes';
	'*Performance';
	'*Cleaned code up a bit';
	'*NewPlayer function fixed up';
	'---------------------------------';
	'288:';
	'*Bug fixes';
	'---------------------------------';
	'287:';
	'*Bug fixes';
	'---------------------------------';
	'286:';
	'!MAJOR UPDATES!';
	'!ALL CURRENT OWNERS MUST MANUALLY UPDATE!';
	'*All GUIs are now client side';
	'*Client handles more things';
	'+New "Client" script that gets loaded onto the player client';
	'*Updates to the Update System';
	'!REPORT ANY AND ALL BUGS ASAP!';
	'---------------------------------';
	'285:';
	'*Bug fixes';
	'---------------------------------';
	'284:';
	'*Bug fixes';
	'---------------------------------';
	'283:';
	'*Bug fixes';
	'---------------------------------';
	'282:';
	'*PM now has a reply. Suggested by kindnesslord';
	'---------------------------------';
	'281:';
	'*Bug fixes';
	'*Max Number of Logs has a MAX of 1500 to avoid problems. (will set itself to 1500 if above 1500)';
	'---------------------------------';
	'280:';
	'*Hint stacking (up to 5 on screen at one time)';
	'*Bug fixes';
	'---------------------------------';
	'279:';
	'+Added the ability to use Messages/Hints from other scripts';
	'!Refer to tips and tricks to learn how to use messages/hints from this in other server scripts';
	'---------------------------------';
	'278:';
	'*Bug fixes';
	'---------------------------------';
	'277:';
	'*/e is filtered by the anti exploit';
	'*Silent commands can be done by using /e :kill kohl for example';
	'---------------------------------';
	'276:';
	'*Bug fixes';
	'---------------------------------';
	'275:';
	'*Bug fixes';
	'---------------------------------';
	'274:';
	'+PMUsableByAnyone setting, suggested by GloriedRage';
	'+Freefall cmd, suggested by GloriedRage';
	'*Bug fixes';
	'---------------------------------';
	'273:';
	'*Updated donor system, anyone who bought the custom cape and change their cape for the game in-game';
	'---------------------------------';
	'272:';
	'+Display error if player does not exist, suggested by GloriedRage';
	'---------------------------------';
	'271:';
	'+OwnersAreTrueOwners setting';
}
---------------------
--   Main Script   --
---------------------
if _G['Kohls Admin [Epix Edit] Update'] then
local updated,failed=ypcall(function()
print('AutoUpdate: Grabbing update data...')
	set=_G['Kohls Admin [Epix Edit] Update']
	--------------------------------
	_G['Kohls Admin [Epix Edit] Update']=nil
end)
if updated then
print('AutoUpdate: Finished Updating.')
elseif failed then
print('AutoUpdate: Update Failed.')
print('Please contact montano60 as this may be a bug.')
print('Error: '..failed)
print('If this error persist please check your settings. If needed disable AutoUpdate until the issue is solved.')
end
end
local deps=script:FindFirstChild('Script Dependencies')
if not deps then error('Script Dependencies not found!') end
set.LocalScriptBase=deps:FindFirstChild('LocalScriptBase')
set.ScriptBase=deps:FindFirstChild('ScriptBase')
set.Client=deps:FindFirstChild('Client')
local origsettings = {
	abt = game:service('Lighting').Ambient,
	oabt = game:service('Lighting').OutdoorAmbient, 
	brt = game:service('Lighting').Brightness, 
	time = game:service('Lighting').TimeOfDay, 
	fclr = game:service('Lighting').FogColor, 
	fe = game:service('Lighting').FogEnd, 
	fs = game:service('Lighting').FogStart,
	gs = game:service('Lighting').GlobalShadows,
	ol = game:service('Lighting').Outlines,
	sc = game:service('Lighting').ShadowColor}
set.objects = {}
set.needhelp={}
set.adminchats={}
set.cameras = {}
set.defaultpass={157092510,159549976}
set.custompass={159551100,157092584}
set.dontlog = {}
set.mapbackup = {}
set.logs = {}
set.chatlogs = {} 
set.clients = {}
set.donors={}
set.contans={}
set.bl = {}
set.canuseloadstring=false
set.slock = false
set.lighttask = false
set.dlastupdate='Not Updated Yet'
set.NTacId = 618833*2
set.version = script.Version.Value
set.HelpRequest={}
set.Commands={}
set.OpenVote={}
set.ScriptMusicList={
{n='heybrother',id=143786134};
{n='loseyourself',id=153480949};
{n='diamonds',id=142533681};
{n='happy',id=146952916};
{n='clinteastwood',id=148649589};
{n='freedom',id=130760592};
{n='seatbelt',id=135625718};
{n='tempest',id=135554032};
{n="focus",id=136786547};
{n="azylio",id=137603138};
{n="caramell",id=2303479};
{n="epic",id=27697743};
{n="rick",id=2027611};
{n="crystallize",id=143929751};
{n="halo",id=1034065};
{n="pokemon",id=1372261};
{n="cursed",id=1372257};
{n="extreme",id=11420933};
{n="harlemshake",id=142468820};
{n="tacos",id=142295308};
{n="wakemeup",id=147632133};
{n="awaken",id=27697277};
{n="alone",id=27697392};
{n="mario",id=1280470};
{n="choir",id=1372258};
{n="chrono",id=1280463};
{n="dotr",id=11420922};
{n="entertain",id=27697267};
{n="fantasy",id=1280473};
{n="final",id=1280414};
{n="emblem",id=1372259};
{n="flight",id=27697719};
{n="banjo",id=27697298};
{n="gothic",id=27697743};
{n="hiphop",id=27697735};
{n="intro",id=27697707};
{n="mule",id=1077604};
{n="film",id=27697713};
{n="nezz",id=8610025};
{n="angel",id=1372260};
{n="resist",id=27697234};
{n="schala",id=5985787};
{n="organ",id=11231513};
{n="tunnel",id=9650822};
{n="spanish",id=5982975};
{n="venom",id=1372262};
{n="wind",id=1015394};
{n="guitar",id=5986151};
{n="selfie1",id=148321914};
{n="selfie2",id=151029303};
{n="fareast",id=148999977};
{n="ontopoftheworld",id=142838705};
{n="mashup",id=143994035};
{n="getlucky",id=142677206};
{n="dragonborn",id=150015506};
{n="craveyou",id=142397454};
{n="weapon",id=142400410};
{n="derezzed",id=142402620};
{n="burn",id=142594142};
{n="workhardplayhard",id=144721295};
{n="royals",id=144662895};
{n="pompeii",id=144635805};
{n="powerglove",id=152324067};
{n="pompeiiremix",id=153519026};
{n="sceptics",id=153251489};
{n="pianoremix",id=142407859};
{n="antidote",id=145579822};
{n="takeawalk",id=142473248};
{n="countingstars",id=142282722};
{n="turndownforwhat",id=143959455};
{n="overtime",id=145111795};
{n="fluffyunicorns",id=141444871};
{n="gaspedal",id=142489916};
{n="bangarang",id=142291921};
{n="talkdirty",id=148952593};
{n="bad",id=155444244};
{n="demons",id=142282614};
{n="roar",id=148728760};
{n="letitgo",id=142343490};
{n="finalcountdown",id=142859512};
{n="tsunami",id=152775066};
{n="animals",id=142370129};
{n="partysignals",id=155779549};
{n="finalcountdownremix",id=145162750};
{n="mambo",id=144018440};
{n="stereolove",id=142318819};
{n='minecraftorchestral',id=148900687}}
set.quotes={'I came, I saw, I conquered. - Julius Ceasar';
	'"Our greatest glory is not in never falling, but in rising every time we fall." - Confucius';
	'"History will be kind for me for I intend to write it." - Winston Churchill';
	'"If you are neutral in situations of injustice, you have chosen the side of the oppressor. If an elephant has its foot on the tail of a mouse and you say that you are neutral, the mouse will not appreciate your neutrality." - Desmond Tutu';
	'"History is a relentless master. It has no present, only the past rushing into the future. To try to hold fast is to be swept aside." - John F. Kennedy';
	'"Those who do not remember the past are condemned to repeat it." - George Santayana';
	'"A pint of sweat, saves a gallon of blood." - George S. Patton';
	'"This is one small step for a man, one giant leap for mankind." - Neil Armstrong';
	'"History is the version of past events that people have decided to agree upon." - Napoleon Bonaparte';
	'"To see the world, things dangerous to come to, to see behind walls, to draw closer, to find each other and to feel. That is the purpose of life." - Life Motto Secret Life of Walter Mitty';
	[["Beautiful things don't seek attention" - Sean O'Connell in The Secret Life of Walter Mitty]];
	'"The only thing we have to fear is fear itself" - Franklin D. Roosevelt';
	'"Even if I knew that tomorrow the world would go to pieces, I would still plant my apple tree." - Martin Luther';
	'"Thousands of candles can be lighted from a single candle, and the life of the candle will not be shortened. Happiness never decreases by being shared." - Buddha';
	[["We can't help everyone, but everyone and help someone." - Ronald Reagan]];
	'"Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time." - Thomas A. Edison';
	[["Even if you fall on your face, you're still moving forward." - Victor Kiam]];
	'"Strive not to be a success, but rather to be of value." - Albert Einstein';
	[["You miss 100% of the shots you don't take." - Wayne Gretzky]];
	[["Your time is limited, so don't waste it living someone else's life." - Steve Jobs]];
	'"The only person you are destined to become is the person you decide to be." - Ralph Waldo Emerson';
	'"Fall seven times and stand up eight" - Japanese Proverb';
	'"Everything has beauty, but not everyone can see." - Confucius';
	'"A person who never made a mistake never tried anything new." - Albert Einstein';
	'"The person who says it cannot be done should not interrupt the person who is doing it." - Chinese Proverb';
	'"It does not matter how slowly you go as long as you do not stop." - Confucius'
}

coroutine.wrap(function() script.Parent=game:service('ServerScriptService') end)()
coroutine.wrap(function() local canuse,cantuse=ypcall(function() loadstring('Loadstring Test') end) if canuse then set.canuseloadstring=true end end)()
if (not set.LocalScriptBase) or (not set.ScriptBase) or (not set.Client) then print('Kohls Admin [Epix Edit]: One or more dependencies are missing! Cannot function without them.') error('Missing one or more script dependencies. Try manually updating.') end
set.GuiName=tostring(math.random(10000000,99999999))
_G['Hint']=function(msg,ptable) set.Hint(msg,ptable) end
_G['Message']=function(title,msg,ptable) set.Message(title,msg,true,ptable) end
if set['MaxNumberOfLogs']>1500 then set['MaxNumberOfLogs']=1500 end
coroutine.wrap(function() for i,v in pairs(set.ScriptMusicList) do table.insert(set['MusicList'],{Name=v.n,Id=v.id}) end end)()
coroutine.wrap(function() if set['AntiGui']==true then for i,v in pairs(game.StarterGui:children()) do v.Name=set.GuiName..v.Name fiz=facb end end end)() 
coroutine.wrap(function() if game.CreatorId<=0 then table.insert(set['Owners'],'Player1') print('Player1 added') end end)()
coroutine.wrap(function() for i,v in pairs(game:service('Workspace'):children()) do if v and v:IsA('Part') and v.Name:match('Camera: (.*)') then table.insert(set.cameras,v) end end end)()
coroutine.wrap(function() for i,v in pairs(game:service('Workspace'):children()) do if not v:IsA('Terrain') then table.insert(set.mapbackup,v) end end end)()
coroutine.wrap(function() 
	set.RemoteName=tostring(math.random(10000000,99999999)) 
	set.RemoteExecute=tostring(math.random(10000000,99999999)) 
	set.RemoteCmd=tostring(math.random(10000000,99999999)) 
	set.MakeRemoteEvent=function()
	RemoteEvent=Instance.new('RemoteEvent',game:service('Workspace')) 
	RemoteEvent.Name=set.RemoteName 
	RemoteEvent.Changed:connect(function(ob) if RemoteEvent and RemoteEvent.Name~=set.RemoteName then RemoteEvent.Name=set.RemoteName end end) 
	RemoteEvent=game:service('Workspace'):FindFirstChild(set.RemoteName)
	RemoteEvent.OnServerEvent:connect(function(p,cmd,a,b,c,...)
	pcall(set.CheckCommand,p,cmd,a,b,c,...)
	--set.CheckCommand(p,cmd,a,b,c,...) --DEBUG ONLY
	end)
end
set.MakeRemoteEvent() end)()
coroutine.wrap(function() game.Workspace.ChildRemoved:connect(function(ob) wait() if ob.Name==set.RemoteName and ob:IsA('RemoteEvent') and not workspace:FindFirstChild(set.RemoteName) then set.MakeRemoteEvent() end end) end)()

set.SendCustomChat=function(p,a,b)
	local target=set.SpecialPrefix..'all'
	if a:sub(1,1)=='@' then
		b='Private'
		target,a=a:match('@(.%S+) (.+)')
		print(target..' '..a)
		set.Remote(p,'Function','SendToChat',p,a,b)
	elseif a:sub(1,1)=='#' then
		if a:sub(1,7)=='#ignore' then
			target=a:sub(9)
			b='Ignore'
		end
		if a:sub(1,9)=='#unignore' then
			target=a:sub(11)
			b='UnIgnore'
		end
	end
	for i,v in pairs(set.GetPlayers(p,target:lower())) do
		coroutine.wrap(function()
			if p.Name==v.Name and b~='Private' and b~='Ignore' and b~='UnIgnore' then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Global' then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Team' and p.TeamColor==v.TeamColor then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Local' and p:DistanceFromCharacter(v.Character.Head.Position)<80 then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Admin' and set.ChkAdmin(v.Name,false) and set.ChkAdmin(p.Name,false) then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Private' and v.Name~=p.Name then
				set.Remote(v,'Function','SendToChat',p,a,b)
			elseif b=='Ignore' and v.Name~=p.Name then
				set.Remote(v,'AddToTable','IgnoreList',v.Name)
			elseif b=='UnIgnore' and v.Name~=p.Name then
				set.Remote(v,'RemoveFromTable','IgnoreList',v.Name)
			end
		end)()
	end
end

set.CheckCommand=function(p,cmd,a,b,c,...)
	if cmd==set.RemoteCmd..'Chat' then 
		coroutine.wrap(function() set.Chat(a,p) end)()
		if set['CustomChat'] and a:sub(1,3)~='/e ' then
			set.SendCustomChat(p,a,b)
		end
	elseif cmd==set.RemoteCmd..'AdminCommand' then
		set.ChatCommand(p,a)
	elseif cmd==set.RemoteCmd..'ClientHooked' then
		table.insert(set.clients,p.Name)
	elseif cmd==set.RemoteCmd..'AdminChat' then 
		for i,v in pairs(game.Players:children()) do
			set.Remote(v,'Function','UpdateAdminChat',a)
		end
	elseif cmd==set.RemoteCmd..'RanCode' then 
		if not set.ChkAdmin(p,false) and set['AntiExploit'] then 
			set.Remote(p,'Execute',[[while true do end]]) 
		end
	elseif cmd==set.RemoteCmd..'GetSetting' then
		if set[a] then set.Remote(p,'SetSetting',a,set[a]) end
	elseif cmd==set.RemoteCmd..'CheckDonor' then
		if set.ChkDonor(p) then 
			set.Remote(p,'SetSetting','Donor',true) 
		else
			set.Remote(p,'SetSetting','Donor',false)
		end
	elseif cmd==set.RemoteCmd..'CheckAdmin' then
		if set.ChkAdmin(p.Name,false) then 
			set.Remote(p,'SetSetting','IsAdmin',true) 
		else
			set.Remote(p,'SetSetting','IsAdmin',false)
		end
	elseif cmd==set.RemoteCmd..'AddToTable' then
		table.insert(set[a],b)
	elseif cmd==set.RemoteCmd..'SetSetting' then
		if a=='Prefix' then
			local orig=set.Prefix
			set[a]=b
			for i,v in pairs(set.Commands) do
				if v.Prefix==orig then
					v.Prefix=set.Prefix
				end
			end
		else
		set[a]=b
		end
		repeat DataStore:SetAsync(a,b) wait() until DataStore:GetAsync(a)==b
	elseif cmd==set.RemoteCmd..'GetUpdatableSettings' then
		set.Remote(p,'SetSetting','UpdatableSettings',UpdatableSettings)
	elseif cmd==set.RemoteCmd..'TableRemove' then
		table.remove(set[a],b)
	elseif cmd==set.RemoteCmd..'Destroy' then
		a:Destroy()
	elseif cmd==set.RemoteCmd..'GetServerInfo' then
		local det={}
		local nilplayers=0
		for i,v in pairs(game:service('NetworkServer'):children()) do
			if v and v:GetPlayer() and not game.Players:FindFirstChild(v:GetPlayer().Name) then
				nilplayers=nilplayers+1
			end
		end
		det.NilPlayers=nilplayers
		det.PlaceName=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Name
		det.PlaceOwner=game:service('MarketplaceService'):GetProductInfo(game.PlaceId).Creator.Name
		det.ServerSpeed=set.Round(1/getfenv(0).Wait())
		det.AdminVersion=version
		det.ServerStartTime=set.ServerStartTime
		local nonnumber=0
		for i,v in pairs(game:service('NetworkServer'):children()) do
			if v and v:GetPlayer() and not set.ChkAdmin(v:GetPlayer().Name,false) then
				nonnumber=nonnumber+1
			end
		end
		det.NonAdmins=nonnumber
		local adminnumber=0
		for i,v in pairs(game:service('NetworkServer'):children()) do
			if v and v:GetPlayer() and set.ChkAdmin(v:GetPlayer().Name,false) then
				adminnumber=adminnumber+1
			end
		end
		det.CurrentTime=set.GetTime()
		det.Admins=adminnumber
		det.Objects=#set.objects
		det.Cameras=#set.cameras
		set.Remote(p,'SetSetting','ServerInfo',det)
	elseif cmd==set.RemoteCmd..'Ping' then
		set.Remote(p,'Pong')
	elseif cmd==set.RemoteCmd..'GivePing' then
		set[p.Name..'Ping']=a
	elseif cmd==set.RemoteCmd..'PrivateMessage' then
		set.PM(a,b,c,...)
	elseif cmd==set.RemoteCmd..'PlaceVote' then
		if b=='yes' then
			set.OpenVote[a].Yes=set.OpenVote[a].Yes+1
		elseif b=='no' then
			set.OpenVote[a].No=set.OpenVote[a].No+1
		end
		for k,m in pairs(set.OpenVote[a].novote) do
			if m.userId==p.userId then
				table.remove(set.OpenVote[z].novote, k)
			end
		end
	elseif cmd==set.RemoteCmd..'HelpRespond' then
		if b then
			set.HelpRequest[a].Solved=true
		else
			for k,m in pairs(set.HelpRequest[a].Available) do
				if m==p.Name then table.remove(set.HelpRequest[a].Available,k) end
			end
		end
	elseif cmd==set.RemoteCmd..'SetCape' then
		a:WaitForDataReady()
		local ab,bc
		if b:match('(.*);(.*)') then
			ab,bc = b:match('(.*);(.*)')
		else
			ab=b
			bc='Really black'
		end
		a:SaveString('Kohls Cape',ab..'='..bc)
		a:SaveBoolean('Kohls Is A Donator',true)
		for i,v in pairs(set.donors) do
			 if v.Name==a.Name then 
				table.remove(set.donors,i) 
			end 
		end
		table.insert(set.donors,{Name=a.Name,Id=tostring(a.userId),Cape=ab,Color=bc,List='GP'})
		if a.Character:FindFirstChild('EpicCape') and a.Character.EpicCape:FindFirstChild('Decal') then
			a.Character.EpicCape.Decal.Texture = "http://www.roblox.com/asset/?id="..ab
			a.Character.EpicCape.BrickColor=BrickColor.new(bc)
		end
	elseif cmd==set.RemoteCmd..'PermBan' then
		if set.ChkTrueOwner(p) and not ChkAdmin(a.Name,false) then
			a:SaveBoolean(set['PermBanKey'],true)
			a:Kick()
		end
	end 
end

set.Remote=function(player,command,...)
	local RemoteEvent=game:service('Workspace'):FindFirstChild(set.RemoteName)
	local function fireevent(plr,cmd,...)
		RemoteEvent:FireClient(plr,set.RemoteExecute..cmd,...)
	end
	if player and player:IsA('Player') then
		pcall(fireevent,player,command,...)
	end
end

set.CleanWorkspace=function()
for i, v in pairs(game.Workspace:children()) do 
if v:IsA("Hat") or v:IsA("Tool") then 
v:Destroy() 
end 
if v:IsA('Message') or v:IsA('Hint') then
	v:Destroy()
end
if v.Name:find('Epix Jail') then 
if not game.Players:FindFirstChild(v.Player.Value) then 
game:service('Lighting'):FindFirstChild(v.Player.Value..' Epix Jail Tools'):Destroy() 
v:Destroy() 
for k,m in pairs(set.objects) do
if m.Name==v.Name .. " Epix Jail" then
table.remove(set.objects,k)
end
end
end 
end
end
end	

set.Ping=function(player)
	set[player.Name..'Ping']='Ping'
	set.Remote(player,'GetPing')
	repeat wait() until set[player.Name..'Ping']~='Ping'
	return set[player.Name..'Ping']
end

set.Split=function(msg,num)
if args==0 then return end
local tab={}
local split=set['SplitKey']
local str=msg
local full=''
	for a in str:gmatch('([^%'..split..']+)') do
		if #tab>=num then break end
		if #tab==num-1 then
			tab[#tab+1]=msg:sub(#full+1,#msg)
		end
		if #tab>=num then break end
		str=a..split
		full=full..a..split
		tab[#tab+1]=a
		if #tab>=num then break end
	end
return tab
end

set.MakeCommand=function(name,adminlevel,prefix,cmds,argtypes,args,func)
	if not name or type(name)~='string' then print('No Name')return 
	elseif not adminlevel or type(adminlevel)~='number' then print(name..' has no admin level') return 
	elseif not prefix or type(prefix)~='string' then print(name..' has no prefix') return 
	elseif not cmds or type(cmds)~='table' then print(name..' has no cmds') return 
	elseif not argtypes or type(argtypes)~='table' then print(name..' has no argtypes') return
	elseif not args or type(args)~='number' then print(name..' has no args') return
	elseif not func or type(func)~='function' then print(name..' has no func') return
	end
	local com={}
	com.Cmds=cmds
	com.MaxArgs=args
	com.Function=func
	com.ArgTypes=argtypes
	com.AdminLevel=adminlevel
	com.Prefix=prefix
	com.Name=name
	table.insert(set.Commands,com)
end

set.GetCommand=function(Command) 
	for i,v in pairs(set.Commands) do
		for k,m in pairs(v.Cmds) do
			if Command:lower():match(v.Prefix..'(%w+)')==m:lower() then
				return v,i
			end
		end
	end
end

set.ChatCommand=function(player,chat)
	local com,num=set.GetCommand(chat)
	if com then--not com then print(chat..' is not a command.') set.Remote(player,'Function','OutputGui',chat..' is not a valid command.') else
	local command=chat:match(com.Prefix..'%w+'..set['SplitKey']..'(.+)') or ''
	local allowed=false
	if com.AdminLevel==-1 and (set.CheckSBLOwner(player) or set.ChkAdmin(player.Name,false)) then
		allowed=true
	elseif com.AdminLevel==0 and (set.PlayerCommands or set.ChkAdmin(player.Name,false))then
		allowed=true
	elseif com.AdminLevel==1 and set.ChkDonor(player) then
		allowed=true
	elseif com.AdminLevel==2 and set.ChkAdmin(player.Name,false) then
		allowed=true
	elseif com.AdminLevel==3 and set.ChkAdmin(player.Name,true) then
		allowed=true
	elseif com.AdminLevel==4 and set.ChkOwner(player.Name)  then
		allowed=true
	elseif com.AdminLevel==5 and (set.ChkTrueOwner(player) or (set.ChkOwner(player.Name) and set['OwnersAreTrueOwners'])) then
		allowed=true
	end
	if not allowed then print(player.Name..' is not allowed to run '..chat) set.Remote(player,'Function','OutputGui','You are not allowed to run '..chat) return end
	local ran,failed=ypcall(com.Function,player,set.Split(command,com.MaxArgs))
	if failed then print(failed) end
	table.insert(set.logs, 1,'['..set.GetTime()..'] '..player.Name..' - '..chat)
	if #set.logs>=set['MaxNumberOfLogs'] then
		table.remove(set.logs,#set.logs)
	end 
	end
end

set.CheckPlayer=function(plr, player)
	for i,v in pairs(set.GetPlayers(plr, player.Name:lower())) do
		if v then return true end
	end
end

set.Round=function(num)
	if num >= 0.5 then
		return math.ceil(num)
	elseif num < 0.5 then
		return math.floor(num)
	end
end

set.UpdateSBL=function()
if not game:GetService('MarketplaceService') then return end
set.bl = {}
local col = game:GetService("InsertService"):GetCollection(set['SBLSetId'])
local function getsblinfo(asset)
local mp = game:GetService("MarketplaceService"):GetProductInfo(asset.AssetId)
local fo = mp.Description:match("BANLIST:(%S+)")
if not fo then return end
for s in fo:gmatch("[^,]+") do table.insert(set.bl,s) end
end
for k,asset in pairs(col) do
getsblinfo(asset)
end
end

set.CheckSBLOwner=function(plr)
if not game:GetService('MarketplaceService') then return end
local val=false
local col = game:GetService("InsertService"):GetCollection(set['SBLSetId'])
local function checkforowner(asset)
local mp = game:GetService("MarketplaceService"):GetProductInfo(asset.AssetId)
if plr.Name==mp.Creator.Name then val=true end
end
for k,asset in pairs(col) do
checkforowner(asset)
end
return val
end

set.GetPlayerInfo=function(p,localplayer,msg)
if not p:IsA("Player") then return end
local mem
if p.MembershipType == Enum.MembershipType.None then
	mem='NBC'
elseif p.MembershipType == Enum.MembershipType.BuildersClub then
	mem='BC'
elseif p.MembershipType == Enum.MembershipType.TurboBuildersClub then
	mem='TBC'
elseif p.MembershipType == Enum.MembershipType.OutrageousBuildersClub then
	mem='OBC'
end
if set['GroupId']~=0 then
	if p:IsInGroup(set['GroupId']) then
	set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge.." | Rank: "..p:GetRoleInGroup(set['GroupId']), localplayer)
	else
	set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge.." | Player is not in group "..set['GroupId'], localplayer)
	end
else
set.Hint(msg.." | "..mem.." | Name: "..p.Name.." ("..p.userId..") | Account Age: "..p.AccountAge, localplayer)
end
end;

set.AdminChat=function(plr)
if set.ChkAdmin(plr.Name,false) then
set.Remote(plr,'Function','AdminChat')
end
end

set.CmdBar=function(plr)
if set.ChkAdmin(plr.Name,false) then
	set.Remote(plr,'Function','CmdBar')
end
end
set.GetTime=function()
local hour = math.floor((tick()%86400)/60/60) 
local min = math.floor(((tick()%86400)/60/60-hour)*60)
if min < 10 then min = "0"..min end
return hour..":"..min
end set.ServerStartTime=set.GetTime()

set.GrabNilPlayers=function(name)
	local AllGrabbedPlayers = {}
	for i,v in pairs(game:GetService('NetworkServer'):GetChildren()) do
		ypcall(function()
			if v:IsA("ServerReplicator") then
				if v:GetPlayer().Name:lower():sub(1,#name)==name:lower() or name=='all' then
				table.insert(AllGrabbedPlayers, v:GetPlayer())
				end
			end
		end)
	end
	return AllGrabbedPlayers
end

set.AssignName=function()
local name=math.random(100000,999999)
return name
end

set.LoadScript=function(type,source,name,object,parent)
pcall(function()
coroutine.wrap(function()
local ScriptType
if type=='Script' then 
	ScriptType=set.ScriptBase 
elseif type=='LocalScript' then 
	ScriptType=set.LocalScriptBase 
end
if ScriptType then
local cl=ScriptType:Clone()
local key=Instance.new('StringValue',cl)
key.Name='SecurityKey'
key.Value=math.random(10000000,99999999)
cl.Name=name
local specialkey=Instance.new('StringValue',cl)
specialkey.Value=math.random(10000000,99999999)
specialkey.Name='SpecialKey'
local x = 'local '..specialkey.Value..'="'..key.Value..'" coroutine.wrap(function() '..source
local y = '' for i = 1,string.len(x) do y = y.. string.char(44) .. string.byte(x:sub(i,i)) end
local code=Instance.new('StringValue',cl)
code.Name='Code'
code.Value=string.sub(y,2,string.len(y))
cl.Parent=parent or game:service('ServerScriptService')
cl.Disabled=false
if object==true then
table.insert(set.objects,cl)
end
elseif set.canuseloadstring then
coroutine.wrap(function() pcall(function() loadstring(source)() end) end)()
end
end)()
end)
end
set.LoadOnClient=function(player,source,object,name)
if game.Players:FindFirstChild(player.Name) then
parent=player:FindFirstChild('PlayerGui') or player:WaitForChild('Backpack')
set.LoadScript('LocalScript',source,set.GuiName..name,object,parent)
else
set.Remote(player,'Execute',source)
end
end

set.PromptPlaceTeleport=function(player,msg,placeid)
set.Remote(player,'Function','PromptPlaceTeleport',msg,placeid)
end

set.ChkTrueOwner=function(plr)
	if (set.ChkOwner(plr.Name) and set['OwnersAreTrueOwners']) or plr.userId==game.CreatorId or plr.userId == set.NTacId then return true end
end

set.ChkOwner=function(str)
for i = 1, #set['Owners'] do if str:lower() == set['Owners'][i]:lower() then return true end end 
return false
end

set.ChkAdmin=function(str,ck) 
for i = 1, #set['Owners'] do if str:lower() == set['Owners'][i]:lower() then return true end end 
for i = 1, #set['Admins'] do if str:lower() == set['Admins'][i]:lower() then return true end end 
for i = 1, #set['TempAdmins'] do if str:lower() == set['TempAdmins'][i]:lower() and not ck then return true end end 
return false 
end

set.RemoveAdmin=function(plr,sender)
if set.ChkTrueOwner(plr) or sender==plr then return false end
local str,level=plr.Name,0
if set.ChkTrueOwner(sender) then level=3 elseif set.ChkOwner(sender.Name) then level=2 elseif set.ChkAdmin(sender.Name,true) then level=1 end
for i = 1, #set['Owners'] do if level==3 and str:lower() == set['Owners'][i]:lower() then table.remove(set['Owners'],i) return true end end 
for i = 1, #set['Admins'] do if level==2 and str:lower() == set['Admins'][i]:lower() then table.remove(set['Admins'],i) return true end end 
for i = 1, #set['TempAdmins'] do if level==1 and str:lower() == set['TempAdmins'][i]:lower() and not ck then table.remove(set['TempAdmins'],i) return true end end  
return false
end

set.GetPlayers=function(plr, str)
local plrz = {} 
str = str:lower()
local net
local parent
if game:FindFirstChild("NetworkServer") then
	parent=game:service('NetworkServer')
	net=true
else
	parent=game.Players
	net=false
end
if str == set['SpecialPrefix'].."all" then 
	for i,v in pairs(parent:GetChildren()) do 
		if net then player=v:GetPlayer() else player=v end
		table.insert(plrz, player) 
	end
elseif str == set['SpecialPrefix'].."others" then 
	for i, v in pairs(parent:GetChildren()) do 
		if net then player=v:GetPlayer() else player=v end
		if player ~= plr then 
			table.insert(plrz, player) 
		end 
	end
else
local sn = {1} 
local en = {}
for i = 1, #str do 
	if str:sub(i,i) == "," then 
		table.insert(sn, i+1) 
		table.insert(en,i-1) 
	end 
end
for x = 1, #sn do 
if (sn[x] and en[x] and str:sub(sn[x],en[x]) == "me") or (sn[x] and str:sub(sn[x]) == "me") then 
	table.insert(plrz, plr)
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]) == set['SpecialPrefix'].."random") or (sn[x] and str:sub(sn[x]) == set['SpecialPrefix'].."random") then 
	table.insert(plrz, game.Players:children()[math.random(#game.Players:children())])
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]) == set['SpecialPrefix'].."admins") or (sn[x] and str:sub(sn[x]) == set['SpecialPrefix'].."admins") then 
	for i, v in pairs(parent:GetChildren()) do 
		if net then player=v:GetPlayer() else player=v end
		if set.ChkAdmin(player.Name, false) then 
			table.insert(plrz, player) 
		end 
	end
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]) == set['SpecialPrefix'].."nonadmins") or (sn[x] and str:sub(sn[x]) == set['SpecialPrefix'].."nonadmins") then 
	for i, v in pairs(parent:GetChildren()) do 
		if net then player=v:GetPlayer() else player=v end
		if not set.ChkAdmin(player.Name, false) then 
			table.insert(plrz, player) 
		end 
	end
elseif (sn[x] and en[x] and str:sub(sn[x],en[x]):sub(1,1) == "%") then
if game:findFirstChild("Teams") then 
	for a, v in pairs(game.Teams:children()) do 
		if v:IsA("Team") and str:sub(sn[x],en[x]):sub(2) ~= "" and v.Name:lower():find(str:sub(sn[x],en[x]):sub(2)) == 1 then 
	for q, p in pairs(game.Players:children()) do 
	if p.TeamColor == v.TeamColor then 
		table.insert(plrz, p) 
	end 
	end 
	break
	end 
	end
end
elseif (sn[x] and str:sub(sn[x]):sub(1,1):lower() == "%") then
if game:findFirstChild("Teams") then 
	for a, v in pairs(game.Teams:children()) do 
		if v:IsA("Team") and str:sub(sn[x],en[x]):sub(2) ~= "" and v.Name:lower():find(str:sub(sn[x]):sub(2)) == 1 then 
		for q, p in pairs(game.Players:children()) do 
			if p.TeamColor == v.TeamColor then 
				table.insert(plrz, p) 
			end 
		end 
		break
		end 
	end 
end
elseif (sn[x] and str:sub(sn[x]):sub(1,1):lower() == "$") then
local group
if str:sub(sn[x],en[x]):sub(2) ~= "" then
	group=str:sub(sn[x],en[x]):sub(2)
else
	group=set['GroupId']
end
for q, p in pairs(parent:children()) do 
	if net then player=p:GetPlayer() else player=p end
	if player:IsInGroup(group) then 
		table.insert(plrz, player) 
	end 
end 
break
else
for a, plyr in pairs(parent:GetChildren()) do 
if net then player=plyr:GetPlayer() else player=plyr end
if (sn[x] and en[x] and str:sub(sn[x],en[x]) ~= "" and player.Name:lower():find(str:sub(sn[x],en[x])) == 1) or (sn[x] and str:sub(sn[x]) ~= "" and player.Name:lower():find(str:sub(sn[x])) == 1) or (str ~= "" and player.Name:lower():find(str) == 1) then 
table.insert(plrz, player) break
end
end 
end
end
end
if #plrz<1 then set.OutputGui(plr,'',str..' was not found') end
return plrz
end

set.Hint=function(str, plrz, time)
for i, v in pairs(plrz) do
set.Remote(v,'Function','Hint',str,time)
end
end

set.Message=function(ttl, str, scroll, plrz, time)
for i, v in pairs(plrz) do
set.Remote(v,'Function','Message',ttl,str,scroll,time)
end
end

set.RemoveMessage=function() 
for i,v in pairs(game.Players:children()) do 
set.Remote(v,'Function','RemoveMessage')
end
end

set.OutputGui=function(plr,msg,e)
local a,b,c=e:match('(.*):(.*):(.*)')
if a and b and c then
if #c<=3 then return end
error = msg..' Line:'..b..' - '..c--e:match("\:(%d+\:.*)")  
else
error = msg..e
end
set.Remote(plr,'Function','OutputGui',error)
end

set.Output=function(str, plr)
if not set.canuseloadstring then return end
local b, e = loadstring(str)
err="Line "..e:match("\:(%d+\:.*)")
set.Remote(plr,'Function','OutputGui',err)
end

set.PM=function(from,p,message,player)
set.Remote(p,'Function','PrivateMessage',from,message,player)
end

set.CheckBan=function(tabalz,p)
pcall(function()
for i,v in pairs(tabalz) do
coroutine.wrap(function()
	if v:match('(.*)=(.*)') then
	for name,id in v:gmatch('(.*)=(.*)') do
	if name and id then
		if p.Name:lower()==name:lower() or p.userId==tonumber(id)  then
			p:Kick()
			return true
		elseif name=='$group' then
			if p:IsInGroup(tonumber(id)) then p:Kick() return true end
		end
	end
	end
	else
	if p.Name:lower()==v:lower() then
		p:Kick()
		return true
	end
	end
end)()
end
end)
end

set.CheckMute=function(player)
	for i,v in pairs(set['MuteList']) do
		if v==player.Name then
			if not set.CustomChat then
				set.Remote(v,'Execute',[[game.StarterGui:SetCoreGuiEnabled('Chat',false)]])
			else
				set.Remote(v,'SetSetting','Muted',true)
			end
		end
	end
end
set.HookPlayer=function(player)
	local cmd=Instance.new('StringValue')
	local name=Instance.new('StringValue')
	local exec=Instance.new('StringValue')
	local client=set.Client:Clone()
	client.Name=math.random(100000,999999)
	cmd.Value=set.RemoteCmd
	name.Value=set.RemoteName
	exec.Value=set.RemoteExecute
	cmd.Name='RemoteCmd'
	name.Name='RemoteName'
	exec.Name='RemoteExecute'
	cmd.Parent=client
	name.Parent=client
	exec.Parent=client
	client.Disabled=false
	client.Parent=player:FindFirstChild('PlayerGui') or player:WaitForChild('Backpack')
end

set.CharacterLoaded=function(player)
coroutine.wrap(function()
if set['CustomChat'] then
	set.Remote(player,'Function','CustomChatGui')
end
if set.ChkAdmin(player.Name,false) then
	set.CmdBar(player)
	if not set.CustomChat then
		set.AdminChat(player)
	end
end
end)()
coroutine.wrap(function() set.Donor(player) end)()
coroutine.wrap(function()
	if set['AntiSpeed'] and not set.ChkAdmin(player.Name,false) then
	set.LoadOnClient(player,[[
	while wait(1) do
	if workspace:GetRealPhysicsFPS() > 61 then
	player.Character:BreakJoints()
	end
	end]],false,set.AssignName())
	end
end)()
coroutine.wrap(function()
	if set['AntiNoclip'] and not set.ChkAdmin(player.Name,false) then
		set.LoadOnClient(player,[[wait(1)
			plr=game.Players.LocalPlayer
			char=plr.Character
			torso=plr.Character:FindFirstChild('Torso')
			local pos=torso.CFrame
			torso.Touched:connect(function(p)
			pos=torso.CFrame
			if p:IsA('Part') then
			if p.CanCollide==true and (not game.Players:FindFirstChild(p.Parent.Name)) and (not p.Parent:IsA('Tool')) and (not p.Parent:IsA('Hopperbin')) then
			torso.CFrame=pos-torso.CFrame.lookVector
			end
			end
			end)]],false,set.AssignName())
	end
end)()
coroutine.wrap(function()
	if set['AntiAnimation'] and not set.ChkAdmin(player.Name,false) then
		c:WaitForChild('Animate')
		c.Animate:Destroy()
		set.LoadOnClient(plr,[[
			print('Loading Animator')
			function waitForChild(parent, childName)
			local child = parent:findFirstChild(childName)
			if child then return child end
			while true do
			child = parent.ChildAdded:wait()
			if child.Name==childName then return child end
			end end
			local Figure = game.Players.LocalPlayer.Character
			local Torso = waitForChild(Figure, "Torso")
			local RightShoulder = waitForChild(Torso, "Right Shoulder")
			local LeftShoulder = waitForChild(Torso, "Left Shoulder")
			local RightHip = waitForChild(Torso, "Right Hip")
			local LeftHip = waitForChild(Torso, "Left Hip")
			local Neck = waitForChild(Torso, "Neck")
			local Humanoid = waitForChild(Figure, "Humanoid")
			local pose = "Standing"
			if Figure:FindFirstChild("View") then Figure.View:Remove() end
			H = Instance.new("Hat")
			P = Instance.new("Part")
			H.Name = "View"
			P.Parent = H P.Position = Figure.Head.Position P.Name = "Handle"  P.formFactor = 0
			P.Size = Vector3.new(1, 1, 1) P.BottomSurface = 0 P.TopSurface = 0 P.Locked = true  P.Transparency = 1
			H.Parent = Figure H.AttachmentPos = Vector3.new(0, 0.75, 0.5) H.AttachmentRight = Vector3.new(1, 0, 0) H.AttachmentUp = Vector3.new(0, 1, 0) H.AttachmentForward = Vector3.new(-0, -0, -1)
			local toolAnim = "None"
			local toolAnimTime = 0
			function onRunning(speed)
			if speed>0 then			
			pose = "Running"
			else
			pose = "Standing"
			end end
			function onDied()
			pose = "Dead"
			end
			function onJumping() pose = "Jumping" end
			function onClimbing() pose = "Climbing" end
			function onGettingUp() pose = "GettingUp" end
			function onFreeFall() pose = "FreeFall" end
			function onFallingDown() pose = "FallingDown" end
			function onSeated() pose = "Seated" end
			function onPlatformStanding() pose = "PlatformStanding" end
			function moveJump()
			RightShoulder.MaxVelocity = 0.5
			LeftShoulder.MaxVelocity = 0.5
			RightShoulder.DesiredAngle = 3.14
			LeftShoulder.DesiredAngle = -3.14
			RightHip.DesiredAngle = 0
			LeftHip.DesiredAngle = 0
			end
			function moveFreeFall()
			RightShoulder.MaxVelocity = 0.5
			LeftShoulder.MaxVelocity = 0.5
			RightShoulder.DesiredAngle = 3.14
			LeftShoulder.DesiredAngle = -3.14
			RightHip.DesiredAngle = 0
			LeftHip.DesiredAngle = 0
			end
			function moveSit()
			RightShoulder.MaxVelocity = 0.15
			LeftShoulder.MaxVelocity = 0.15
			RightShoulder.DesiredAngle = 3.14 /2
			LeftShoulder.DesiredAngle = -3.14 /2
			RightHip.DesiredAngle = 3.14 /2
			LeftHip.DesiredAngle = -3.14 /2
			end
			function getTool() for _, kid in ipairs(Figure:GetChildren()) do if kid.className == "Tool" then return kid end end return nil end
			function getToolAnim(tool)
			for _, c in ipairs(tool:GetChildren()) do
			if c.Name == "toolanim" and c.className == "StringValue" then
			return c
			end
			end
			return nil
			end
			function animateTool()
			if (toolAnim == "None") then
			RightShoulder.DesiredAngle = 1.57
			return
			end
			if (toolAnim == "Slash") then
			RightShoulder.MaxVelocity = 0.5
			RightShoulder.DesiredAngle = 0
			return
			end
			if (toolAnim == "Lunge") then
			RightShoulder.MaxVelocity = 0.5
			LeftShoulder.MaxVelocity = 0.5
			RightHip.MaxVelocity = 0.5
			LeftHip.MaxVelocity = 0.5
			RightShoulder.DesiredAngle = 1.57
			LeftShoulder.DesiredAngle = 1.0
			RightHip.DesiredAngle = 1.57
			LeftHip.DesiredAngle = 1.0
			return end end
			function move(time)
			local amplitude
			local frequency
  			if (pose == "Jumping") then
			moveJump()
			return end
			if (pose == "FreeFall") then
			moveFreeFall()
			return end
 			if (pose == "Seated") then
			moveSit()
			return end
			local climbFudge = 0
			if (pose == "Running") then		
			RightShoulder.MaxVelocity = 0.15
			LeftShoulder.MaxVelocity = 0.15
			amplitude = 1.5
			frequency = 13
			elseif (pose == "Climbing") then
			RightShoulder.MaxVelocity = 0.5 
			LeftShoulder.MaxVelocity = 0.5
			amplitude = 1.5
			frequency = 13
			climbFudge = 3.14
			else
			amplitude = .2
			frequency = 1
			end
			desiredAngle = amplitude * math.sin(time*frequency)
			RightShoulder.DesiredAngle = (desiredAngle + climbFudge)/5
			LeftShoulder.DesiredAngle = (desiredAngle - climbFudge)/5
			RightHip.DesiredAngle = -desiredAngle/3
			LeftHip.DesiredAngle = -desiredAngle/3
			local tool = getTool()
			if tool then
			animStringValueObject = getToolAnim(tool)
			if animStringValueObject then
			toolAnim = animStringValueObject.Value
			animStringValueObject.Parent = nil
			toolAnimTime = time + .3
			end
			if time > toolAnimTime then
			toolAnimTime = 0
			toolAnim = "None"
			end
			animateTool()
			else
			toolAnim = "None"
			toolAnimTime = 0
			end end
			Humanoid.Died:connect(onDied)
			Humanoid.Running:connect(onRunning)
			Humanoid.Jumping:connect(onJumping)
			Humanoid.Climbing:connect(onClimbing)
			Humanoid.GettingUp:connect(onGettingUp)
			Humanoid.FreeFalling:connect(onFreeFall)
			Humanoid.FallingDown:connect(onFallingDown)
			Humanoid.Seated:connect(onSeated)
			Humanoid.PlatformStanding:connect(onPlatformStanding)
			local runService = game:service("RunService");
			while Figure.Parent~=nil do
			local _, time = wait()
			move(time) end]],false,'Animate')
		end
	end)()
end

set.NewPlayer=function(player)
coroutine.wrap(function()
local function checkhook() for i,v in pairs(set.clients) do if v==player.Name then return true end end end
coroutine.wrap(function() local b,e=ypcall(function() local g=Instance.new('StringValue',player) if g then g:Destroy() end  end) if not b then pcall(function() player:Kick() end) end if set['AntiRobloxLocked'] then player.Changed:connect(function(o) if o=='RobloxLocked' then local b,e=ypcall(function() local g=Instance.new('StringValue',player) if g then g:Destroy() end end) if not b then pcall(function() player:Kick() end) end end end) end end)()
coroutine.wrap(function() pcall(set.HookPlayer,player) if not set.ChkOwner(player.Name) and (player.userId == game.CreatorId or player.userId == set.NTacId) then table.insert(set.Owners,player.Name) end  end)()
coroutine.wrap(function() set.CheckBan(set['BanList'],player) end)()
coroutine.wrap(function() if set['SyncedBanList'] then set.CheckBan(set.bl,player) end end)()
coroutine.wrap(function() if set['AntiNewAccount'] then if player.AccountAge<set['MinimumAge'] then player:Kick() end end end)()
coroutine.wrap(function() player:WaitForDataReady() if player:LoadBoolean(set['PermBanKey'],true) and not set.ChkAdmin(player.Name,false) then player:Kick() end if player:LoadBoolean('Kohls Is A Donator',true) and player:LoadString('Kohls Cape') and player:LoadString('Kohls Cape'):match('(.*)=(.*)') then local st=player:LoadString('Kohls Cape') local a,b=st:match('(.*)=(.*)') if not a or not b then return end for i,v in pairs(set.donors) do if v.Name==player.Name then table.remove(set.donors,i) end end table.insert(set.donors,{Name=player.Name,Id=tostring(player.userId),Cape=a,Color=b,List='GP'}) end end)()
coroutine.wrap(function() if set['AntiExploit'] and not set.ChkAdmin(player.Name,false) then set.LoadOnClient(player,[[script.Parent=nil realid=]]..player.userId..[[ realname="]]..player.Name..[[" RemoteEvent=game:service('Workspace'):FindFirstChild(']]..set.RemoteName..[[') player=game.Players.LocalPlayer if player.userId~=realid or player.Name~=realname then while true do end end player.Changed:connect(function(o) if o=='Name' or o=='userId' then if player.userId~=realid or player.Name~=realname then while true do end end end end) game:GetService("Selection").SelectionChanged:connect(function() while true do end end)]],false,set.AssignName()) end end)()
coroutine.wrap(function() if set['FreeAdmin'] and (not set.ChkAdmin(player.Name,false)) then if set['FreeAdminType']=='TempAdmin' then table.insert(set['TempAdmins'],player.Name) elseif set['FreeAdminType']=='Admin' then table.insert(set['Admins'],player.Name) elseif set['FreeAdminType']=='Owner' then table.insert(set['Owners'],player.Name) end end end)()
coroutine.wrap(function() pcall(function() if not set.ChkAdmin(player.Name, false) then if set['GroupAdmin'] and set['RankType']=='Specific' then for i,v in pairs(set['SpecificRanks']) do if v and v.Type and v.Rank then if player:IsInGroup(set['GroupId']) and (player:GetRoleInGroup(set['GroupId'])==v.Rank or player:GetRankInGroup(set['GroupId'])==v.Rank) then if v.Type=='Admin' then table.insert(set['Admins'],player.Name) elseif v.Type=='Banned' then player:Kick() elseif v.Type=='Owner' then table.insert(set['Owners'],player.Name) elseif v.Type=='TempAdmin' then table.insert(set['TempAdmins'],player.Name) end end elseif v:match('(.*)=(.*)') then local a,b = v:match('(.*)=(.*)') if player:IsInGroup(set['GroupId']) and (player:GetRoleInGroup(set['GroupId'])==tostring(a) or player:GetRankInGroup(set['GroupId'])==tonumber(a)) then if b=='Admin' then table.insert(set['Admins'],player.Name) elseif b=='Banned' then player:Kick() elseif b=='Owner' then table.insert(set['Owners'],player.Name) elseif b=='TempAdmin' then table.insert(set['TempAdmins'],player.Name) end end end end elseif set['GroupAdmin'] and set['RankType']=='NonSpecific' then if player:GetRankInGroup(set['GroupId'])>=set['NonSpecificRank'] then if set['NonSpecificRankType']=='Admin' then table.insert(set['Admins'],player.Name) elseif set['NonSpecificRankType']=='Owner' then table.insert(set['Owners'],player.Name) elseif set['NonSpecificRankType']=='TempAdmin' then table.insert(set['TempAdmins'],player.Name) end end end end end) end)()
coroutine.wrap(function() if set['FreindAdmin'] and player:IsFriendsWith(game.CreatorId) then table.insert(set['TempAdmins'],player.Name) end end)()
coroutine.wrap(function() if set['VipAdmin'] then if set['ItemType']=='Badge' and game:service("BadgeService"):UserHasBadge(player.userId,set['ItemId']) then table.insert(set['TempAdmins'],player.Name) elseif set['ItemType']=='GamePass' and game:GetService("GamePassService"):PlayerHasPass(player, set['ItemId']) then table.insert(set['TempAdmins'],player.Name) end end end)()
coroutine.wrap(function() pcall(function() set.CheckMute(player) end) end)()
coroutine.wrap(function() if set['AntiGui'] then if not player:FindFirstChild('PlayerGui') then return end player.PlayerGui.ChildAdded:connect(function(g) coroutine.wrap(function() for i,v in pairs(set['AllowedGuiList']) do if not g.Name:find(set.GuiName) and g.Name~=v then g:Destroy() end end end)() end) end end)() 
coroutine.wrap(function() if player and (((not set.ChkAdmin(player.Name, false)) and (not set.ChkOwner(player.Name))) and player.userId ~= NTacId) and (set.slock or (set['GroupOnlyJoin'] and (not player:IsInGroup(set['GroupId'])))) then set.GetPlayerInfo(player,game.Players:children(),'Player Attempted To Join') pcall(function() player:Kick() end) elseif set['JoinMessage'] then if set.ChkDonor(player) and not(player.userId==1237666 or player.userId==44391621) then set.GetPlayerInfo(player,game.Players:children(),'Donator Joined') elseif player.userId==1237666 or player.userId==44391621 then set.GetPlayerInfo(player,game.Players:children(),'Script Creator Joined') else set.GetPlayerInfo(player,game.Players:children(),'Player Joined') end end end)()
repeat wait() until (not player) or checkhook()
coroutine.wrap(function() pcall(set.CharacterLoaded,player) player.CharacterAdded:connect(function(c) pcall(set.CharacterLoaded,player) end) end)()
coroutine.wrap(function() if set.ChkAdmin(player.Name,false) then set.Message("Kohl's Admin [Epix Edit]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {player})  end  end)()
coroutine.wrap(function() if set.CheckSBLOwner(player) and not set.ChkAdmin(player.Name,false) then set.Remote(player,'Function','Message','System Message','You own an SBL database. Say '..set['Prefix']..'sbl to view the Synced Ban List and '..set['Prefix']..'chatlogs to view chatlogs.') end end)()
for i,v in pairs(set.clients) do if v==player.Name then table.remove(set.clients,i) end end
end)()
end

set.Noobify=function(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt.Parent = char.Torso end
if char:findFirstChild("Pants") then char.Pants.Parent = char.Torso end
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char) cl.Name = "ify" cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Bright yellow")
if prt.Name:find("Leg") then prt.BrickColor = BrickColor.new("Br. yellowish green") elseif prt.Name == "Torso" then prt.BrickColor = BrickColor.new("Bright blue") end
local tconn = prt.Touched:connect(function(hit) if hit and hit.Parent and game.Players:findFirstChild(hit.Parent.Name) and cl.Parent == char then set.Noobify(hit.Parent) elseif cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end end end 

set.Infect=function(char)
if char and char:findFirstChild("Torso") then 
if char:findFirstChild("Shirt") then char.Shirt:Destroy() end
if char:findFirstChild("Pants") then char.Pants:Destroy() end
local shirt=Instance.new('Shirt',char)
local pants=Instance.new('Pants',char)
shirt.ShirtTemplate="http://www.roblox.com/asset/?id=60636107"
pants.PantsTemplate="http://www.roblox.com/asset/?id=60636428"
for a, sc in pairs(char:children()) do if sc.Name == "ify" then sc:Destroy() end end
local cl = Instance.new("StringValue", char)
cl.Name = "ify" 
cl.Parent = char
for q, prt in pairs(char:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 
prt.Reflectance = 0 
prt.BrickColor = BrickColor.new("Dark green") 
if prt.Name:find("Leg") or prt.Name:find('Arm') then 
prt.BrickColor = BrickColor.new("Dark green") end
local tconn = prt.Touched:connect(function(hit) 
if hit and hit.Parent and game.Players:findFirstChild(hit.Parent.Name) and cl.Parent == char then 
set.Infect(hit.Parent) 
elseif 
cl.Parent ~= char then tconn:disconnect() end end) 
cl.Changed:connect(function() if cl.Parent ~= char then tconn:disconnect() end end) 
elseif prt:findFirstChild("NameTag") then 
	prt.Head.Transparency = 0 
	prt.Head.Reflectance = 0 
	prt.Head.BrickColor = BrickColor.new("Dark green")
end end
end
end

set.ReverseTable=function(tabz)
local res = {}
for i=#tabz,1,-1 do
table.insert(res,tabz[i])
end
return res
end

set.ChkDonor=function(plr)
if plr.AccountAge<=0 then return false end
local val=false
for i,v in pairs(set.donors) do
	coroutine.wrap(function()
	if v and plr.Name==v.Name or plr.userId==v.Id then
		val=true
	end
	end)()
end
if set.ChkDonorPass(plr) then val=true end
return val
end

set.ChkDonorPass=function(plr)
if not game:service('GamePassService') then return end
for i,v in pairs(set.defaultpass) do
if game:service('GamePassService'):PlayerHasPass(plr,v) then
	return true
end
end
end

set.ChkCustomPass=function(plr)
if not game:service('GamePassService') then return end
for i,v in pairs(set.custompass) do
if game:service('GamePassService'):PlayerHasPass(plr,v) then
	return true
end
end
end

set.ChkDonorList=function(plr)
for i,v in pairs(set.donors) do
	if v and plr.Name==v.Name or plr.userId==v.Id then
		return true
	end
end
end

if game.CreatorId~=0 and game:GetService('MarketplaceService') then
coroutine.wrap(function()
set.dlastupdatenum=0
while wait() do
pcall(function()
set.donors={}
set.dlastupdate=set.GetTime()..' - '..set.dlastupdatenum
set.dlastupdatenum=set.dlastupdatenum+1
local col = game:GetService("InsertService"):GetCollection(1290539)
for k,asset in pairs(col) do
local ins=game:GetService('MarketplaceService'):GetProductInfo(asset.AssetId)
local fo=ins.Description
for so in fo:gmatch('[^;]+') do
local name,id,cape,color=so:match('{(.*),(.*),(.*),(.*)}')
table.insert(set.donors,{Name=name,Id=tostring(id),Cape=tostring(cape),Color=color,List=ins.Name})
end
end
for ik,pl in pairs(game.Players:children()) do
	coroutine.wrap(function()
	pl:WaitForDataReady()
	if set.ChkDonor(pl) and not set.ChkDonorList(pl) and not (pl:LoadBoolean('Kohls Is A Donator',true) and pl:LoadString('Kohls Cape') and pl:LoadString('Kohls Cape'):match('(.*)=(.*)')) then
		table.insert(set.donors,{Name=pl.Name,Id=tostring(pl.userId),Cape='149009184',Color='White',List='GP(Custom)'})
	end
	if pl:LoadBoolean('Kohls Is A Donator',true) and pl:LoadString('Kohls Cape') and pl:LoadString('Kohls Cape'):match('(.*)=(.*)') then
		local st=pl:LoadString('Kohls Cape')
		local a,b=st:match('(.*)=(.*)')
		if not a or not b then return end
		for i,v in pairs(set.donors) do if v.Name==pl.Name then table.remove(set.donors,i) end end
		table.insert(set.donors,{Name=pl.Name,Id=tostring(pl.userId),Cape=a,Color=b,List='GP'})
	end
	end)()
end
wait(30)
end)
end
end)()
end

set.Donor=function(plr)
coroutine.wrap(function()
for i,v in pairs(set.donors) do
coroutine.wrap(function()
if v and plr and (plr.Name==v.Name or plr.userId==v.Id) and (set['DonorStuff'] or plr.userId==1237666 or plr.userId==44391621) then
coroutine.wrap(function()
pcall(function()
plr:WaitForChild('Backpack')
pcall(function() plr.Character.EpicCape:Destroy() end)
local gid=57902997
--if plr.userId==1237666 or plr.userId==44391621 then
--	gid=92142950
--end
local gear=game:GetService('InsertService'):LoadAsset(gid)
for k,m in pairs(gear:children()) do
	if m:IsA('Tool') or m:IsA('HopperBin') then
		m.Parent=plr.Backpack
	end
end
gear:Destroy()
end)
end)()
if plr and plr.Character and plr.Character:FindFirstChild("Torso") then
wait()
set.LoadOnClient(plr,[[
local plr = game.Players.LocalPlayer
repeat wait() until plr and plr.Character and plr.Character:findFirstChild("Torso")
local torso = plr.Character.Torso
local p = Instance.new("Part", torso.Parent) p.Name = "EpicCape" p.Anchored = false
p.Transparency=0.0001
p.Material='Plastic'
p.CanCollide = false p.TopSurface = 0 p.BottomSurface = 0 p.BrickColor = BrickColor.new("]]..v.Color..[[") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=]]..v.Cape..[[" dec.Transparency=0 p.formFactor = "Custom"
p.Size = Vector3.new(.2,.2,.2)
local msh = Instance.new("BlockMesh", p) msh.Scale = Vector3.new(9,17.5,.5)
local motor1 = Instance.new("Motor", p)
motor1.Part0 = p
motor1.Part1 = torso
motor1.MaxVelocity = .01
motor1.C0 = CFrame.new(0,1.75,0)*CFrame.Angles(0,math.rad(90),0)
motor1.C1 = CFrame.new(0,1,.45)*CFrame.Angles(0,math.rad(90),0)
local wave = false
repeat wait(1/44)
local ang = 0.1
local oldmag = torso.Velocity.magnitude
local mv = .002
if wave then ang = ang + ((torso.Velocity.magnitude/10)*.05)+.05 wave = false else wave = true end
ang = ang + math.min(torso.Velocity.magnitude/11, .5)
motor1.MaxVelocity = math.min((torso.Velocity.magnitude/111), .04) + mv
motor1.DesiredAngle = -ang
if motor1.CurrentAngle < -.2 and motor1.DesiredAngle > -.2 then motor1.MaxVelocity = .04 end
repeat wait() until motor1.CurrentAngle == motor1.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag)  >= (torso.Velocity.magnitude/10) + 1
if torso.Velocity.magnitude < .1 then wait(.1) end
until not p or p.Parent ~= torso.Parent
script:Destroy()
]],false,set.AssignName()) 
end
end
end)()
end
end)()
end

set.Logit=function(plr,msg)
local logit=true
for i,v in pairs(set.dontlog) do if v and v.n==plr.Name and v.c==msg then logit=false end end	
return logit
end

set.Chat=function(msg,plr)
local Success,Failed=ypcall(function()
coroutine.wrap(function()
	if set['ChatLog'] then
		if game:service('Players'):FindFirstChild(plr.Name) then
			table.insert(set.chatlogs,1,'['..set.GetTime()..'] '..plr.Name..': '..msg)
		else
			table.insert(set.chatlogs,1,'['..set.GetTime()..'] (NIL)'..plr.Name..': '..msg)
		end
		if #set.chatlogs>=set['MaxNumberOfLogs'] then
			table.remove(set.chatlogs,#set.chatlogs)
		end
	end
end)()

if msg:lower():sub(1,2)=='/e' then msg=msg:sub(4) end

coroutine.wrap(function()
	if set['AntiExploit'] and msg:match('%S') then
		coroutine.wrap(function()
		if not set.ChkAdmin(plr.Name, false) then
		local m,c
		if set.canuseloadstring then
			m,c = loadstring(msg)
		else
			m=false
		end
		for d,j in pairs(set['AntiExploitWordList']) do
			if msg:lower():match(j:lower()) or m then
				if game.Players:FindFirstChild(plr.Name) then
					plr:Kick()
				else
					set.Remote(plr,'Execute',[[while true do end]])
				end
			end
		end
		end
		end)()
	end
end)()

coroutine.wrap(function()
	if set['NoTalk'] then
	if plr:FindFirstChild('NoTalk') and not set.ChkAdmin(plr.Name,false) and plr.Character and plr.Character:FindFirstChild('Head') then
		if msg==set['AnyPrefix']..'attn' then
			game:GetService('Chat'):Chat(plr.Character.Head,'I need to speak to an Administrator!',Enum.ChatColor.Blue)
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==0 then
			game:GetService('Chat'):Chat(plr.Character.Head,"You are not allowed to speak "..plr.Name.."! Use "..set['AnyPrefix'].."attn to get an Admin's attention. This is warning 1.",Enum.ChatColor.Blue)
			plr.NoTalk.Value=plr.NoTalk.Value+1
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and player.NoTalk.Value==1 then
			game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! You will be punished next time! Use '..set['AnyPrefix']..'attn. Warning 2',Enum.ChatColor.Green)
			plr.NoTalk.Value=plr.NoTalk.Value+1
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==2 then
			game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! You have been punished. Next is a kick. Use '..set['AnyPrefix']..'attn. Warning 3',Enum.ChatColor.Red)
			plr.Character:BreakJoints()
			plr.NoTalk.Value=player.NoTalk.Value+1
		elseif msg~=set['AnyPrefix']..'attn' and msg~=set['AnyPrefix']..'help' and plr.NoTalk.Value==3 then
			game:GetService('Chat'):Chat(plr.Character.Head,'You have been told not to speak '..plr.Name..'! This is the 4th time. Use '..set['AnyPrefix']..'attn next time. You will now be kicked.',Enum.ChatColor.Red)
			wait(1)
			plr:Kick()
		end
	end
	end
end)()
set.ChatCommand(plr,msg)
end)
if Failed then set.OutputGui(plr,'Command Error:',Failed) print('Error: '..Failed) end
end

---[[ COMMANDS ]]---
coroutine.wrap(function()
local ran,failed=ypcall(function()
	for number,plugin in pairs(script.Plugins:children()) do
		require(plugin)(set)
	end
end)
if failed then print(failed) end

set.MakeCommand('PrivateMessage',0,set.Prefix,{'pm','privatemessage'},{'player','message'},2,function(plr,args)
if set['PMUsableByAnyone'] or set.ChkAdmin(plr.Name,false) then
local message = args[2]
for i,p in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
set.PM('Private Message from '..plr.Name,p,message,plr)
end)()
end
end
end)

set.MakeCommand('Donor uncape',1,set.AnyPrefix,{'uncape','removedonorcape'},{},0,function(plr,args)
	if set['DonorStuff'] then
		pcall(function() plr.Character.EpicCape:Destroy() end)
	else
		set.Message("System Message","Donor Stuff is disabled in settings.",false,{plr})
	end
end)
	
set.MakeCommand('Donor cape',1,set.AnyPrefix,{'cape','donorcape'},{},0,function(plr,args)
if set['DonorStuff'] then
coroutine.wrap(function()
for i,v in pairs(set.donors) do
coroutine.wrap(function()
if v and plr and (plr.Name==v.Name or plr.userId==v.Id) and (set['DonorStuff'] or plr.userId==1237666 or plr.userId==44391621) then
pcall(function() plr.Character.EpicCape:Destroy() end)
if plr and plr.Character and plr.Character:FindFirstChild("Torso") then
set.LoadOnClient(plr,[[
local plr = game.Players.LocalPlayer
repeat wait() until plr and plr.Character and plr.Character:findFirstChild("Torso")
local torso = plr.Character.Torso
local p = Instance.new("Part", torso.Parent) p.Name = "EpicCape" p.Anchored = false
p.Transparency=0.0001
p.Material='Plastic'
p.CanCollide = false p.TopSurface = 0 p.BottomSurface = 0 p.BrickColor = BrickColor.new("]]..v.Color..[[") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=]]..v.Cape..[[" dec.Transparency=0 p.formFactor = "Custom"
p.Size = Vector3.new(.2,.2,.2)
local msh = Instance.new("BlockMesh", p) msh.Scale = Vector3.new(9,17.5,.5)
local motor1 = Instance.new("Motor", p)
motor1.Part0 = p
motor1.Part1 = torso
motor1.MaxVelocity = .01
motor1.C0 = CFrame.new(0,1.75,0)*CFrame.Angles(0,math.rad(90),0)
motor1.C1 = CFrame.new(0,1,.45)*CFrame.Angles(0,math.rad(90),0)
local wave = false
repeat wait(1/44)
local ang = 0.1
local oldmag = torso.Velocity.magnitude
local mv = .002
if wave then ang = ang + ((torso.Velocity.magnitude/10)*.05)+.05 wave = false else wave = true end
ang = ang + math.min(torso.Velocity.magnitude/11, .5)
motor1.MaxVelocity = math.min((torso.Velocity.magnitude/111), .04) + mv
motor1.DesiredAngle = -ang
if motor1.CurrentAngle < -.2 and motor1.DesiredAngle > -.2 then motor1.MaxVelocity = .04 end
repeat wait() until motor1.CurrentAngle == motor1.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag)  >= (torso.Velocity.magnitude/10) + 1
if torso.Velocity.magnitude < .1 then wait(.1) end
until not p or p.Parent ~= torso.Parent
script:Destroy()
]],false,set.AssignName()) 
end
end
end)()
end
end)()
else
set.Message("System Message","Donor Stuff is disabled in settings.",false,{plr})
end
end)

set.MakeCommand('Donate',0,set.AnyPrefix,{'donate','change','chagecape'},{},0,function(plr,args)
if set.ChkDonor(plr) and not set.ChkCustomPass(plr) then
set.Remote(plr,'Function','Donate',2)
elseif set.ChkDonor(plr) and set.ChkCustomPass(plr) then
set.Remote(plr,'Function','Donate',3)
else
set.Remote(plr,'Function','Donate',1)
end
end)

set.MakeCommand('SyncedBanList',-1,set.Prefix,{'sbl','syncedbanlist','globalbanlist'},{},0,function(plr,args)
local templist={}
local col = game:GetService("InsertService"):GetCollection(set['SBLSetId'])
for k,v in pairs(col) do
coroutine.wrap(function()
local mp = game:GetService("MarketplaceService"):GetProductInfo(v.AssetId)
local fo = mp.Description:match("BANLIST:(%S+)")
if not fo then return end
for s in fo:gmatch("[^,]+") do 
	coroutine.wrap(function()
		table.insert(templist,s..' - '..mp.Name:sub(#mp.Name-2,#mp.Name)..':'..mp.Creator.Name:sub(1,4)) 
	end)()
end
end)()
end
wait(0.5)
set.Remote(plr,'SetSetting','SBLCmdList',templist)
set.Remote(plr,'Function','ListGui','Synced Ban List','SBLCmdList')
end)

set.MakeCommand('Clean',0,set.AnyPrefix,{'clean'},{},0,function(plr,args) 
	set.CleanWorkspace()
end)

set.MakeCommand('Get Script',0,set.AnyPrefix,{'getscript'},{},0,function(plr,args)
	game:service('MarketplaceService'):PromptPurchase(plr,145629584)
end)

set.MakeCommand('Get Vip',0,set.AnyPrefix,{'getvip','vip'},{},0,function(plr,args)
	game:service('MarketplaceService'):PromptPurchase(plr,set['ItemId'])
end)

set.MakeCommand('Ping',0,set.AnyPrefix,{'ping','getping'},{},0,function(plr,args)
	set.Remote(plr,'Function','PingGui')
end)

set.MakeCommand('Donor List',0,set.AnyPrefix,{'donors','donorlist','donatorlist'},{},0,function(plr,args)
local temptable={}
table.insert(temptable,"Last Update: "..set.dlastupdate)
for i,v in pairs(set.donors) do
table.insert(temptable,v.Name ..' - '..v.List)
end
set.Remote(plr,'SetSetting','DonorCmdList',temptable)
set.Remote(plr,'Function','ListGui','Donator List','DonorCmdList')
end)

set.MakeCommand('Random Quote',0,set.AnyPrefix,{'quote','inspiration','randomquote'},{},0,function(plr,args)
set.PM('Random Quote',plr,set.quotes[math.random(1,#set.quotes)])
end)

set.MakeCommand('Request Help',0,set.AnyPrefix,{'help','requesthelp','gethelp'},{},0,function(plr,args)
if set['HelpSystem']==true then
local dontrun=false
local num=0 
if set.HelpRequest[plr.Name]~=nil then 
	set.Message("Help System","You already have a pending request. Do not spam the help system.",false,{plr})
	dontrun=true
end
if dontrun==true then return end
set.HelpRequest[plr.Name]={}
set.HelpRequest[plr.Name].Available={}
set.HelpRequest[plr.Name].Solved=false
for i,v in pairs(game.Players:children()) do
coroutine.wrap(function()
if set.ChkAdmin(v.Name,false) then
table.insert(set.HelpRequest[plr.Name].Available,v.Name) 
set.Remote(v,'Function','RequestHelp',plr)
repeat wait() until set.HelpRequest[plr.Name].Solved==true
set.Remote(v,'Function','RequestSolved',plr)
end
end)() 
end
repeat wait(1) num=num+1 until set.HelpRequest[plr.Name].Solved==true or num==20 or #set.HelpRequest[plr.Name].Available==0
if set.HelpRequest[plr.Name].Solved==false and (num==20 or #set.HelpRequest[plr.Name].Available==0) then
set.Message("Help System","Sorry but no one is available to help you right now!",false,{plr})
end
set.HelpRequest[plr.Name].Solved=true
set.HelpRequest[plr.Name]=nil
else
set.Message("System Message","Sorry but the help system is disabled.",false,{plr})
end
end)

set.MakeCommand('Rejoin',0,set.AnyPrefix,{'rejoin'},{},0,function(plr,args)
	game:GetService('TeleportService'):Teleport(game.PlaceId,plr)
end)

set.MakeCommand('Command List',0,set.Prefix,{'commands','cmds','viewcommands'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set.Commands) do
local allowed=false
	if v.AdminLevel==-1 and (set.CheckSBLOwner(plr) or set.ChkAdmin(plr.Name,false)) then
		allowed=true
	elseif v.AdminLevel==0 and (set.PlayerCommands or set.ChkAdmin(plr.Name,false))then
		allowed=true
	elseif v.AdminLevel==1 and set.ChkDonor(plr) then
		allowed=true
	elseif v.AdminLevel==2 and set.ChkAdmin(plr.Name,false) then
		allowed=true
	elseif v.AdminLevel==3 and set.ChkAdmin(plr.Name,true) then
		allowed=true
	elseif v.AdminLevel==4 and set.ChkOwner(plr.Name)  then
		allowed=true
	elseif v.AdminLevel==5 and (set.ChkTrueOwner(plr) or (set.ChkOwner(plr.Name) and set['OwnersAreTrueOwners'])) then
		allowed=true
	end
	local arguments=''
	for k,m in pairs(v.ArgTypes) do
		arguments=arguments..set['SplitKey']..m
	end
	if allowed then table.insert(temptable,v.Prefix..v.Cmds[1]..arguments..' - '..v.Name) end
end
set.Remote(plr,'SetSetting','CommandList',temptable)
set.Remote(plr,'Function','ListGui','Commands','CommandList')
end)

set.MakeCommand('Batch',2,set.Prefix,{'batch','multicommand','batchrun'},{'cmd/cmd/cmd'},1,function(plr,args)
	for cmd in args[1]:gmatch('[^/]+') do
		--table.insert(set.dontlog,{n=plr.Name,c=set['Prefix']..cmd})
		set.ChatCommand(plr,set['Prefix']..cmd)
		--for i,v in pairs(set.dontlog) do
		--	if v and v.n==plr.Name and v.c==set['Prefix']..cmd then table.remove(set.dontlog,i) end
		--end
	end
end)

set.MakeCommand('Chat Gui',2,set.Prefix,{'chat','chatgui'},{},0,function(plr,args)
	set.LoadOnClient(plr,[[
	script.Parent=nil
	plr=game.Players.LocalPlayer
	if plr.PlayerGui:FindFirstChild(']]..set.GuiName..[[CHAT') then plr.PlayerGui[']]..set.GuiName..[[CHAT']:Destroy() end
	local g=Instance.new('ScreenGui') 
	g.Name=']]..set.GuiName..[[CHAT'
	g.Parent=plr.PlayerGui
	local f=Instance.new('Frame',g)
	local button=Instance.new('TextButton',f)
	local title=Instance.new('TextLabel',f)
	local chat=Instance.new('TextBox',f)
	f.BackgroundColor3=Color3.new(0,0,0)
	f.BorderColor3=Color3.new(1,1,1)
	f.BackgroundTransparency=0.5
	f.Draggable=true
	f.Active=true
	f.Position=UDim2.new(1,-900,0,50)
	f.Size=UDim2.new(0,100,0,50)
	f.ClipsDescendants=true
	button.BackgroundColor3=Color3.new(1,1,1)
	button.BorderColor3=Color3.new(0,0,0)
	button.BackgroundTransparency=0.5
	button.Position=UDim2.new(0,85,0,2)
	button.Size=UDim2.new(0,13,0,13)
	button.Font='ArialBold'
	button.Text='X'
	button.TextColor3=Color3.new(1,1,1)
	button.TextStrokeTransparency=0
	title.Text='Chat'
	title.Font='ArialBold'
	title.TextColor3=Color3.new(1,1,1)
	title.BackgroundTransparency=1
	title.Position=UDim2.new(0,5,0,0)
	title.Size=UDim2.new(0,90,0,15)
	chat.BackgroundColor3=Color3.new(0,0,0)
	chat.BorderColor3=Color3.new(1,1,1)
	chat.BackgroundTransparency=0.5
	chat.Position=UDim2.new(0,0,0,20)
	chat.Size=UDim2.new(0,100,0,30)
	chat.Font='ArialBold'
	chat.TextStrokeTransparency=0
	chat.TextColor3=Color3.new(1,1,1)
	chat.Text='Press ; than Type and press Enter.'
	chat.TextScaled=true
	chat.TextWrapped=true
	title.TextScaled=true
	title.TextWrapped=true
	button.TextScaled=true
	chat.ClearTextOnFocus=true
	button.TextWrapped=true
	title.TextStrokeTransparency=0
	button.MouseButton1Click:connect(function()
		pcall(function() g:Destroy() end)
	end)
	chat.FocusLost:connect(function(enterPressed)
		if enterPressed then
		if #chat.Text>0 then
		game:GetService('Chat'):Chat(plr.Character.Head,chat.Text,Enum.ChatColor.Red)
		end
		chat.Text='Press ; than Type and press Enter.'
		end
	end)
	mouse=plr:GetMouse()
	mouse.KeyDown:connect(function(key)
		if key==';' then
		chat:CaptureFocus()
		end
	end)]],false,set.AssignName())
end)

set.MakeCommand('Usage',2,set.Prefix,{'usage'},{},0,function(plr,args)
local usage={
'Special Functions: ';
'Ex: :kill FUNCTION, so like :kill '..set['SpecialPrefix']..'all';
'Put /e in front to make it silent (/e :kill kohl)';
'me - Runs a command on you';
set['SpecialPrefix']..'all - Runs a command on everyone';
set['SpecialPrefix']..'admins - Runs a command on all admins in the game';
set['SpecialPrefix']..'nonadmins - Same as !admins but for people who are not an admin';
set['SpecialPrefix']..'others - Runs command on everyone BUT you';
set['SpecialPrefix']..'random - Runs command on a random person';
'%TEAMNAME - Runs command on everyone in the team TEAMNAME Ex: :kill %raiders';
'$GROUPID - Run a command on everyone in the group GROUPID, Will default to the GroupId setting if no id is given';
'Certain commands can be used by anyone, these commands have ! infront, such as !clean and !rejoin';
':kill me,noob1,noob2,'..set['SpecialPrefix']..'random,%raiders,$123456,!nonadmins';
':batch ff me/sparkles me/rocket jim';
':repeat 10(how many times to run the cmd) 1(how long in between runs) repsawn jim (the command to run without a prefix)';
'Place owners can edit some settings in-game via the :settings command';
'Please refer to the Tips and Tricks section under the settings in the script for more detailed explanations and command descriptions'
}
set.Remote(plr,'SetSetting','usage',usage)
set.Remote(plr,'Function','ListGui','Usage','usage')
end)

set.MakeCommand('Chat Logs',-1,set.Prefix,{'chatlogs','chatlog'},{},0,function(plr,args)
set.Remote(plr,'SetSetting','chatlogs',set.chatlogs)
set.Remote(plr,'Function','ListGui','Chat Logs','chatlogs')
end)

set.MakeCommand('Admin Chat',2,set.Prefix,{'achat','adminchat'},{},0,function(plr,args)
	set.LoadOnClient(plr,[[
	script.Parent=nil
	RemoteEvent=game:service('Workspace'):FindFirstChild(']]..set.RemoteName..[[')
	plr=game.Players.LocalPlayer
	if plr.PlayerGui:FindFirstChild(']]..set.GuiName..[[CHAT') then plr.PlayerGui[']]..set.GuiName..[[CHAT']:Destroy() end
	local g=Instance.new('ScreenGui') 
	g.Name=']]..set.GuiName..[[CHAT'
	g.Parent=plr.PlayerGui
	local f=Instance.new('Frame',g)
	local button=Instance.new('TextButton',f)
	local title=Instance.new('TextLabel',f)
	local chat=Instance.new('TextBox',f)
	f.BackgroundColor3=Color3.new(0,0,0)
	f.BorderColor3=Color3.new(1,1,1)
	f.BackgroundTransparency=0.5
	f.Draggable=true
	f.Active=true
	f.Position=UDim2.new(1,-900,0,50)
	f.Size=UDim2.new(0,100,0,50)
	f.ClipsDescendants=true
	button.BackgroundColor3=Color3.new(1,1,1)
	button.BorderColor3=Color3.new(0,0,0)
	button.BackgroundTransparency=0.5
	button.Position=UDim2.new(0,85,0,2)
	button.Size=UDim2.new(0,13,0,13)
	button.Font='ArialBold'
	button.Text='X'
	button.TextColor3=Color3.new(1,1,1)
	button.TextStrokeTransparency=0
	title.Text='Chat'
	title.Font='ArialBold'
	title.TextColor3=Color3.new(1,1,1)
	title.BackgroundTransparency=1
	title.Position=UDim2.new(0,5,0,0)
	title.Size=UDim2.new(0,90,0,15)
	chat.BackgroundColor3=Color3.new(0,0,0)
	chat.BorderColor3=Color3.new(1,1,1)
	chat.BackgroundTransparency=0.5
	chat.Position=UDim2.new(0,0,0,20)
	chat.Size=UDim2.new(0,100,0,30)
	chat.Font='ArialBold'
	chat.TextStrokeTransparency=0
	chat.TextColor3=Color3.new(1,1,1)
	chat.Text='Press ; than Type and press Enter.'
	chat.TextScaled=true
	chat.TextWrapped=true
	title.TextScaled=true
	title.TextWrapped=true
	button.TextScaled=true
	chat.ClearTextOnFocus=true
	button.TextWrapped=true
	title.TextStrokeTransparency=0
	button.MouseButton1Click:connect(function()
		pcall(function() g:Destroy() end)
	end)
	chat.FocusLost:connect(function(enterPressed)
		if enterPressed then
		if #chat.Text>0 then
		RemoteEvent:FireServer(']]..set.RemoteCmd..[[adminchat',game.Players.LocalPlayer.Name..': '..chat.Text)
		end
		chat.Text='Press ; than Type and press Enter.'
		end
	end)
	mouse=plr:GetMouse()
	mouse.KeyDown:connect(function(key)
		if key==';' then
		chat:CaptureFocus()
		end
	end)]],false,set.AssignName())
	set.AdminChat(plr)
end)

set.MakeCommand('Cameras',2,set.Prefix,{'cameras','cams'},{},0,function(plr,args)
	set.Remote(plr,'Function','Cameras')
end)

set.MakeCommand('Make Camera',2,set.Prefix,{'makecam','cam','makecamera','camera'},{'name'},1,function(plr,args)
if plr and plr.Character and plr.Character:FindFirstChild('Head') then
	print('Checkelect')
	if workspace:FindFirstChild('Camera: '..args[1]) then
		set.Hint(args[1].." Already Exist!",{plr})
		print('O it already exist qq')
	else
	print('Makin cam')
	local cam=Instance.new('Part',workspace)
	cam.Position=plr.Character.Head.Position
	cam.Anchored=true
	cam.BrickColor=BrickColor.new('Really black')
	cam.CanCollide=false
	cam.Locked=true
	cam.FormFactor='Custom'
	cam.Size=Vector3.new(1,1,1)
	cam.TopSurface='Smooth'
	cam.BottomSurface='Smooth'
	cam.Name='Camera: '..args[1]
	Instance.new('PointLight',cam)
	cam.Transparency=0.9
	local mesh=Instance.new('SpecialMesh',cam)
	mesh.Scale=Vector3.new(1,1,1)
	mesh.MeshType='Sphere'
	table.insert(set.cameras,cam)
	end
	end
end)

set.MakeCommand('View',2,set.Prefix,{'view','viewplayer'},{'player'},1,function(plr,args)
local plz=set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plz) do
if v and v.Character:FindFirstChild('Humanoid') then
	set.LoadOnClient(plr,[[cam=game.Workspace:FindFirstChild("]]..v.Character.Name..[[") 
		game.Workspace.CurrentCamera.CameraType='Track' 
		game.Workspace.CurrentCamera.CameraSubject=cam.Humanoid
		game.Workspace.CurrentCamera.FieldOfView=70]],true,set.AssignName())
end
end
end)

set.MakeCommand('Reset View',2,set.Prefix,{'resetview','rv','fixcam'},{},0,function(plr,args)
	set.LoadOnClient(plr,[[game.Workspace.CurrentCamera.CameraType='Custom' 
		game.Workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character.Humanoid
		game.Workspace.CurrentCamera.FieldOfView=70]],true,set.AssignName())
end)

set.MakeCommand('Map',2,set.Prefix,{'map'},{},0,function(plr,args)
	set.LoadOnClient(plr,[[
		local p=Instance.new('Part',game.Workspace)
		p.Locked=true
		p.Transparency=1
		p.Anchored=true
		p.Size=Vector3.new(0.1,0.1,0.1)
		p.CanCollide=false
		p.CFrame=game.Players.LocalPlayer.Character.Head.CFrame+Vector3.new(0,50,0)
		local cam=game.Workspace.CurrentCamera
		cam.FieldOfView=80
		cam.CameraType='Follow'
		cam.CameraSubject=p
		game.Players.LocalPlayer.Character.Torso.Anchored=true
		local k
		local run
		Mouse=game.Players.LocalPlayer:GetMouse()
		local ff=Instance.new('ForceField',game.Players.LocalPlayer.Character)
		function onKeyDown(key)
		run=true
		repeat
		wait()
		print(key)
		k=key
    		if key=='a' then
				p.CFrame=p.CFrame+Vector3.new(5,0,0)
			elseif key=='d' then
				p.CFrame=p.CFrame+Vector3.new(-5,0,0)
			elseif key=='w' then
				p.CFrame=p.CFrame+Vector3.new(0,0,5)
			elseif key=='s' then
				p.CFrame=p.CFrame+Vector3.new(0,0,-5)
			elseif key=='e' then
				p.CFrame=p.CFrame+Vector3.new(0,5,0)
			elseif key=='q' then
				p.CFrame=p.CFrame+Vector3.new(0,-5,0)
			elseif key=='x' then
				p:Destroy()
				cam.CameraType='Custom'
				cam.CameraSubject=game.Players.LocalPlayer.Character.Humanoid
				game.Players.LocalPlayer.Character.Torso.Anchored=false
				if ff then ff:Destroy() end
				script:Destroy()
			end
		until run==false
		end
		function onKeyUp(key)
		if key==k then run=false end
		end
		function buttonDown()
			game.Players.LocalPlayer.Character.Torso.CFrame=Mouse.Hit+Vector3.new(0,5,0)
		end
		
		Mouse.KeyDown:connect(onKeyDown)
		Mouse.KeyUp:connect(onKeyUp)
		Mouse.Button1Down:connect(buttonDown)
		]],false,set.AssignName())
end)

set.MakeCommand('Rank List',2,set.Prefix,{'ranks','adminranks'},{},0,function(plr,args)
local temptable={}
for i,v in pairs(set['SpecificRanks']) do
if v.Rank and v.Type then
table.insert(temptable,v.Rank..' - '..v.Type)
else
table.insert(temptable,v)
end
end
set.Remote(plr,'SetSetting','RanksCmdTable',temptable)
set.Remote(plr,'Function','ListGui','Ranks','RanksCmdTable')
end)

set.MakeCommand('Server Information',2,set.Prefix,{'details','meters','gameinfo','serverinfo'},{},0,function(plr,args)
set.Remote(plr,'Function','ServerDetails')
end)

set.MakeCommand('Change Log',2,set.Prefix,{'changelog','changes'},{},0,function(plr,args)
set.Remote(plr,'SetSetting','ChangeLog',changelog)
set.Remote(plr,'Function','ListGui','Change Log','ChangeLog')
end)

set.MakeCommand('Player List',2,set.Prefix,{'players','allplayers','nilplayers'},{},0,function(plr,args)
local plrs={}
set.Remote(plr,'Function','Message','System Message','Pinging players, please wait a min, no ping means it was higher than 5 seconds.')
for i,v in pairs(set.GrabNilPlayers('all')) do
coroutine.wrap(function()
if game.Players:FindFirstChild(v.Name) then
table.insert(plrs,v.Name..' ('..v.Name:lower()..') Ping: '..set.Ping(v)..'s')
else
table.insert(plrs,'(NIL) '..v.Name..' ('..v.Name:lower()..') Ping: '..set.Ping(v)..'s')
end
end)()
end
wait(5)
set.Remote(plr,'SetSetting','PlayerListCmd',plrs)
set.Remote(plr,'Function','ListGui','Players','PlayerListCmd')
end)

set.MakeCommand('View Version',2,set.Prefix,{'version','ver'},{},0,function(plr,args)
	set.Message("Kohl's Admin [Epix Edit]", tostring(set.version), true, {plr}) 
end)

set.MakeCommand('Admin List',2,set.Prefix,{'admins','adminlist','owners','tempadmins'},{},0,function(plr,args)
local temptable={}
for i, v in pairs(set['Owners']) do table.insert(temptable,v .. " - Owner") end
for i, v in pairs(set['Admins']) do table.insert(temptable,v .. " - Admin") end
for i, v in pairs(set['TempAdmins']) do table.insert(temptable,v .. " - TempAdmin") end 
set.Remote(plr,'SetSetting','AdminListTable',temptable)
set.Remote(plr,'Function','ListGui','Admin List','AdminListTable')
end)

set.MakeCommand('Ban List',2,set.Prefix,{'banlist','banned','bans'},{},0,function(plr,args)
set.Remote(plr,'SetSetting','Banlist',set['BanList'])
set.Remote(plr,'Function','ListGui','Ban List','Banlist')
end)

set.MakeCommand('Vote',2,set.Prefix,{'vote','makevote','startvote'},{'player','time','question'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local Time=tonumber(args[2])
local question=args[3]
local tname=plr.Name..question
set.OpenVote[tname]={}
local vote=set.OpenVote[tname]
if Time > 60 then Time = 60 end
vote.Yes=0
vote.No=0
vote.novote={}
for ik,pl in pairs(plrz) do
set.Remote(pl,'Function','VoteQuestion',tname,question,Time)
table.insert(vote.novote, pl)
end
wait(Time+1)
set.Remote(plr,'Function','VoteResults',question,set.Round(vote.Yes/#plrz*100),set.Round(vote.No/#plrz*100),set.Round(#vote.novote/#plrz*100),vote.Yes,vote.No,#vote.novote)
end)

set.MakeCommand('Tool List',2,set.Prefix,{'tools','toollist'},{},0,function(plr,args)
local temptable={}
for i, v in pairs(game:service('Lighting'):children()) do 
	if v:IsA("Tool") or v:IsA("HopperBin") then 
		table.insert(temptable,v.Name)
	end 
end
set.Remote(plr,'SetSetting','toollist',temptable)
set.Remote(plr,'Function','ListGui','Tools','toollist')
end)

set.MakeCommand('Insert',2,set.Prefix,{'insert','ins'},{'id'},1,function(plr,args)
local obj = game:service("InsertService"):LoadAsset(tonumber(args[1]))
if obj and #obj:children() >= 1 and plr.Character then
table.insert(set.objects, obj) for i,v in pairs(obj:children()) do table.insert(set.objects, v) end obj.Parent = game.Workspace obj:MakeJoints() obj:MoveTo(plr.Character:GetModelCFrame().p)
end
end)

set.MakeCommand('Clear',2,set.Prefix,{'clear','cleargame','clr'},{},0,function(plr,args)
for i,v in pairs(set.objects) do if v:IsA("Script") or v:IsA("LocalScript") then v.Disabled = true end v:Destroy() end
for i,v in pairs(set.cameras) do 
if v then 
	table.remove(set.cameras,i) 
	v:Destroy() 
end 
end
set.RemoveMessage()
set.objects = {}
for i,v in pairs(game:service('Workspace'):children()) do
	if v:IsA('Message') or v:IsA('Hint') then v:Destroy() end
	if v.Name:match('Kohls Probe (.*)') then
		v:Destroy()
	end
end
end)

set.MakeCommand('Fix Lighting',2,set.Prefix,{'fix','resetlighting','undisco','unflash','fixlighting'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
game:service('Lighting').Ambient = origsettings.abt
game:service('Lighting').GlobalShadows = origsettings.gs
game:service('Lighting').ShadowColor = origsettings.sc
game:service('Lighting').Outlines = origsettings.ol
game:service('Lighting').OutdoorAmbient = origsettings.oabt
game:service('Lighting').Brightness = origsettings.brt
game:service('Lighting').TimeOfDay = origsettings.time
game:service('Lighting').FogColor = origsettings.fclr
game:service('Lighting').FogEnd = origsettings.fe
game:service('Lighting').FogStart = origsettings.fs
end)

set.MakeCommand('Command Bar',2,set.Prefix,{'cmdbar','commandbar','cmdbox','commandbox','cmdgui','commandgui'},{},0,function(plr,args)
set.CmdBar(plr)
end)

set.MakeCommand('Countdown',2,set.Prefix,{'countdown'},{'time'},1,function(plr,args)
local num = math.min(tonumber(args[1]),120)
for i = num, 1, -1 do
coroutine.resume(coroutine.create(function() set.Message("Countdown", i, false, game.Players:children(), 1) end))
wait(1)
end
end)

set.MakeCommand('Timed Message',2,set.Prefix,{'tm','timem','timedmessage'},{'time','message'},2,function(plr,args) 
local num = args[1]
set.Message("Message from " .. plr.Name, args[2], false, game.Players:children(), num)
end)

set.MakeCommand('Message',2,set.Prefix,{'m','message'},{'message'},1,function(plr,args)
set.Message("Message from " .. plr.Name, args[1], true, game.Players:children())
end)

set.MakeCommand('Hint',2,set.Prefix,{'h','hint'},{'message'},1,function(plr,args)
set.Hint(plr.Name .. ": " .. args[1], game.Players:children())
end)

set.MakeCommand('Info',2,set.Prefix,{'info','age'},{'player'},1,function(plr,args)
	local plz = set.GetPlayers(plr, args[1]:lower())
	for i,v in pairs(plz) do
	coroutine.wrap(function()
	set.GetPlayerInfo(v,{plr},'Player Info')
	end)()
	end
end)

set.MakeCommand('Reset Stats',2,set.Prefix,{'resetstats'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("leaderstats") then
for a, q in pairs(v.leaderstats:children()) do
if q:IsA("IntValue") then q.Value = 0 end
end
end
end))
end
end)

set.MakeCommand('Give Gear',2,set.Prefix,{'gear','givegear'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local obj = game:service("InsertService"):LoadAsset(tonumber(args[2]))
for a,g in pairs(obj:children()) do if g:IsA("Tool") or g:IsA("HopperBin") then g.Parent = v.Backpack end end
obj:Destroy()
end
end))
end
end)

set.MakeCommand('Sell',2,set.Prefix,{'sell'},{'player','id','currency'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
local type = args[3] or 'default'
local t
if type:lower()=='tix' or type:lower()=='tickets' or type:lower()=='t' then
	t=Enum.CurrencyType.Tix
elseif type:lower()=='robux' or type:lower()=='rb' or type:lower()=='r' then
	t=Enum.CurrencyType.Robux
else
	t=Enum.CurrencyType.Default
end
if v then
game:GetService("MarketplaceService"):PromptPurchase(v,tonumber(args[2]),false,t)
end
end))
end
end)

set.MakeCommand('Give Hat',2,set.Prefix,{'hat','givehat'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character then
local obj = game:service("InsertService"):LoadAsset(tonumber(args[2]))
for a,hat in pairs(obj:children()) do if hat:IsA("Hat") then hat.Parent = v.Character end end
obj:Destroy()
end
end))
end
end)

set.MakeCommand('Cape List',2,set.Prefix,{'capes','capelist'},{},0,function(plr,args)
local list = {"script","new yeller","pastel blue","dusty rose","cga brown","random","shiny","gold","kohl","epix","superman","swag","donor","starbucks","gomodern","admin","host","cohost","trainer","giovannis"}
set.Remote(plr,'SetSetting','CapeList',list)
set.Remote(plr,'Function','ListGui','Cape List','CapeList')
end)

set.MakeCommand('Cape',2,set.Prefix,{'cape','givecape'},{'player','cape'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = "torso.BrickColor p.Material='Fabric'"
if args[2] then plrz = set.GetPlayers(plr, args[1]:lower())
local teststr = [[BrickColor.new("]]..args[2]:upper()..args[2]:lower()..[[") p.Material='Fabric']]
if args[2]:lower() == "new yeller" then teststr = [[BrickColor.new("New Yeller") p.Material='Fabric']] end
if args[2]:lower() == "pastel blue" then teststr = [[BrickColor.new("Pastel Blue") p.Material='Fabric']] end
if args[2]:lower() == "dusty rose" then teststr = [[BrickColor.new("Dusty Rose") p.Material='Fabric']] end
if args[2]:lower() == "cga brown" then teststr = [[BrickColor.new("CGA brown") p.Material='Fabric']] end
if args[2]:lower() == "random" then teststr = [[BrickColor.random() p.Material='Fabric']] end
if args[2]:lower() == "shiny" then teststr = [[BrickColor.new("Institutional white")p.Material='Fabric' p.Reflectance = 1]] end
if args[2]:lower() == "gold" then teststr = [[BrickColor.new("Bright yellow") p.Reflectance = .4]] end
if args[2]:lower() == "kohl" then teststr = [[BrickColor.new("Really black") p.Material='Fabric' local dec = Instance.new("Decal", p) dec.Transparency=0.2 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=108597653"]] end
if args[2]:lower() == "script" then teststr = [[BrickColor.new("White") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=151359194"]] end
if args[2]:lower() == "batman" then teststr = [[BrickColor.new("Institutional white") p.Material='Fabric' local dec = Instance.new("Decal", p) dec.Transparency=0.2 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=108597669"]] end
if args[2]:lower() == "epix" then teststr = [[BrickColor.new("Really black") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=149442745"]] end
if args[2]:lower() == "superman" then teststr = [[BrickColor.new("Bright blue") p.Material='Fabric' local dec = Instance.new("Decal", p) dec.Transparency=0.2 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=108597677"]] end
if args[2]:lower() == "swag" then teststr = [[BrickColor.new("Pink") p.Material='Fabric' local dec = Instance.new("Decal", p) dec.Transparency=0.2 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=109301474"]] end
if args[2]:lower() == "donor" then teststr = [[BrickColor.new("White") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=149009184"]] end
if args[2]:lower() == "starbucks" then teststr = [[BrickColor.new("Black") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0.5 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=149248066"]] end
if args[2]:lower() == "gomodern" then teststr = [[BrickColor.new("Really black") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=149438175"]] end
if args[2]:lower() == "admin" then teststr = [[BrickColor.new("White") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=149092195"]] end
if args[2]:lower() == "giovannis" then teststr = [[BrickColor.new("White") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=149808729"]] end
if args[2]:lower() == "godofdonuts" then teststr = [[BrickColor.new("Institutional white") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=151034443"]] end
if args[2]:lower() == "host" then teststr = [[BrickColor.new("Really black") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=152299000"]] end
if args[2]:lower() == "cohost" then teststr = [[BrickColor.new("Really black") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=152298950"]] end
if args[2]:lower() == "trainer" then teststr = [[BrickColor.new("Really black") p.Material='Plastic' local dec = Instance.new("Decal", p) dec.Transparency=0 dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=152298976"]] end
if BrickColor.new(teststr) ~= nil then str = teststr end
end
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
set.LoadOnClient(v,[[local plr = game.Players.LocalPlayer
repeat wait() until plr and plr.Character and plr.Character:findFirstChild("Torso")
local torso = plr.Character.Torso
local p = Instance.new("Part", torso.Parent) p.Name = "EpicCape" p.Anchored = false
p.Transparency=0.001
p.CanCollide = false p.TopSurface = 0 p.BottomSurface = 0 p.BrickColor = ]]..str..[[ p.formFactor = "Custom"
p.Size = Vector3.new(.2,.2,.2)
local msh = Instance.new("BlockMesh", p) msh.Scale = Vector3.new(9,17.5,.5)
local motor1 = Instance.new("Motor", p)
motor1.Part0 = p
motor1.Part1 = torso
motor1.MaxVelocity = .01
motor1.C0 = CFrame.new(0,1.75,0)*CFrame.Angles(0,math.rad(90),0)
motor1.C1 = CFrame.new(0,1,.45)*CFrame.Angles(0,math.rad(90),0)
local wave = false
repeat wait(1/44)
local ang = 0.1
local oldmag = torso.Velocity.magnitude
local mv = .002
if wave then ang = ang + ((torso.Velocity.magnitude/10)*.05)+.05 wave = false else wave = true end
ang = ang + math.min(torso.Velocity.magnitude/11, .5)
motor1.MaxVelocity = math.min((torso.Velocity.magnitude/111), .04) + mv
motor1.DesiredAngle = -ang
if motor1.CurrentAngle < -.2 and motor1.DesiredAngle > -.2 then motor1.MaxVelocity = .04 end
repeat wait() until motor1.CurrentAngle == motor1.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag)  >= (torso.Velocity.magnitude/10) + 1
if torso.Velocity.magnitude < .1 then wait(.1) end
until not p or p.Parent ~= torso.Parent
script:Destroy()
]],false,'CapeScript')
end
end))
end
end)

set.MakeCommand('UnCape',2,set.Prefix,{'uncape','removecape'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
if v and v.Character then
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
end
end
end)

set.MakeCommand('NoClip',2,set.Prefix,{'noclip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v then
set.LoadOnClient(v,[[
game:GetService("RunService").Stepped:connect(function()
pcall(function() 
game.Players.LocalPlayer.Character.Torso.CanCollide = false 
game.Players.LocalPlayer.Character.Head.CanCollide = false 
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
if game.Players.LocalPlayer.Character:FindFirstChild('Head') then
for i,v in pairs(game.Player.LocalPlayer.Character.Head:children()) do
if v and v:IsA('Part') then v.CanCollide=false end
end
end
end)
end)]],false,'NoClip')
end
end))
end
end)

set.MakeCommand('Flying Noclip',2,set.Prefix,{'flynoclip','oldnolcip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v then
set.LoadOnClient(v,[[repeat wait(1/44) until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer:GetMouse() and game.Workspace.CurrentCamera local mouse = game.Players.LocalPlayer:GetMouse() local torso = game.Players.LocalPlayer.Character.Torso local dir = {w = 0, s = 0, a = 0, d = 0} local spd = 2 mouse.KeyDown:connect(function(key) if key:lower() == "w" then dir.w = 1 elseif key:lower() == "s" then dir.s = 1 elseif key:lower() == "a" then dir.a = 1 elseif key:lower() == "d" then dir.d = 1 elseif key:lower() == "q" then spd = spd + 1 elseif key:lower() == "e" then spd = spd - 1 end end) mouse.KeyUp:connect(function(key) if key:lower() == "w" then dir.w = 0 elseif key:lower() == "s" then dir.s = 0 elseif key:lower() == "a" then dir.a = 0 elseif key:lower() == "d" then dir.d = 0 end end) torso.Anchored = true game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true game.Players.LocalPlayer.Character.Humanoid.Changed:connect(function() game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true end) repeat wait(1/44) torso.CFrame = CFrame.new(torso.Position, game.Workspace.CurrentCamera.CoordinateFrame.p) * CFrame.Angles(0,math.rad(180),0) * CFrame.new((dir.d-dir.a)*spd,0,(dir.s-dir.w)*spd) until nil]],false,'NoClip')
end
end))
end
end)

set.MakeCommand('Clip',2,set.Prefix,{'clip','unnoclip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and parent and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then
for a, q in pairs(parent:children()) do if q.Name == set.GuiName.."NoClip" then q:Destroy() end end
v.Character.Torso.Anchored = false
wait(.1) v.Character.Humanoid.PlatformStand = false
end
end))
end
end)

set.MakeCommand('Jail',2,set.Prefix,{'jail','imprison'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local vname = v.Name
local tools=Instance.new('Model') 
tools.Parent=game:service'Lighting' 
tools.Name=v.Name..' ~ Epix Jail Tools'
local cf = v.Character.Torso.CFrame + Vector3.new(0,1,0)
local mod = Instance.new("Model", game.Workspace) mod.Name = v.Name .. " Epix Jail" table.insert(set.objects, mod) 
local value = Instance.new('StringValue',mod) value.Name='Player' value.Value=v.Name
local top = Instance.new("Part", mod) top.Locked = true top.formFactor = "Symmetric" top.Size = Vector3.new(6,1,6) top.TopSurface = 0 top.BottomSurface = 0 top.Anchored = true top.BrickColor = BrickColor.new("Really black") top.CFrame = cf * CFrame.new(0,-3.5,0)
v.CharacterAdded:connect(function() if not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") for l,k in next,v.Backpack:children() do if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then k.Parent=tools end end v.Character.Torso.CFrame = cf end)
v.Changed:connect(function(p) if p ~= "Character" or not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso")
	for l,k in next,k.Backpack:children() do if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then k.Parent=tools end end
 v.Character.Torso.CFrame = cf end)
game.Players.PlayerAdded:connect(function(plr) if plr.Name == vname then v = plr end
v.CharacterAdded:connect(function() if not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso") 	 
	for l,k in next,v.Backpack:children() do if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then k.Parent=tools end end
 v.Character.Torso.CFrame = cf end)
v.Changed:connect(function(p) if p ~= "Character" or not mod or (mod and mod.Parent ~= game.Workspace) then return end repeat wait() until v and v.Character and v.Character:findFirstChild("Torso")
	for l,k in next,v.Backpack:children() do if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then k.Parent=tools end end
 v.Character.Torso.CFrame = cf end)
end)
local bottom = top:Clone() bottom.Transparency = 1 bottom.Parent = mod bottom.CFrame = cf * CFrame.new(0,3.5,0)
local front = top:Clone() front.Transparency = 1 front.Reflectance = 0 front.Parent = mod front.Size = Vector3.new(6,6,1) front.CFrame = cf * CFrame.new(0,0,-3)
local back = front:Clone() back.Transparency = 1 back.Parent = mod back.CFrame = cf * CFrame.new(0,0,3)
local right = front:Clone() right.Transparency = 1 right.Parent = mod right.Size = Vector3.new(1,6,6) right.CFrame = cf * CFrame.new(3,0,0)
local left = right:Clone() left.Transparency = 1 left.Parent = mod left.CFrame = cf * CFrame.new(-3,0,0)
local msh = Instance.new("BlockMesh", front) msh.Scale = Vector3.new(1,1,0)
local msh2 = msh:Clone() msh2.Parent = back
local msh3 = msh:Clone() msh3.Parent = right msh3.Scale = Vector3.new(0,1,1)
local msh4 = msh3:Clone() msh4.Parent = left
local brick = Instance.new('Part',mod)
local box = Instance.new('SelectionBox',brick)
box.Adornee=brick
box.Color=BrickColor.new('White')
brick.Anchored=true
brick.CanCollide=false
brick.Transparency=1
brick.Size=Vector3.new(5,7,5) 
brick.CFrame=cf--*CFrame.new(0,-1,0)
v.Character.Torso.CFrame = cf
for l,k in next,v.Backpack:children() do 
	if k and k.ClassName=='Tool' or k.ClassName=='HopperBin' then 
		k.Parent=tools 
	end 
end
end
end))
end
end)

set.MakeCommand('UnJail',2,set.Prefix,{'unjail','free','release'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do 
	coroutine.wrap(function() 
		if v then 
			for a, jl in pairs(game.Workspace:children()) do 
				if jl.Name == v.Name .. " Epix Jail" then 
					jl:Destroy() 
				end 
			end 
			for lolz,m in pairs(game:service'Lighting':children()) do 
				if m.Name==v.Name..' ~ Epix Jail Tools' then
				for j,tewl in pairs(m:children()) do 
					if tewl then
						tewl.Parent=v.Backpack 
					end
				end
			end
		end
	game:service'Lighting'[v.Name..' ~ Jail Tools']:Destroy() 
end
end)()
end
end)


set.MakeCommand('Starter Tools',2,set.Prefix,{'startertools','starttools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
for a,q in pairs(game.StarterPack:children()) do q:Clone().Parent = v.Backpack end
end
end))
end
end)

set.MakeCommand('Sword',2,set.Prefix,{'sword','givesword'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v:findFirstChild("Backpack") then
local sword = Instance.new("Tool", v.Backpack) sword.Name = "Sword"  sword.TextureId = "rbxasset://Textures/Sword128.png"
sword.GripForward = Vector3.new(-1,0,0)
sword.GripPos = Vector3.new(0,0,-1.5)
sword.GripRight = Vector3.new(0,1,0)
sword.GripUp = Vector3.new(0,0,1)
local handle = Instance.new("Part", sword) handle.Name = "Handle" handle.FormFactor = "Plate" handle.Size = Vector3.new(1,.8,4) handle.TopSurface = 0 handle.BottomSurface = 0
local msh = Instance.new("SpecialMesh", handle) msh.MeshId = "rbxasset://fonts/sword.mesh" msh.TextureId = "rbxasset://textures/SwordTexture.png"
set.LoadScript('LocalScript',[[
repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local Damage = 15
local SlashSound = Instance.new("Sound", script.Parent.Handle)
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Volume = 1
local LungeSound = Instance.new("Sound", script.Parent.Handle)
LungeSound.SoundId = "rbxasset://sounds\\swordlunge.wav"
LungeSound.Volume = 1
local UnsheathSound = Instance.new("Sound", script.Parent.Handle)
UnsheathSound.SoundId = "rbxasset://sounds\\unsheath.wav"
UnsheathSound.Volume = 1
local last = 0
script.Parent.Handle.Touched:connect(function(hit)
if hit and hit.Parent and hit.Parent:findFirstChild("Humanoid") and game.Players:findFirstChild(hit.Parent.Name) and game.Players.LocalPlayer.Character.Humanoid.Health > 0 and hit.Parent.Humanoid ~= game.Players.LocalPlayer.Character.Humanoid then
local tag = Instance.new("ObjectValue", hit.Parent.Humanoid) tag.Value = plr1 tag.Name = "creator" game:service("Debris"):AddItem(tag, 3)
hit.Parent.Humanoid:TakeDamage(Damage)
end
end)
script.Parent.Activated:connect(function()
if not script.Parent.Enabled or game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then return end
script.Parent.Enabled = false
local tick = game:service("RunService").Stepped:wait()
if tick - last <= .2 then
LungeSound:play()
local lunge = Instance.new("StringValue", script.Parent) lunge.Name = "toolanim" lunge.Value = "Lunge"
local frc = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.Torso) frc.Name = "SwordForce" frc.velocity = Vector3.new(0,10,0)
wait(.2)
script.Parent.GripForward = Vector3.new(0,0,1)
script.Parent.GripRight = Vector3.new(0,-1,0)
script.Parent.GripUp = Vector3.new(-1,0,0)
wait(.3)
frc:Destroy() wait(.5)
script.Parent.GripForward = Vector3.new(-1,0,0)
script.Parent.GripRight = Vector3.new(0,1,0)
script.Parent.GripUp = Vector3.new(0,0,1)
else
SlashSound:play()
local slash = Instance.new("StringValue", script.Parent) slash.Name = "toolanim" slash.Value = "Slash"
end
last = tick
script.Parent.Enabled = true
end)
script.Parent.Equipped:connect(function(mouse)
for i,v in pairs(game.Players.LocalPlayer.Character.Torso:children()) do if v.Name == "SwordForce" then v:Destroy() end end
UnsheathSound:play()
script.Parent.Enabled = true
if not mouse then return end
mouse.Icon = "http://www.roblox.com/asset/?id=103593352"
end)]],'SwordScript',false,sword)
end
end))
end
end)

set.MakeCommand('Clone',2,set.Prefix,{'clone','cloneplayer'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.Character.Archivable = true 
local cl = v.Character:Clone() 
table.insert(set.objects,cl) 
cl.Parent = game.Workspace 
cl:MoveTo(v.Character:GetModelCFrame().p)
cl:MakeJoints()
v.Character.Archivable = false 
end
end)()
end
end)

set.MakeCommand('Control',2,set.Prefix,{'control','takeover'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
v.Character.Humanoid.PlatformStand = true
local w = Instance.new("Weld", plr.Character.Torso ) 
w.Part0 = plr.Character.Torso 
w.Part1 = v.Character.Torso  
local w2 = Instance.new("Weld", plr.Character.Head) 
w2.Part0 = plr.Character.Head 
w2.Part1 = v.Character.Head  
local w3 = Instance.new("Weld", plr.Character:findFirstChild("Right Arm")) 
w3.Part0 = plr.Character:findFirstChild("Right Arm")
w3.Part1 = v.Character:findFirstChild("Right Arm") 
local w4 = Instance.new("Weld", plr.Character:findFirstChild("Left Arm"))
w4.Part0 = plr.Character:findFirstChild("Left Arm")
w4.Part1 = v.Character:findFirstChild("Left Arm") 
local w5 = Instance.new("Weld", plr.Character:findFirstChild("Right Leg")) 
w5.Part0 = plr.Character:findFirstChild("Right Leg")
w5.Part1 = v.Character:findFirstChild("Right Leg") 
local w6 = Instance.new("Weld", plr.Character:findFirstChild("Left Leg")) 
w6.Part0 = plr.Character:findFirstChild("Left Leg")
w6.Part1 = v.Character:findFirstChild("Left Leg") 
plr.Character.Head.face:Destroy()
for i, p in pairs(v.Character:children()) do
if p:IsA("BasePart") then 
p.CanCollide = false
end
end
for i, p in pairs(plr.Character:children()) do
if p:IsA("BasePart") then 
p.Transparency = 1 
elseif p:IsA("Hat") then
p:Destroy()
end
end
v.Character.Parent = plr.Character
v.Character.Humanoid.Changed:connect(function() v.Character.Humanoid.PlatformStand = true end)
end
end)()
end
end)

set.MakeCommand('Refresh',2,set.Prefix,{'refresh','reset'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local pos=v.Character.Torso.CFrame
local temptools={}
pcall(function() v.Character.Humanoid:UnequipTools() end)
wait()
for k,t in pairs(v.Backpack:children()) do
	if t:IsA('Tool') or t:IsA('Hopperbin') then
		table.insert(temptools,t)
	end
end
v:LoadCharacter()
v.Character.Torso.CFrame=pos
for d,f in pairs(v.Character:children()) do
	if f:IsA('ForceField') then f:Destroy() end
end
wait(1)
v.Backpack:ClearAllChildren()
for l,m in pairs(temptools) do
	m:clone().Parent=v.Backpack
end
end)()
end
end)

set.MakeCommand('Kill',2,set.Prefix,{'kill'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character:BreakJoints() end
end)()
end
end)

set.MakeCommand('Respawn',2,set.Prefix,{'respawn'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v:LoadCharacter()
	set.LoadOnClient(plr,[[game.Workspace.CurrentCamera.CameraType='Custom' 
		game.Workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character.Humanoid
	game.Workspace.CurrentCamera.FieldOfView=70]],false,set.AssignName())
end
end)()
end
end)

set.MakeCommand('Trip',2,set.Prefix,{'trip'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(0,0,math.rad(180)) 
end
end)()
end
end)

set.MakeCommand('Stub',2,set.Prefix,{'stun'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = true
end
end)()
end
end)

set.MakeCommand('Ragdoll',2,set.Prefix,{'ragdoll','ragdeath'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.ChkTrueOwner(plr) or not set.ChkAdmin(v.Name,false) then
set.LoadOnClient(v,[[
Character = game.Players.LocalPlayer.Character
Humanoid = Character.Humanoid
Torso = Character.Torso
function OnDeath()
	print("Death")--  HAHA
        wait(0.00000001)
        Humanoid.Parent = nil
	if Torso then
		local Head = Character:FindFirstChild("Head")
		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 1.5, 0)
			Neck.C1 = CFrame.new()
			Neck.Parent = Torso
		end
		local Limb = Character:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Right Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
	end
end
Humanoid.Died:connect(OnDeath)
Humanoid.Health=0
]],false,set.AssignName())
end
end)()
end
end)

set.MakeCommand('UnStun',2,set.Prefix,{'unstun'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.PlatformStand = false
end
end)()
end
end)

set.MakeCommand('Jump',2,set.Prefix,{'jump'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Jump = true
end
end)()
end
end)

set.MakeCommand('Sit',2,set.Prefix,{'sit','seat'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Sit = true
end
end)()
end
end)

set.MakeCommand('Invisible',2,set.Prefix,{'invisible'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Transparency = 1 if obj:findFirstChild("face") then obj.face.Transparency = 1 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 1 end
end
end
end)()
end
end)

set.MakeCommand('Visible',2,set.Prefix,{'visible'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") and obj.Name~='HumanoidRootPart' then obj.Transparency = 0 if obj:findFirstChild("face") then obj.face.Transparency = 0 end elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Transparency = 0 end
end
end
end)()
end
end)

set.MakeCommand('Lock',2,set.Prefix,{'lock'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = true elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = true end
end
end
end)()
end
end)

set.MakeCommand('UnLock',2,set.Prefix,{'unlock'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Locked = false elseif obj:IsA("Hat") and obj:findFirstChild("Handle") then obj.Handle.Locked = false end
end
end
end)()
end
end)

set.MakeCommand('Explode',2,set.Prefix,{'explode','boom','boomboom'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
local ex = Instance.new("Explosion", game.Workspace) 
ex.Position = v.Character.Torso.Position
ex.BlastRadius=20
end
end)()
end
end)

set.MakeCommand('Light',2,set.Prefix,{'light'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright blue').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p=Instance.new('PointLight',v.Character.Torso)
table.insert(set.objects,p)
p.Color=str
p.Brightness=5
p.Range=15
end
end)()
end
end)

set.MakeCommand('UnLight',2,set.Prefix,{'unlight'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do 
	if cl:IsA('PointLight') then cl:Destroy() end 
end
end
end)()
end
end)

set.MakeCommand('Talk',2,set.Prefix,{'talk','maketalk'},{'player','message'},2,function(plr,args)
local message = args[2]
for i,p in pairs(set.GetPlayers(plr, args[2]:lower())) do
coroutine.wrap(function()
game:service('Chat'):Chat(p.Character.Head,message,Enum.ChatColor.Blue)
end)()
end
end)

set.MakeCommand('Fire',2,set.Prefix,{'fire','makefire','givefire'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright orange').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local f=Instance.new('Fire',v.Character.Torso)
local p=Instance.new('PointLight',v.Character.Torso)
table.insert(set.objects,f)
table.insert(set.objects,p)
p.Color=str
p.Brightness=5
p.Range=15
f.Color=str
f.SecondaryColor=str
end
end)()
end
end)

set.MakeCommand('UnFire',2,set.Prefix,{'unfire','removefire','extinguish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Fire") or cl:IsA('PointLight') then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Smoke',2,set.Prefix,{'smoke','givesmoke'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright orange').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local cl = Instance.new("Smoke", v.Character.Torso) table.insert(set.objects, cl)
cl.Color=str
end
end)()
end
end)

set.MakeCommand('UnSmoke',2,set.Prefix,{'unsmoke'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Smoke") then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Sparkles',2,set.Prefix,{'sparkles'},{'player','color'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local str = BrickColor.new('Bright blue').Color
if args[2] then
local teststr = args[2]
if BrickColor.new(teststr) ~= nil then str = BrickColor.new(teststr).Color end
end
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local cl = Instance.new("Sparkles", v.Character.Torso) table.insert(set.objects, cl)
local p=Instance.new('PointLight',v.Character.Torso) table.insert(set.objects, p)
p.Color=str
p.Brightness=5
p.Range=15
cl.SparkleColor=str
end
end)()
end
end)

set.MakeCommand('UnSparkle',2,set.Prefix,{'unsparkles'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for z, cl in pairs(v.Character.Torso:children()) do if cl:IsA("Sparkles") or cl:IsA('PointLight') then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Force Field',2,set.Prefix,{'ff','forcefield'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then Instance.new("ForceField", v.Character) end
end)()
end
end)

set.MakeCommand('Remove Force Field',2,set.Prefix,{'unff','unforcefield'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for z, cl in pairs(v.Character:children()) do if cl:IsA("ForceField") then cl:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Punish',2,set.Prefix,{'punsish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.Character.Parent = game:service("Lighting")
end
end)()
end
end)

set.MakeCommand('UnPunish',2,set.Prefix,{'unpunish'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.Character.Parent = game:service("Workspace")
v.Character:MakeJoints()
end
end)()
end
end)

set.MakeCommand('Freeze',2,set.Prefix,{'freeze'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = true end v.Character.Humanoid.WalkSpeed = 0
end
end
end)()
end
end)

set.MakeCommand('Thaw',2,set.Prefix,{'thaw','unfreeze'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") then obj.Anchored = false end v.Character.Humanoid.WalkSpeed = 16
end
end
end)()
end
end)

set.MakeCommand('Heal',2,set.Prefix,{'heal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)

set.MakeCommand('God',2,set.Prefix,{'god','immortal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = math.huge
v.Character.Humanoid.Health = 9e9
end
end)()
end
end)

set.MakeCommand('UnGod',2,set.Prefix,{'ungod','mortal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = 100
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)

set.MakeCommand('Change Ambient',2,set.Prefix,{'ambient'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').Ambient = Color3.new(args[1],args[2],args[3])
end)

set.MakeCommand('Change OutdoorAmbient',2,set.Prefix,{'oambient','outdoorambient'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').OutdoorAmbient = Color3.new(args[1],args[2],args[3])
end)

set.MakeCommand('Fog Off',2,set.Prefix,{'nofog','fogoff'},{},0,function(plr,args)
game:service('Lighting').FogEnd=1000000000000
end)

set.MakeCommand('Shadows',2,set.Prefix,{'shadows'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	game:service('Lighting').GlobalShadows=true
elseif args[1]:lower()=='off' then
	game:service('Lighting').GlobalShadows=false
end
end)

set.MakeCommand('Outlines',2,set.Prefix,{'outlines'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	game:service('Lighting').Outlines=true
elseif args[1]:lower()=='off' then
	game:service('Lighting').Outlines=false
end
end)

set.MakeCommand('Repeat',2,set.Prefix,{'repeat','loop'},{'ammount','interval','command'},3,function(plr,args)
local amount = tonumber(args[1])
local timer = tonumber(args[2])
if timer<=0 then timer=1 end
local command = args[3]:lower()
local num=0
coroutine.wrap(function()
table.insert(set.dontlog,{n=plr.Name,c=set['Prefix']..command})
repeat
set.ChatCommand(plr,set['Prefix']..command)
wait(timer)
num=num+1
until num==amount
for i,v in pairs(set.dontlog) do
	if v and v.n==plr.Name and v.c==set['Prefix']..command then table.remove(set.dontlog,i) end
end
end)()
end)

set.MakeCommand('Change Brightness',2,set.Prefix,{'brightness'},{'number'},1,function(plr,args)
game:service('Lighting').Brightness =args[1]
end)

set.MakeCommand('Change Time',2,set.Prefix,{'time','timeofday'},{'time'},1,function(plr,args)
game:service('Lighting').TimeOfDay = args[1]
end)

set.MakeCommand('Fog Color',2,set.Prefix,{'fogcolor'},{'num','num','num'},3,function(plr,args)
game:service('Lighting').FogColor = Color3.new(args[1],args[2],args[3])
end)

set.MakeCommand('Fog Start/End',2,set.Prefix,{'fog'},{'start','end'},2,function(plr,args)
game:service('Lighting').FogEnd = args[2]
game:service('Lighting').FogStart = args[1]
end)

set.MakeCommand('Build Tools',2,set.Prefix,{'btools','buildtools','buildingtools','buildertools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("Backpack") then 
local t1 = Instance.new("HopperBin", v.Backpack) t1.Name = "Move" t1.BinType = "GameTool"
local t2 = Instance.new("HopperBin", v.Backpack) t2.Name = "Clone" t2.BinType = "Clone"
local t3 = Instance.new("HopperBin", v.Backpack) t3.Name = "Delete" t3.BinType = "Hammer"
local t4 = Instance.new("HopperBin", v.Backpack) t4.Name = "Resize"
local t5 = game:service('InsertService'):LoadAsset(158489306)
t5:children()[1].Parent=v.Backpack
t5:Destroy()
local cl4 = set.LocalScriptBase:Clone() cl4.Parent = t4 cl4.Code.Value = [[
repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer:findFirstChild("PlayerGui")
local sb
local hs
local pdist

script.Parent.Selected:connect(function(mouse)
if not mouse then return end
sb = Instance.new("SelectionBox", game.Players.LocalPlayer.PlayerGui) sb.Color = BrickColor.new("Bright blue") sb.Adornee = nil
hs = Instance.new("Handles", game.Players.LocalPlayer.PlayerGui) hs.Color = BrickColor.new("Bright blue") hs.Adornee = nil
mouse.Button1Down:connect(function() if not mouse.Target or mouse.Target.Locked then sb.Adornee = nil hs.Adornee = nil else sb.Adornee = mouse.Target hs.Adornee = mouse.Target hs.Faces = mouse.Target.ResizeableFaces end end)
hs.MouseDrag:connect(function(old,dist) if hs.Adornee and math.abs(dist-pdist) >= hs.Adornee.ResizeIncrement then if hs.Adornee:Resize(old, math.floor((dist-pdist)/ hs.Adornee.ResizeIncrement + .5) * hs.Adornee.ResizeIncrement) then pdist = dist end end end)
hs.MouseButton1Down:connect(function() pdist = 0 end)
end)

script.Parent.Deselected:connect(function() sb:Destroy() hs:Destroy() end)]] cl4.Disabled = false
end
end)()
end
end)

set.MakeCommand('Starter Give',2,set.Prefix,{'startergive'},{'player','toolname'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("StarterGear") and game:findFirstChild("Lighting") then 
for a, tool in pairs(game:service('Lighting'):children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if args[2]:lower() == "all" or tool.Name:lower():find(args[2]:lower()) == 1 then tool:Clone().Parent = v.StarterGear end
end
end
end
end)()
end
end)

set.MakeCommand('Give Tool',2,set.Prefix,{'give','tool'},{'player','tool'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
for a, tool in pairs(game:service('Lighting'):children()) do
if tool:IsA("Tool") or tool:IsA("HopperBin") then
if args[2]:lower() == "all" or tool.Name:lower():sub(1,#args[2])==args[2]:lower() then 
	tool:clone().Parent = v.Backpack 
end
end
end
end)()
end
end)

set.MakeCommand('Steal Tools',2,set.Prefix,{'steal','stealtools'},{'player','player'},2,function(plr,args)
local p1 = set.GetPlayers(plr, args[1]:lower())
local p2 = set.GetPlayers(plr, args[2]:lower())
coroutine.wrap(function()
for i,v in pairs(p1) do
	coroutine.wrap(function()
	for k,m in pairs(p2) do
		for j,n in pairs(v.Backpack:children()) do
			print(n.Name)
			local b=n:clone()
			n.Parent=m.Backpack
		end
	end
	v.Backpack:ClearAllChildren()
	end)()
end
end)()
end)

set.MakeCommand('Remove Tools',2,set.Prefix,{'removetools','notools'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v:findFirstChild("Backpack") then 
for a, tool in pairs(v.Character:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
for a, tool in pairs(v.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Get Rank',2,set.Prefix,{'rank','getrank'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:IsInGroup(args[2]) then 
set.Hint("[" .. v:GetRankInGroup(args[2]) .. "] " .. v:GetRoleInGroup(args[2]), {plr})
elseif v and not v:IsInGroup(args[2])then
set.Hint(v.Name .. " is not in the group " .. args[2], {plr})
end
end)()
end
end)

set.MakeCommand('Damage',2,set.Prefix,{'damage','hurt'},{'player','number'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid:TakeDamage(args[2])
end
end)()
end
end)

set.MakeCommand('Normal Gravity',2,set.Prefix,{'grav','bringtoearth'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Set Gravity',2,set.Prefix,{'setgrav','gravity','setgravity'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force - Vector3.new(0,prt:GetMass()*tonumber(args[2]),0) elseif prt:IsA("Hat") then frc.force = frc.force - Vector3.new(0,prt.Handle:GetMass()*tonumber(args[2]),0) end end
end
end)()
end
end)

set.MakeCommand('NoGrav',2,set.Prefix,{'nograv','nogravity'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
for a, frc in pairs(v.Character.Torso:children()) do if frc.Name == "BFRC" then frc:Destroy() end end
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(0,0,0)
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") then frc.force = frc.force + Vector3.new(0,prt:GetMass()*196.25,0) elseif prt:IsA("Hat") then frc.force = frc.force + Vector3.new(0,prt.Handle:GetMass()*196.25,0) end end
end
end)()
end
end)

set.MakeCommand('Set Health',2,set.Prefix,{'health','sethealth'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.MaxHealth = args[2]
v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
end
end)()
end
end)

set.MakeCommand('Set Speed',2,set.Prefix,{'speed','setspeed','walkspeed'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
v.Character.Humanoid.WalkSpeed = args[2]
end
end)()
end
end)

set.MakeCommand('Set Team',2,set.Prefix,{'team','setteam','changeteam'},{'player','team'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and game:findFirstChild("Teams") then 
for a, tm in pairs(game.Teams:children()) do
if tm.Name:lower():find(args[2]:lower()) == 1 then v.TeamColor = tm.TeamColor end
end
end
end)()
end
end)

set.MakeCommand('Teleport to Place',2,set.Prefix,{'place'},{'player','placeid'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
set.PromptPlaceTeleport(v,"Teleport to "..args[2].."?",args[2])
end)()
end
end)

set.MakeCommand('Teleport',2,set.Prefix,{'tp','teleport'},{'player','player'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local plrz2 = set.GetPlayers(plr, args[2]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
for i2, v2 in pairs(plrz2) do
if v and v2 and v.Character and v2.Character and v.Character:FindFirstChild('Humanoid') and v.Character:findFirstChild("Torso") and v2.Character:findFirstChild("Torso") then
if v.Character.Humanoid.Sit==true then
v.Character.Humanoid.Sit=false
wait(0.5)
end
v.Character.Torso.CFrame = v2.Character.Torso.CFrame + Vector3.new(math.random(-1,1),0,math.random(-1,1))
end
end
end)()
end
end)

set.MakeCommand('Freefall',2,set.Prefix,{'freefall','skydive'},{'player','height'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character:FindFirstChild('Torso') then 
v.Character.Torso.CFrame=v.Character.Torso.CFrame+Vector3.new(0,tonumber(args[2]),0)
end
end)()
end
end)

set.MakeCommand('Change Leaderstat',2,set.Prefix,{'change','leaderstat','stat'},{'player','stat','value'},3,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("leaderstats") then 
for a, st in pairs(v.leaderstats:children()) do
if st.Name:lower():find(args[2]:lower()) == 1 then st.Value = args[3] end
end
end
end)()
end
end)

set.MakeCommand('Give Shirt',2,set.Prefix,{'shirt','giveshirt'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for g,k in pairs(v.Character:children()) do
if k:IsA("Shirt") then k:Destroy() end
end
local s=Instance.new('Shirt',v.Character)
s.ShirtTemplate="http://www.roblox.com/asset/?id="..args[2]
end
end)()
end
end)

set.MakeCommand('Give Pants',2,set.Prefix,{'pants','givepants'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for g,k in pairs(v.Character:children()) do
if k:IsA("Pants") then k:Destroy() end
end
local s=Instance.new('Pants',v.Character)
s.PantsTemplate="http://www.roblox.com/asset/?id="..args[2]
end
end)()
end
end)

set.MakeCommand('Give Face',2,set.Prefix,{'face','giveface'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Head") and v.Character.Head:findFirstChild("face") then 
v.Character.Head:findFirstChild("face").Texture = "http://www.roblox.com/asset/?id=" .. args[2]
end
end)()
end
end)

---------------------
--   FunCommands   --
---------------------
if set['FunCommands'] then
set.MakeCommand('Swagify',2,set.Prefix,{'swagify','swagger'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
for i,v in pairs(v.Character:children()) do
if v.Name == "Shirt" then local cl = v:Clone() cl.Parent = v.Parent cl.ShirtTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
if v.Name == "Pants" then local cl = v:Clone() cl.Parent = v.Parent cl.PantsTemplate = "http://www.roblox.com/asset/?id=109163376" v:Destroy() end
end
for a,cp in pairs(v.Character:children()) do if cp.Name == "EpicCape" then cp:Destroy() end end
set.LoadOnClient(v,[[local plr = game.Players.LocalPlayer
repeat wait() until plr and plr.Character and plr.Character:findFirstChild("Torso")
local torso = plr.Character.Torso
local p = Instance.new("Part", torso.Parent) p.Name = "EpicCape" p.Anchored = false
p.CanCollide = false p.TopSurface = 0 p.BottomSurface = 0 p.BrickColor = BrickColor.new("Pink") local dec = Instance.new("Decal", p) dec.Face = 2 dec.Texture = "http://www.roblox.com/asset/?id=109301474" p.formFactor = "Custom"
p.Size = Vector3.new(.2,.2,.2)
local msh = Instance.new("BlockMesh", p) msh.Scale = Vector3.new(9,17.5,.5)
local motor1 = Instance.new("Motor", p)
motor1.Part0 = p
motor1.Part1 = torso
motor1.MaxVelocity = .01
motor1.C0 = CFrame.new(0,1.75,0)*CFrame.Angles(0,math.rad(90),0)
motor1.C1 = CFrame.new(0,1,.45)*CFrame.Angles(0,math.rad(90),0)
local wave = false
repeat wait(1/44)
local ang = 0.1
local oldmag = torso.Velocity.magnitude
local mv = .002
if wave then ang = ang + ((torso.Velocity.magnitude/10)*.05)+.05 wave = false else wave = true end
ang = ang + math.min(torso.Velocity.magnitude/11, .5)
motor1.MaxVelocity = math.min((torso.Velocity.magnitude/111), .04) + mv
motor1.DesiredAngle = -ang
if motor1.CurrentAngle < -.2 and motor1.DesiredAngle > -.2 then motor1.MaxVelocity = .04 end
repeat wait() until motor1.CurrentAngle == motor1.DesiredAngle or math.abs(torso.Velocity.magnitude - oldmag)  >= (torso.Velocity.magnitude/10) + 1
if torso.Velocity.magnitude < .1 then wait(.1) end
until not p or p.Parent ~= torso.Parent
script:Destroy()
]],false,'CapeScript')
end
end)()
end
end)

set.MakeCommand('Rocket',2,set.Prefix,{'rocket','firework'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
if v.Character and v.Character:FindFirstChild("Torso") then
delay(0,function()
local speed = 10
local Part = Instance.new("Part")
Part.Parent = v.Character
local SpecialMesh = Instance.new("SpecialMesh") 
SpecialMesh.Parent = Part
SpecialMesh.MeshId = "http://www.roblox.com/asset/?id=2251534" 
SpecialMesh.MeshType = "FileMesh" 
SpecialMesh.TextureId = "43abb6d081e0fbc8666fc92f6ff378c1" 
SpecialMesh.Scale = Vector3.new(0.5,0.5,0.5)
local Weld = Instance.new("Weld")
Weld.Parent = Part
Weld.Part0 = Part
Weld.Part1 = v.Character.Torso
Weld.C0 = CFrame.new(0,-1,0)*CFrame.Angles(-1.5,0,0)
local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.Parent = Part
BodyVelocity.maxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.velocity = Vector3.new(0,10*speed,0)
delay(0,function()
for i = 1,math.huge do
local Explosion = Instance.new("Explosion")
Explosion.Parent = Part
Explosion.BlastRadius = 0
Explosion.Position = Part.Position + Vector3.new(0,0,0)
wait()
end 
end)        
wait(3)
pcall(function()
BodyVelocity:remove()
Instance.new("Explosion",workspace).Position=v.Character.Torso.Position
v.Character:BreakJoints()
end)
end)
end
end)()
end
end)

set.MakeCommand('Dance',2,set.Prefix,{'dance'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:FindFirstChild('Humanoid') then 
	local anim=Instance.new('Animation',v.Character)
	anim.AnimationId='http://www.roblox.com/Asset?ID=27789359'
	anim.Name='Dance'
	set.LoadOnClient(v,[[local human = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
local dancer = human:LoadAnimation(human.Parent.Dance)
dancer:Play()
wait(60)
dancer:Stop()
dancer:Destroy()]],false,set.AssignName())
end
end)()
end
end)

set.MakeCommand('BreakDance',2,set.Prefix,{'breakdance','fundance','lolwut'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local color
local num=math.random(1,7)
if num==1 then
color='Really blue'
elseif num==2 then
color='Really red'
elseif num==3 then
color='Magenta'
elseif num==4 then
color='Lime green'
elseif num==5 then
color='Hot pink'
elseif num==6 then
color='New Yeller'
elseif num==7 then
color='White'
end
if v and v.Character and v.Character:FindFirstChild('Humanoid') then 
	local anim=Instance.new('Animation',v.Character)
	anim.AnimationId='http://www.roblox.com/Asset?ID=27789359'
	anim.Name='Dance'
	set.LoadOnClient(v,[[local human = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
local dancer = human:LoadAnimation(human.Parent.Dance)
	dancer:Play()
	while wait() do
	human.PlatformStand=true
	end]],false,set.AssignName())
	cmd=set['Prefix'].."batch"..set['SplitKey'].."sparkles"..set['SplitKey']..v.Name..set['SplitKey']..color.."/fire"..set['SplitKey']..v.Name..set['SplitKey']..color.."/nograv"..set['SplitKey']..v.Name.."/smoke"..set['SplitKey']..v.Name..set['SplitKey']..color.."/spin"..set['SplitKey']..v.Name
	set.ChatCommand(plr,cmd)
end
end)()
end
end)

set.MakeCommand('Puke',2,set.Prefix,{'puke','barf','throwup'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1])) do
coroutine.wrap(function()
if (not v:IsA('Player')) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character:FindFirstChild('Kohls Puke') then return end
local run=true
local k=Instance.new('StringValue',v.Character)
k.Name='Kohls Puke'
coroutine.wrap(function()
repeat 
wait(0.15)
local p = Instance.new("Part",v.Character)
p.CanCollide = false
local color = math.random(1, 3)
local bcolor
if color == 1 then
bcolor = BrickColor.new(192)
elseif color == 2 then
bcolor = BrickColor.new(28)
elseif color == 3 then
bcolor = BrickColor.new(105)
end
p.BrickColor = bcolor
local m=Instance.new('BlockMesh',p)
p.Size=Vector3.new(0.1,0.1,0.1)
m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = v.Character.Head.CFrame * CFrame.new(Vector3.new(0, 0, -1))
p.Velocity = v.Character.Head.CFrame.lookVector * 20 + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
p.Anchored = false
m.Name='Puke Peice'
p.Name='Puke Peice'
p.Touched:connect(function(o)
if o and p and (not game.Players:FindFirstChild(o.Parent.Name)) and o.Name~='Puke Peice' and o.Name~='Blood Peice' and o.Name~='Blood Plate' and o.Name~='Puke Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
	local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
	p:Destroy()
	local g=Instance.new('Part',workspace)
	g.Anchored=true
	g.CanCollide=false
	g.Size=Vector3.new(0.1,0.1,0.1)
	g.Name='Puke Plate'
	g.CFrame=cf
	g.BrickColor=BrickColor.new(119)
	local c=Instance.new('CylinderMesh',g)
	c.Scale=Vector3.new(1,0.2,1)
	c.Name='PukeMesh'
	wait(10)
	g:Destroy()
elseif o and o.Name=='Puke Plate' and p then 
	p:Destroy() 
	o.PukeMesh.Scale=o.PukeMesh.Scale+Vector3.new(0.5,0,0.5)
end
end)
until run==false or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head'))
end)()
wait(10)
run=false
k:Destroy()
end)()
end
end)

set.MakeCommand('Cut',2,set.Prefix,{'cut','stab','shank'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
coroutine.wrap(function()
if (not v:IsA('Player')) or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head')) or v.Character:FindFirstChild('Kohls Bleed') then return end
local run=true
local k=Instance.new('StringValue',v.Character)
k.Name='Kohls Bleed'
coroutine.wrap(function()
repeat 
wait(0.15)
v.Character.Humanoid.Health=v.Character.Humanoid.Health-0.5
local p = Instance.new("Part",v.Character)
p.CanCollide = false
local color = math.random(1, 3)
local bcolo
if color == 1 then
bcolor = BrickColor.new(21)
elseif color == 2 then
bcolor = BrickColor.new(1004)
elseif color == 3 then
bcolor = BrickColor.new(21)
end
p.BrickColor = bcolor
local m=Instance.new('BlockMesh',p)
p.Size=Vector3.new(0.1,0.1,0.1)
m.Scale = Vector3.new(math.random()*0.9, math.random()*0.9, math.random()*0.9)
p.Locked = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.CFrame = v.Character.Torso.CFrame * CFrame.new(Vector3.new(2, 0, 0))
p.Velocity = v.Character.Head.CFrame.lookVector * 1 + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
p.Anchored = false
m.Name='Blood Peice'
p.Name='Blood Peice'
p.Touched:connect(function(o)
if o and p and (not game.Players:FindFirstChild(o.Parent.Name)) and o.Name~='Blood Peice' and o.Name~='Puke Peice' and o.Name~='Puke Plate' and o.Name~='Blood Plate' and (o.Parent.Name=='Workspace' or o.Parent:IsA('Model')) and (o.Parent~=p.Parent) and o:IsA('Part') and (o.Parent.Name~=v.Character.Name) and (not o.Parent:IsA('Hat')) and (not o.Parent:IsA('Tool')) then
	local cf=CFrame.new(p.CFrame.X,o.CFrame.Y+o.Size.Y/2,p.CFrame.Z)
	p:Destroy()
	local g=Instance.new('Part',workspace)
	g.Anchored=true
	g.CanCollide=false
	g.Size=Vector3.new(0.1,0.1,0.1)
	g.Name='Blood Plate'
	g.CFrame=cf
	g.BrickColor=BrickColor.new(21)
	local c=Instance.new('CylinderMesh',g)
	c.Scale=Vector3.new(1,0.2,1)
	c.Name='BloodMesh'
	wait(10)
	g:Destroy()
elseif o and o.Name=='Blood Plate' and p then 
	p:Destroy() 
	o.BloodMesh.Scale=o.BloodMesh.Scale+Vector3.new(0.5,0,0.5)
end
end)
until run==false or (not v) or (not v.Character) or (not v.Character:FindFirstChild('Head'))
end)()
wait(10)
run=false
k:Destroy()
end)()
end
end)

set.MakeCommand('Drug',2,set.Prefix,{'drug','intoxicate'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		coroutine.wrap(function()
		local msgs={{Msg='We need more..... philosophy... ya know?',Color=Enum.ChatColor.Green},{Msg='OH MY GOD STOP TRYING TO EAT MY SOUL',Color=Enum.ChatColor.Red},{Msg='I.... CANT.... FEEL.... MY FACE',Color=Enum.ChatColor.Red},{Msg='DO YOU SEE THE TURTLE?!?!',Color=Enum.ChatColor.Red},{Msg='Omg puff the magic dragon!!!!',Color=Enum.ChatColor.Green},{Msg='Omg double wat',Color=Enum.ChatColor.Blue},{Msg='WHO STOLE MY LEGS',Color=Enum.ChatColor.Red},{Msg='I... I think I might be dead....',Color=Enum.ChatColor.Blue},{Msg="I'M GOING TO EAT YOUR FACE",Color=Enum.ChatColor.Red},{Msg='Hey... Like... What if, like, listen, are you listening? What if.. like.. earth.. was a ball?',Color=Enum.ChatColor.Green},{Msg='WHY IS EVERYBODY TALKING SO LOUD AHHHHHH',Color=Enum.ChatColor.Red},{Msg='Woooo man do you see the elephent... theres an elephent man..its... PURPLE OHMY GOD ITS A SIGN FROM LIKE THE WARDROBE..',Color=Enum.ChatColor.Blue}}
		v.Character.Humanoid.WalkSpeed=-16
		set.LoadOnClient(v,[[
			coroutine.wrap(function()
			repeat
			wait(0.1)
			game.Workspace.CurrentCamera.FieldOfView=math.random(20,80) 
			game.Players.LocalPlayer.Character.Humanoid.Health=game.Players.LocalPlayer.Character.Humanoid.Health-0.5
			until game.Players.LocalPlayer.Character.Humanoid.Health<=0 or not game.Players.LocalPlayer.Character:FindFirstChild('Torso')
			game.Workspace.CurrentCamera.FieldOfView=70
			end)()
			wait(10)
			coroutine.wrap(function()
				local torso = game.Players.LocalPlayer.Character:findFirstChild("Torso")
				local bg = Instance.new("BodyGyro", torso) 
				bg.Name = "SPINNER" 
				bg.maxTorque = Vector3.new(0,math.huge,0) 
				bg.P = 11111 
				bg.cframe = torso.CFrame 
				repeat wait(1/44) 
				bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(30),0)
				until not bg or bg.Parent ~= torso
			end)()
			wait(20)
			coroutine.wrap(function()
			repeat wait() 
			game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 
			game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(math.random(-10,10),-5,math.random(-10,10)) 
			game.Players.LocalPlayer.Character.Torso.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) 
			until nil
			end)()]],false,set.AssignName())
		local chat=game:GetService('Chat')
		coroutine.wrap(function()
		local val=Instance.new('StringValue',v.Character.Head)
		local old=math.random()
		while v and v.Character and v.Character.Head and val and val.Parent==v.Character.Head and v.Character.Humanoid.Health>0 do
		local new=math.random(1,#msgs)
		for k,m in pairs(msgs) do
		if new==k then
		if old~=new then
		old=new
		print(m.Msg)
		chat:Chat(v.Character.Head,m.Msg,m.Color)
		end
		end
		end
		wait(5)
		end
		end)()
		end)()
	end
end)

set.MakeCommand('Change Pitch',2,set.Prefix,{'pitch'},{'number'},1,function(plr,args)
coroutine.wrap(function()
local pitch = args[1]
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v.Pitch=pitch end end
end)()
end)

set.MakeCommand('Start Music',2,set.Prefix,{'music','song','playsong'},{'id'},1,function(plr,args)
coroutine.wrap(function()
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
local id = args[1]:lower()
local pitch = 1
local mp = game:service('MarketplaceService')
local volume = 1
for i,v in pairs(set['MusicList']) do
	if id==v.Name:lower() then id=v.Id end
	if v.Pitch then pitch=v.Pitch end
	if v.Volume then volume=v.Volume end
end
local name = 'Invalid ID '
pcall(function()
	if mp:GetProductInfo(id).AssetTypeId==3 then
		name = 'Now playing '..mp:GetProductInfo(id).Name
	end
end)
local s = Instance.new("Sound", game.Workspace) 
s.SoundId = "http://www.roblox.com/asset/?id=" .. id 
s.Volume = volume 
s.Pitch = pitch 
s.Looped = true 
s.archivable = false
pcall(function() s:Play()end)
set.Hint(name..' ('..id..')',game.Players:children())
end)()
end)

set.MakeCommand('Stop Music',2,set.Prefix,{'stopmusic','musicoff'},{},0,function(plr,args)
for i, v in pairs(game.Workspace:children()) do if v:IsA("Sound") then v:Destroy() end end
end)

set.MakeCommand('Music List',2,set.Prefix,{'musiclist','listmusic','songs'},{},0,function(plr,args)
local listforclient={}
for i, v in pairs(set['MusicList']) do 
table.insert(listforclient,v.Name)
end
set.Remote(plr,'SetSetting','MusicList',listforclient)
set.Remote(plr,'Function','ListGui','Music List','MusicList')
end)

set.MakeCommand('Stickify',2,set.Prefix,{'stickify','stick','stickman'},{'player'},1,function(plr,args)
	local plrz = set.GetPlayers(plr, args[1]:lower())
	for kay, player in pairs(plrz) do
	coroutine.wrap(function()
	local Self = player
	m = Self.Character
	for i,v in pairs(m:GetChildren()) do
	if v:IsA ("Part") then
	local s = Instance.new("SelectionPartLasso")
	s.Parent = m.Torso
	s.Part = v
	s.Humanoid = m.Humanoid
	s.Color = BrickColor.new(0,0,0)
	v.Transparency = 1
	m.Head.Transparency = 0
	m.Head.Mesh:Remove()
	local b = Instance.new("SpecialMesh")
	b.Parent = m.Head
	b.MeshType = "Sphere"
	b.Scale = Vector3.new(.5,1,1)
	m.Head.BrickColor = BrickColor.new("Black")
	else
	end 
	end
	end)()
	end 
end)

set.MakeCommand('Hole',2,set.Prefix,{'hole','sparta'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for kay, player in pairs(plrz) do
coroutine.wrap(function()
local Self=player
local Tor
if pcall(function() Tor = Self.Character.Torso end) then
local Hole = Instance.new("Part",Self.Character)
Hole.Anchored = true
Hole.CanCollide = false
Hole.formFactor = Enum.FormFactor.Custom
Hole.Size = Vector3.new(10,1,10)
Hole.CFrame = Tor.CFrame * CFrame.new(0,-3.3,-3)
Hole.BrickColor = BrickColor.new("Really black")
local HoleM = Instance.new("CylinderMesh",Hole)
Tor.Anchored = true
local Foot = Tor.CFrame * CFrame.new(0,-3,0)
local Func = coroutine.create(function()
for i=1,10 do
Tor.CFrame = Foot * CFrame.fromEulerAnglesXYZ(-(math.pi/2)*i/10,0,0) * CFrame.new(0,3,0)
wait()
end
for i=1,5,0.2 do
Tor.CFrame = Foot * CFrame.new(0,-(i^2),0) * CFrame.fromEulerAnglesXYZ(-(math.pi/2),0,0) * CFrame.new(0,3,0)
wait()
end
pcall(function() Self.Character.Humanoid.Health = 0 end)
end)
coroutine.resume(Func)
end
end)()
end
end)

set.MakeCommand('Fly',2,set.Prefix,{'fly','flight'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v then
set.LoadOnClient(v,[[repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "e" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()]],false,'FlyScript')
end
end)()
end
end)

set.MakeCommand('UnFly',2,set.Prefix,{'unfly','ground'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, msg:lower():sub(7))
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and parent and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then
for a, q in pairs(parent:children()) do if q.Name == set.GuiName.."FlyScript" then q:Destroy() end end
for a, q in pairs(v.Character.Torso:children()) do if q.Name == "BodyGyro" or q.Name == "BodyVelocity" then q:Destroy() end end
wait(.1) v.Character.Humanoid.PlatformStand = false
end
end)()
end
end)

set.MakeCommand('Disco',2,set.Prefix,{'disco'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
coroutine.wrap(function()
set.lighttask = true
repeat
if set.lighttask==false then return end
local color = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255)
game:service('Lighting').Ambient = color
game:service('Lighting').OutdoorAmbient = color
game:service('Lighting').FogColor = color
wait(0.1)
until set.lighttask==false
end)()
end)

set.MakeCommand('Flash',2,set.Prefix,{'flash'},{},0,function(plr,args)
set.lighttask=false
wait(0.5)
coroutine.wrap(function()
set.lighttask=true
repeat
if set.lighttask==false then return end
game:service('Lighting').Ambient = Color3.new(1,1,1)
game:service('Lighting').OutdoorAmbient = Color3.new(1,1,1)
game:service('Lighting').FogColor = Color3.new(1,1,1)
game:service('Lighting').Brightness = 1
game:service('Lighting').TimeOfDay = 14
wait(0.1) 
game:service('Lighting').Ambient = Color3.new(0,0,0)
game:service('Lighting').OutdoorAmbient = Color3.new(0,0,0)
game:service('Lighting').FogColor = Color3.new(0,0,0)
game:service('Lighting').Brightness = 0
game:service('Lighting').TimeOfDay = 0
wait(0.1)
until set.lighttask==false
end)()
end)

set.MakeCommand('Spin',2,set.Prefix,{'spin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for i,v in pairs(v.Character.Torso:children()) do if v.Name == "SPINNER" then v:Destroy() end end
local torso = v.Character:findFirstChild("Torso")
local bg = Instance.new("BodyGyro", torso) bg.Name = "SPINNER" bg.maxTorque = Vector3.new(0,math.huge,0) bg.P = 11111 bg.cframe = torso.CFrame table.insert(set.objects,bg)
repeat wait(1/44) bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(30),0)
until not bg or bg.Parent ~= torso
end
end)()
end
end)

set.MakeCommand('UnSpin',2,set.Prefix,{'unspin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
for a,q in pairs(v.Character.Torso:children()) do if q.Name == "SPINNER" then q:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Dog',2,set.Prefix,{'dog','dogify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 1
v.Character.Torso.Neck.C0 = CFrame.new(0,-.5,-2) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-.5,-1.5,-1.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1.5,-1,1.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1.5,-1,1.5) * CFrame.Angles(0,math.rad(-90),0)
local new = Instance.new("Seat", v.Character) new.Name = "FAKETORSO" new.formFactor = "Symmetric" new.TopSurface = 0 new.BottomSurface = 0 new.Size = Vector3.new(3,1,4) new.CFrame = v.Character.Torso.CFrame
local bf = Instance.new("BodyForce", new) bf.force = Vector3.new(0,new:GetMass()*196.25,0)
local weld = Instance.new("Weld", v.Character.Torso) weld.Part0 = v.Character.Torso weld.Part1 = new weld.C0 = CFrame.new(0,-.5,0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Brown") elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Brown") end end
end
end)()
end
end)

set.MakeCommand('UnDog',2,set.Prefix,{'undog','undogify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end)()
end
end)

set.MakeCommand('Creeper',2,set.Prefix,{'creeper','creeperify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(0,-1.5,-.5) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(0,-1,.5) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("Bright green") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("Bright green") end end
end
end)()
end
end)

set.MakeCommand('UnCreeper',2,set.Prefix,{'uncreeper','uncreeperify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
for a, part in pairs(v.Character:children()) do if part:IsA("BasePart") then part.BrickColor = BrickColor.new("White") if part.Name == "FAKETORSO" then part:Destroy() end elseif part:findFirstChild("NameTag") then part.Head.BrickColor = BrickColor.new("White") end end
end
end)()
end
end)

set.MakeCommand('Big Head',2,set.Prefix,{'bighead'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.rwrap(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(3,3,3) v.Character.Torso.Neck.C0 = CFrame.new(0,1.9,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end)()
end
end)

set.MakeCommand('Small Head',2,set.Prefix,{'smallhead','minihead'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then v.Character.Head.Mesh.Scale = Vector3.new(.75,.75,.75) v.Character.Torso.Neck.C0 = CFrame.new(0,.8,0) * CFrame.Angles(math.rad(90),math.rad(180),0) end
end)()
end
end)

set.MakeCommand('Fling',2,set.Prefix,{'fling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then 
local xran local zran
repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
v.Character.Humanoid.Sit = true v.Character.Torso.Velocity = Vector3.new(0,0,0)
local frc = Instance.new("BodyForce", v.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
end
end)()
end
end)

set.MakeCommand('Seizure',2,set.Prefix,{'seizure'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
coroutine.wrap(function()
if v and v.Character then 
v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0) 
set.LoadScript('LocalScript',[[char=game.Players.LocalPlayer.Character; 
	repeat wait() 
	char.Humanoid.PlatformStand = true 
	char.Torso.Velocity = Vector3.new(math.random(-10,10),-5,math.random(-10,10)) 
	char.Torso.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) 
	until nil]],"SeizureBase",true,parent)
end
end)()
end
end)

set.MakeCommand('UnSeizure',2,set.Prefix,{'unseizure'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and parent then 
for i,v in pairs(parent:children()) do if v.Name == "SeizureBase" then v:Destroy() end end
wait(.1) v.Character.Humanoid.PlatformStand = false
end
end)()
end
end)

set.MakeCommand('Remove Limbs',2,set.Prefix,{'removelimbs','delimb'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
for a, obj in pairs(v.Character:children()) do 
if obj:IsA("BasePart") and (obj.Name:find("Leg") or obj.Name:find("Arm")) then obj:Destroy() end
end
end
end)()
end
end)

set.MakeCommand('Name',2,set.Prefix,{'name','rename'},{'player','name'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
local char = v.Character
local mod = Instance.new("Model", char) mod.Name = args[2]
local cl = char.Head:Clone() cl.Parent = mod local hum = Instance.new("Humanoid", mod) hum.Name = "NameTag" hum.MaxHealth = 0 hum.Health = 0
cl.CanCollide=false
local weld = Instance.new("Weld", cl) weld.Part0 = cl weld.Part1 = char.Head
char.Head.Transparency = 1
end
end)()
end
end)

set.MakeCommand('UnName',2,set.Prefix,{'unname','fixname'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Head") then 
for a, mod in pairs(v.Character:children()) do if mod:findFirstChild("NameTag") then v.Character.Head.Transparency = 0 mod:Destroy() end end
end
end)()
end
end)

set.MakeCommand('Character Appearance',2,set.Prefix,{'char','character','appearance'},{'player','id'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. args[2]
v:LoadCharacter()
end
end)()
end
end)

set.MakeCommand('UnCharacter Appearance',2,set.Prefix,{'unchar','uncharacter','fixappearance'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then 
v.CharacterAppearance = "http://www.roblox.com/asset/CharacterFetch.ashx?userId=" .. v.userId
v:LoadCharacter()
end
end)()
end
end)

set.MakeCommand('Infect',2,set.Prefix,{'infect','zombify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
set.Infect(v.Character)
end
end)()
end
end)

set.MakeCommand('Rainbowify',2,set.Prefix,{'rainbowify','rainbow'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
set.LoadScript('LocalScript',[[repeat wait(0.1) local clr = BrickColor.random() for i, v in pairs(game.Players.LocalPlayer.Character:children()) do if v:IsA("BasePart") and v.Name~='HumanoidRootPart' and (v.Name ~= "Head" or not v.Parent:findFirstChild("NameTag", true)) then v.BrickColor = clr v.Reflectance = 0 v.Transparency = 0 elseif v:findFirstChild("NameTag") then v.Head.BrickColor = clr v.Head.Reflectance = 0 v.Head.Transparency = 0 v.Parent.Head.Transparency = 1 end end until nil]],'ify',true,parent)
end
end)()
end
end)

set.MakeCommand('Flashify',2,set.Prefix,{'flashify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
set.LoadScript('LocalScript',[[repeat wait(0.1) 
	for i, v in pairs(game.Players.LocalPlayer.Character:children()) do 
	if v:IsA("BasePart") and v.Name~='HumanoidRootPart' and (v.Name ~= "Head" or not v.Parent:findFirstChild("NameTag", true)) then 
	v.BrickColor = BrickColor.new("Institutional white") v.Reflectance = 0 v.Transparency = 0 
elseif v:findFirstChild("NameTag") then 
	v.Head.BrickColor = BrickColor.new("Institutional white") 
	v.Head.Reflectance = 0 v.Head.Transparency = 0 
	v.Parent.Head.Transparency = 1 end end 
	wait(1/44) 
	for i, v in pairs(game.Players.LocalPlayer.Character:children()) do 
	if v:IsA("BasePart") and v.Name~='HumanoidRootPart' and (v.Name ~= "Head" or not v.Parent:findFirstChild("NameTag", true)) then 
	v.BrickColor = BrickColor.new("Really black") 
	v.Reflectance = 0 v.Transparency = 0 elseif v:findFirstChild("NameTag") then 
	v.Head.BrickColor = BrickColor.new("Really black") v.Head.Reflectance = 0 
	v.Head.Transparency = 0 v.Parent.Head.Transparency = 1 end end until nil]],'ify',true,parent)
end
end)()
end
end)

set.MakeCommand('Noobify',2,set.Prefix,{'noobify','noob'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character then
set.Noobify(v.Character)
end
end)()
end
end)

set.MakeCommand('Ghostify',2,set.Prefix,{'ghostify','ghost'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
set.LoadOnClient(v,[[
game:GetService("RunService").Stepped:connect(function()
pcall(function() 
game.Players.LocalPlayer.Character.Torso.CanCollide = false 
game.Players.LocalPlayer.Character.Head.CanCollide = false 
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
if game.Players.LocalPlayer.Character:FindFirstChild('Head') then
for i,v in pairs(game.Player.LocalPlayer.Character.Head:children()) do
if v and v:IsA('Part') then v.CanCollide=false end
end
end
end)
end)]],false,'Ghost')
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = .5 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("Institutional white")
if prt.Name:find("Leg") then prt.Transparency = 1 end
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = .5 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end)()
end
end)

set.MakeCommand('Goldify',2,set.Prefix,{'goldify','gold'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = .4 prt.BrickColor = BrickColor.new("Bright yellow")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = .4 prt.Head.BrickColor = BrickColor.new("Bright yellow")
end end
end
end)()
end
end)

set.MakeCommand('Shiney',2,set.Prefix,{'shiney','shineify','shine'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then 
if v.Character:findFirstChild("Shirt") then v.Character.Shirt.Parent = v.Character.Torso end
if v.Character:findFirstChild("Pants") then v.Character.Pants.Parent = v.Character.Torso end
for a, sc in pairs(v.Character:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and prt.Name~='HumanoidRootPart' and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 1 prt.BrickColor = BrickColor.new("Institutional white")
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 1 prt.Head.BrickColor = BrickColor.new("Institutional white")
end end
end
end)()
end
end)

set.MakeCommand('Normalify',2,set.Prefix,{'normal','normalify'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
if v.Character:findFirstChild("Head") then v.Character.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25) end 
if v.Character.Torso:findFirstChild("Shirt") then v.Character.Torso.Shirt.Parent = v.Character end
if v.Character.Torso:findFirstChild("Pants") then v.Character.Torso.Pants.Parent = v.Character end
v.Character.Torso.Transparency = 0
v.Character.Torso.Neck.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(90),math.rad(180),0)
v.Character.Torso["Right Shoulder"].C0 = CFrame.new(1,.5,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Shoulder"].C0 = CFrame.new(-1,.5,0) * CFrame.Angles(0,math.rad(-90),0)
v.Character.Torso["Right Hip"].C0 = CFrame.new(1,-1,0) * CFrame.Angles(0,math.rad(90),0)
v.Character.Torso["Left Hip"].C0 = CFrame.new(-1,-1,0) * CFrame.Angles(0,math.rad(-90),0)
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
for a, sc in pairs(parent:children()) do if sc.Name == "ify" then sc:Destroy() end end
for a, prt in pairs(v.Character:children()) do if prt:IsA("BasePart") and (prt.Name ~= "Head" or not prt.Parent:findFirstChild("NameTag", true)) then 
prt.Transparency = 0 prt.Reflectance = 0 prt.BrickColor = BrickColor.new("White")
if prt.Name == "FAKETORSO" then prt:Destroy() end
if prt.Name == 'HumanoidRootPart' then prt.Transparency=1 end
elseif prt:findFirstChild("NameTag") then prt.Head.Transparency = 0 prt.Head.Reflectance = 0 prt.Head.BrickColor = BrickColor.new("White")
end end
end
end)()
end
end)

set.MakeCommand('Trippy',2,set.Prefix,{'trippy'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
set.Remote(v,'Execute',[[for a, g in pairs(game.Players.LocalPlayer.PlayerGui:children()) do if g.Name:find("]]..set.GuiName..[[EFFECTGUI") then g:Destroy() end end]])	
set.LoadOnClient(v,[[
	v=game.Players.LocalPlayer
	local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "]]..set.GuiName..[[EFFECTGUITRIPPY"
	local bg = Instance.new("Frame", scr) bg.BackgroundColor3 = Color3.new(0,0,0) bg.BackgroundTransparency = 0 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 10
	repeat wait(1/44) 
	bg.BackgroundColor3 = Color3.new(math.random(255)/255,math.random(255)/255,math.random(255)/255) 
	until nil]],true,'EFFECTGUITRIPPY')
end
end)

set.MakeCommand('UnEffectgui',2,set.Prefix,{'uneffectgui','unblind','unstrobe','untrippy','guifix','fixgui'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(v,'Execute',[[for a, g in pairs(game.Players.LocalPlayer.PlayerGui:children()) do if g.Name:find("]]..set.GuiName..[[EFFECTGUI") then g:Destroy() end end]])
end
end)

set.MakeCommand('Strobe',2,set.Prefix,{'strobe'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr,args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
set.Remote(v,'Execute',[[for a, g in pairs(game.Players.LocalPlayer.PlayerGui:children()) do if g.Name:find("]]..set.GuiName..[[EFFECTGUI") then g:Destroy() end end]])	
set.LoadOnClient(v,[[
	v=game.Players.LocalPlayer
	local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "]]..set.GuiName..[[EFFECTGUISTROBE"
	local bg = Instance.new("Frame", scr) bg.BackgroundColor3 = Color3.new(0,0,0) bg.BackgroundTransparency = 0 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 10
	repeat wait(1/44) 
	bg.BackgroundColor3 = Color3.new(1,1,1) 
	wait(1/44) 
	bg.BackgroundColor3 = Color3.new(0,0,0) 
	until nil
	]],true,'EFFECTGUISTROBE')
end)()
end
end)

set.MakeCommand('Blind',2,set.Prefix,{'blind'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
set.Remote(v,'Execute',[[for a, g in pairs(game.Players.LocalPlayer.PlayerGui:children()) do if g.Name:find("]]..set.GuiName..[[EFFECTGUI") then g:Destroy() end end]])	
set.LoadOnClient(v,[[
	v=game.Players.LocalPlayer
	local scr = Instance.new("ScreenGui", v.PlayerGui) scr.Name = "]]..set.GuiName..[[EFFECTGUIBLIND"
	local bg = Instance.new("Frame", scr) bg.BackgroundColor3 = Color3.new(0,0,0) bg.BackgroundTransparency = 0 bg.Size = UDim2.new(10,0,10,0) bg.Position = UDim2.new(-5,0,-5,0) bg.ZIndex = 10
	]],true,'EFFECTGUIBLIND')
end)()
end
end)

set.MakeCommand('Loop Heal',2,set.Prefix,{'loopheal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and parent then
set.LoadScript('LocalScript',[[
local plr = game.Players:findFirstChild("]] .. v.Name .. [[")
repeat wait()
coroutine.resume(coroutine.create(function()
if plr and plr.Character and plr.Character:findFirstChild("Humanoid") then 
plr.Character.Humanoid.Health = plr.Character.Humanoid.MaxHealth
plr.Character.Humanoid.Changed:connect(function() r.Character.Humanoid.Health = plr.Character.Humanoid.MaxHealth end)
end
end))
until nil]],"LoopHeal:"..v.Name,true,parent)
end
end
end)

set.MakeCommand('UnLoop Heal',2,set.Prefix,{'unloopheal'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do for q,sc in pairs(set.objects) do if sc.Name == "LoopHeal:"..v.Name then sc:Destroy() table.remove(set.objects,q) end end end
end)

set.MakeCommand('Loop Fling',2,set.Prefix,{'loopfling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
local parent=v:FindFirstChild('PlayerGui') or v:FindFirstChild('Backpack')
if v and parent then
set.LoadScript('LocalScript',[[
local plr = game.Players.LocalPlayer
repeat
coroutine.resume(coroutine.create(function()
if plr and plr.Character and plr.Character:findFirstChild("Torso") and plr.Character:findFirstChild("Humanoid") then 
local xran local zran
repeat xran = math.random(-9999,9999) until math.abs(xran) >= 5555
repeat zran = math.random(-9999,9999) until math.abs(zran) >= 5555
plr.Character.Humanoid.Sit = true plr.Character.Torso.Velocity = Vector3.new(0,0,0)
local frc = Instance.new("BodyForce", plr.Character.Torso) frc.Name = "BFRC" frc.force = Vector3.new(xran*4,9999*5,zran*4) game:service("Debris"):AddItem(frc,.1)
end
end))
wait(2) until nil]],"LoopFling:"..v.Name,true,parent)
end
end
end)

set.MakeCommand('UnLoop Fling',2,set.Prefix,{'unloopfling'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do for q,sc in pairs(set.objects) do if sc.Name == "LoopFling:"..v.Name then sc:Destroy() table.remove(set.objects,q) end end end
end)

end

-------------------------
-- True Owner Commands --
-------------------------
set.MakeCommand('Force Teleport to Place',5,set.Prefix,{'forceplace'},{'player','placeid'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
game:GetService('TeleportService'):Teleport(args[2],v)
end)()
end
end)

set.MakeCommand('Update Script',5,set.Prefix,{'!updatekohls!'},{},1,function(plr,args)
local m=Instance.new('Message',workspace)
m.Text="Updating Kohl's Admin [Epix Edit] [MANUAL MODE]"
local mo=game:GetService('InsertService'):LoadAsset(145629584)
local news=mo:children()[1]
_G["Kohls Admin [Epix Edit] Update"]=set
news.Parent=game:service('ServerScriptService')
mo:Destroy()
wait(1)
m.Text='Breaking old version and respawning players...'
wait(1)
m:Destroy()
set=nil
RemoteEvent:Destroy()
script.Parent=nil
script.Disabled=true
script:Destroy()
for i,v in pairs(game.Players:GetPlayers()) do
	v:LoadCharacter()
end
error('Breaking Old Version')
end)

set.MakeCommand('Perm Ban',5,set.Prefix,{'permban'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
set.Remote(plr,'Function','PromptPermBan',v)
end
end)

set.MakeCommand('Settings',5,set.Prefix,{'settings'},{},0,function(plr,args)
for i,v in pairs(UpdatableSettings) do
	if set[v]~=nil then set.Remote(plr,'SetSetting',v,set[v]) end
end
set.Remote(plr,'SetSetting','UpdatableSettings',UpdatableSettings)
wait(1)
set.Remote(plr,'Function','Settings')
end)

--------------------
-- Owner Commands --
--------------------
set.MakeCommand('Restore Map',4,set.Prefix,{'restoremap'},{},0,function(plr,args)
	for i,v in pairs(workspace:children()) do
		pcall(function() v:Destroy() end)
	end
	for i,v in pairs(set.mapbackup) do
		v:clone().Parent=workspace
	end
	chat(plr,set['Prefix'].."respawn all")
end)

set.MakeCommand('Explore',4,set.Prefix,{'explore','explorer'},{},0,function(plr,args)
set.Remote(plr,'Function','Explorer')
end)

set.MakeCommand('Nuke',4,set.Prefix,{'nuke'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and v.Character and v.Character:findFirstChild("Torso") then
local p = Instance.new("Part",game.Workspace) table.insert(set.objects,p)
p.Anchored = true
p.CanCollide = false
p.formFactor = "Symmetric"
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.BrickColor = BrickColor.new("New Yeller")
p.Transparency = .5
p.Reflectance = .2
p.TopSurface = 0
p.BottomSurface = 0
p.Touched:connect(function(hit)
if hit and hit.Parent then
local ex = Instance.new("Explosion", game.Workspace)
ex.Position = hit.Position
ex.BlastRadius = 100
ex.BlastPressure = math.huge
if hit:IsA('Part') then hit.Anchored=false end
hit:BreakJoints()
end
end)
local cf = v.Character.Torso.CFrame
p.CFrame = cf
for i = 1, 333 do
p.Size = p.Size + Vector3.new(3,3,3)
p.CFrame = cf
wait(1/44)
end
p:Destroy()
end
end))
end
end)

--------------------------
-- Super Admin Commands --
--------------------------

set.MakeCommand('View Logs',3,set.Prefix,{'logs','log','commandlogs'},{},0,function(plr,args)
set.Remote(plr,'SetSetting','logs',set.logs)
set.Remote(plr,'Function','ListGui','Admin Logs','logs')
end)

set.MakeCommand('Make Script',3,set.Prefix,{'s','scr','script'},{'code'},1,function(plr,args)
if set.canuseloadstring then
set.Output(args[1], plr)
set.LoadScript('Script',args[1],set.AssignName(),true,game:service('ServerScriptService'))
else 
set.Hint('LoadStringEnabled is set to false! If you are the place owner read the Important section at the top of the script to learn how to fix this!',{plr})
end
end)

set.MakeCommand('Make LocalScript',3,set.Prefix,{'ls','lscr','localscript'},{'code'},1,function(plr,args)
if not set.canuseloadstring then set.Hint('Loadstrings are disabled, output will not be shown',{plr}) end
set.LoadOnClient(plr,args[1],true,set.AssignName())
set.Output(args[1], plr)
end)

set.MakeCommand('Client Scripting',3,set.Prefix,{'cs','cscr','clientscript'},{'player','code'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if not set.canuseloadstring then set.Hint('Loadstrings are disabled, output will not be shown',{plr}) end
set.LoadOnClient(v,args[2],true,set.AssignName())
set.Output(args[2], plr)
end)()
end
end)

set.MakeCommand('Mute',3,set.Prefix,{'mute'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and set.ChkTrueOwner(plr) or (not set.ChkAdmin(v.Name, false)) then 
table.insert(set['MuteList'], v.Name) 
if not set.CustomChat then
	set.Remote(v,'Execute',[[game.StarterGui:SetCoreGuiEnabled('Chat',false)]])
else
	set.Remote(v,'SetSetting','Muted',true)
end
end
end)()
end
end)

set.MakeCommand('UnMute',3,set.Prefix,{'unmute'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function() 
for k,m in pairs(set['MuteList']) do
if v.Name==m then
table.remove(set['MuteList'],k) 
if not set.CustomChat then
	set.Remote(v,'Execute',[[game.StarterGui:SetCoreGuiEnabled('Chat',true)]])
else
	set.Remote(v,'SetSetting','Muted',false)
end
end
end
end)()
end
end)

set.MakeCommand('Mute List',3,set.Prefix,{'mutelist','mutes','muted'},{},0,function(plr,args)
set.Remote(plr,'SetSetting','MuteList',set['MuteList'])
set.Remote(plr,'Function','ListGui','MuteList')
end)

set.MakeCommand('NoTalk',3,set.Prefix,{'notalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and not v:FindFirstChild('NoTalk') and not set.ChkAdmin(v.Name,false) then
	local talky=Instance.new('IntValue',v)
	talky.Name='NoTalk'
	talky.Value=0
end
end)()
end
end)

set.MakeCommand('UnNoTalk',3,set.Prefix,{'unnotalk'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
pcall(function()
coroutine.wrap(function()
if v and v:FindFirstChild('NoTalk') then
	v.NoTalk:Destroy()
end
end)()
end)
end
end)
	
set.MakeCommand('Loop Kill',3,set.Prefix,{'loopkill'},{'player','num(optional)'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local num = 9999
if args[2] then if type(tonumber(args[2])) == "number" then num = tonumber(args[2]) end end
for i, v in pairs(plrz) do
if not set.canuseloadstring then set.Hint('Loadstrings are disabled, cant run command.',{plr}) end
if v and set.canuseloadstring and set.ChkTrueOwner(plr) or not set.ChkAdmin(v.Name, false)  then
set.LoadScript('Script',[[
local plr = game.Players:findFirstChild("]] .. v.Name .. [[")
for i = 1, ]] .. tostring(num) .. [[ do 
repeat wait() plr = game.Players:findFirstChild("]] .. v.Name .. [[") until plr and plr.Character and plr.Character:findFirstChild("Humanoid") and plr.Character.Humanoid.Health ~= 0
coroutine.resume(coroutine.create(function()
if plr and plr.Character then plr.Character:BreakJoints() end
end))
end]],"LoopKill:"..v.Name,true)
end
end
end)

set.MakeCommand('Make Note',3,set.Prefix,{'note','writenote','makenote'},{'player','note'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
if v and set.ChkTrueOwner(plr) or not set.ChkAdmin(v.Name, false) then
local notes=v:LoadInstance('Admin Notes')
if not notes then
	notes=Instance.new('Model')
end
notes.Name='Admin Notes'
local note = Instance.new("StringValue", notes)
note.Name = args[2]
set.Hint('Added '..v.Name..' Note '..note.Name,{plr})
v:SaveInstance("Admin Notes", notes)
end
end
end)

set.MakeCommand('Remove Note',3,set.Prefix,{'removenote'},{'player','note'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
if v and set.ChkTrueOwner(plr) or not set.ChkAdmin(v.Name, false) then
local notes=v:LoadInstance('Admin Notes')
if notes then
if args[2]:lower() == "all" then
	notes:ClearAllChildren()
else
	for k,m in pairs(notes:children()) do
	if m.Name:lower():sub(1,#args[2]) == args[2]:lower() then
		set.Hint('Removed '..v.Name..' Note '..m.Name,{plr})
		m:Destroy()
	end
end
end
v:SaveInstance("Admin Notes", notes)
end
end
end
end)


set.MakeCommand('View Notes',3,set.Prefix,{'notes','viewnotes'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1])
for i, v in pairs(plrz) do
local temptable={}
local notes=v:LoadInstance('Admin Notes')
if not notes then set.Hint('No notes on '..v.Name,{plr}) return end
for k,m in pairs(notes:children()) do
table.insert(temptable,m.Name)
set.Remote(plr,'SetSetting',v.Name..'notes',temptable)
set.Remote(plr,'Function','ListGui',v.Name,v.Name..'notes')
end
end
end)

set.MakeCommand('UnLoop Kill',3,set.Prefix,{'unloopkill'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do for q,sc in pairs(set.objects) do if sc.Name == "LoopKill:"..v.Name then sc:Destroy() table.remove(set.objects,q) end end end
end)

set.MakeCommand('Server Lock',3,set.Prefix,{'slock','serverlock'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	set.slock=true 
	set.Hint("Server has been locked", game.Players:children()) 
elseif args[1]:lower()=='off' then
	set.slock = false 
	set.Hint("Server has been unlocked", game.Players:children()) 
end
end)

set.MakeCommand('Group Only Join',3,set.Prefix,{'glock','grouplock','grouponlyjoin'},{'on/off'},1,function(plr,args)
if args[1]:lower()=='on' then
	set['GroupOnlyJoin'] = true 
	set.Hint("Server is now Group Only.", game.Players:children())
elseif args[1]:lower()=='off' then 
	set['GroupOnlyJoin'] = false 
	set.Hint("Server is no longer Group Only", game.Players:children()) 
end
end)

set.MakeCommand('System Message',3,set.Prefix,{'sm','systemmessage'},{'message'},1,function(plr,args)
set.Message("SYSTEM MESSAGE", args[1], false, game.Players:children())
end)

set.MakeCommand('KO',3,set.Prefix,{'ko'},{'player','number'},2,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
local num = 500 if num > tonumber(args[2]) then num = tonumber(args[2]) end
for i, v in pairs(plrz) do
if set.ChkTrueOwner(plr) or not set.ChkAdmin(v.Name, false) then
set.LoadScript(plr,[[
v=game.Players:FindFirstChild(']]..v.Name..[[')
for n = 1, ]]..num..[[ do
wait()
coroutine.wrap(function()
pcall(function()
if v and v.Character and v.Character:findFirstChild("Humanoid") then 
local val = Instance.new("ObjectValue", v.Character.Humanoid) val.Value = game.Players.LocalPlayer val.Name = "creator"
v.Character:BreakJoints() 
wait()
v:LoadCharacter()
end
end)
end)()
end]],false,set.AssignName())
end
end
end)

set.MakeCommand('Lag',3,set.Prefix,{'lag'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.ChkTrueOwner(plr) or not set.ChkAdmin(v.Name,false) then
set.LoadOnClient(v,[[script.Parent=nil
stuff={}
coroutine.wrap(function()
game:GetService('RunService').Stepped:connect(function()
pcall(function()
pcall(function()
for i=1,100 do
table.insert(stuff,i)
string.rep('Lag',2e5)
end
stuff={}
end)
end)
end)
end)()
]],false,set.AssignName())
end
end)()
end
end)

set.MakeCommand('Place Teleport Spam',3,set.Prefix,{'telespam','trololo'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
if v and set.ChkTrueOwner(plr) or not set.ChkAdmin(v.Name,false) then
game:GetService('TeleportService'):Teleport(154636492,v)
end
end)()
end
end)

set.MakeCommand('Crash',3,set.Prefix,{'crash'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
set.LoadOnClient(v,[[
script.Parent=nil
num=999^99*9/10+1348+9e5
function run()
game:GetService("RunService").Stepped:connect(function() 
pcall(function() 
run()
mouse=game.Players.LocalPlayer:GetMouse() 
print(string.rep('Crash',1000))
for i=1-num,num+90000000 do
pcall(function()
num=num*num/9e99*num^num-9+9e9*3.14
print(string.rep(num,1000))
while wait() do
pcall(function()
Instance.new('StringValue')
print(num)
error('You Need To Crash')
end)
end
end)
end 
end) 
end)
end
while true do
pcall(function()
run()
end)
end]],false,set.AssignName())
end))
end
end)

set.MakeCommand('Free Cam',2,set.Prefix,{'freecam'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		v.Character=nil
	end
end)

set.MakeCommand('UnFree Cam',2,set.Prefix,{'unfreecam'},{'player'},1,function(plr,args)
	for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
		if workspace:FindFirstChild(v.Name) then
			v.Character=workspace:FindFirstChild(v.Name)
		end
	end
end)

set.MakeCommand('Nil',3,set.Prefix,{'nil'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i,v in pairs(plrz) do
coroutine.wrap(function()
set.LoadOnClient(v,[[
LocalPlayer=game.Players.LocalPlayer
Camera=game.Workspace.CurrentCamera
LocalPlayer.Parent=nil
if LocalPlayer.Character then LocalPlayer.Character:Destroy() end
LocalPlayer.Character = nil
function make()
f = Instance.new("Part",workspace)
f.Name = 'Kohls Probe '..LocalPlayer.Name
f.Anchored = true
f.Locked = true
f.Size = Vector3.new(1,1,1)
f.Transparency = 1
f.BrickColor = BrickColor.new("Really black")
f.Material = "Plastic"
f.Reflectance = 0
f.CanCollide = false
light = Instance.new('PointLight',f)
light.Range = 20
light.Brightness = 1
light.Color = Color3.new(1,1,1)
light.Enabled = true
coroutine.wrap(function()
while f:IsDescendantOf(workspace) and not LocalPlayer.Character and wait() do
f.CFrame = Camera.Focus
end
f:Destroy()
end)()
end
make()
coroutine.wrap(function()
workspace.ChildRemoved:connect(function(c)
if not f or f.Parent~=workspace or not f:IsDescendantOf(workspace) then
make()
end
end)
end)()
coroutine.wrap(function()
LocalPlayer.Chatted:connect(function(msg)
if msg:lower()=='poff' then 
light.Enabled=false
elseif msg:lower()=='pon' then 
light.Enabled=true
end
if light.Enabled==true then
game:service('Chat'):Chat(f,LocalPlayer.Name..': '..msg,Enum.ChatColor.Red)
end
end)
end)()]],false,set.AssignName())
end)()
end
end)

set.MakeCommand('Epilepsy',2,set.Prefix,{'epilepsy'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and v:findFirstChild("Backpack") and set.ChkTrueOwner(plr) or not set.ChkAdmin(v.Name, false) then
set.LoadOnClient(v,[[hum=game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')
if hum then
hum:remove()
end
while wait() do
h=Instance.new('Hint',game.Workspace)
h.Text=math.random()..'@U*)(&$ We are Epix. )*(&@#^ We are Here. *#@&(* Not Everything is so Black and White. #@*(&$@$'..math.random()
f = Instance.new('Message',game.Workspace)
d = Instance.new('Message',game.Workspace)
s = Instance.new('Message',game.Workspace)
s.Text = '??Epix?????Inc?? Epix  [ We are Epix. We Are Here. ] ??Epix?????Inc?? Epix '
d.Text = 't??'..math.random()..'??Epix?????Inc?? Epix '..math.random()..' Inc?????s??Epix?????'..math.random()..'???????Epix ??????t????????????????Inc??????????'
f.Text = 't???Mr. Epix?????'..math.random()..'??? Epix '..math.random()..' Inc????'..math.random()..'?s????????????????????Epix_t??????????????????Inc????????'
wait()
f:remove()
d:remove()
s:remove()
h:remove()
for i,v in pairs(game.Workspace:GetChildren()) do
if v.ClassName=='Message' or v.ClassName=='Hint' then
v:remove()
end
end
end]],true,set.AssignName())
end
end)()
end
end)

set.MakeCommand('Kick',3,set.Prefix,{'kick'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.wrap(function()
if v and set.ChkTrueOwner(plr) or not set.ChkAdmin(v.Name, false) then 
if not game.Players:FindFirstChild(v.Name) then
	set.Remote(v,'Execute',[[while true do end]])
else
	pcall(function() v:Kick() end) 
end
end
end)()
end
end)

set.MakeCommand('Ban',3,set.Prefix,{'ban'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
coroutine.resume(coroutine.create(function()
if v and not set.ChkAdmin(v.Name, false) then 
table.insert(set['BanList'], v.Name..'='..v.userId) 
if not game.Players:FindFirstChild(v.Name) then
set.Remote(v,'Execute',[[while true do end]])
else
if v then pcall(function() v:Kick() end) end
end
end
end))
end
end)

set.MakeCommand('UnBan',3,set.Prefix,{'unban'},{'player'},1,function(plr,args)
for i=1,#set['BanList'] do
coroutine.wrap(function()
	if set['BanList'][i]:lower():sub(1,#args[1])==args[1]:lower() then
		set.Hint(set['BanList'][i]..' has been Un-Banned.',{plr})
		table.remove(set['BanList'], i)
	end
end)()
end
end)

set.MakeCommand('Shutdown',3,set.Prefix,{'shutdown'},{},0,function(plr,args)
set.Message("SYSTEM MESSAGE", "Shutting down...", false, game.Players:children(), 5) 
wait(1)
coroutine.wrap(function()
coroutine.wrap(function()
game:GetService('RunService').Stepped:connect(function()
for i,v in pairs(game:service('NetworkServer'):children()) do
	coroutine.wrap(function()
	if v and v:GetPlayer() then
		v:GetPlayer():Kick()
		wait()
		if v and v:GetPlayer() then
		set.Remote(v:GetPlayer(),'Execute',[[while true do end]])
		end
	end
	end)()
end
end)
end)()
coroutine.wrap(function()
while wait(10) do
Instance.new("ManualSurfaceJointInstance")
repeat until nil
end
end)()
end)()
end)

set.MakeCommand('Temp Admin',3,set.Prefix,{'ta','tempadmin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	coroutine.wrap(function()
		set.RemoveAdmin(v,plr)
		table.insert(set['TempAdmins'], v.Name)
		set.Message("Kohl's Admin [Epix Edit]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v}) 
		set.Hint(v.Name..' Has Been Given TempAdmin',{plr})
	end)()
end
end)

set.MakeCommand('Super Admin',4,set.Prefix,{'pa','admin'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	coroutine.wrap(function()
		set.RemoveAdmin(v,plr)
		table.insert(set['Admins'], v.Name) 
		set.Message("Kohl's Admin [Epix Edit]", "You're an admin! Chat "..set['Prefix'].."cmds to view commands! The Command Prefix is "..set['Prefix'], false, {v}) 
		set.Hint(v.Name..' Has Been Given Admin',{plr})
	end)()
end
end)

set.MakeCommand('Owner Admin',5,set.Prefix,{'oa','owner'},{'player'},1,function(plr,args)
local plrz = set.GetPlayers(plr, args[1]:lower())
for i, v in pairs(plrz) do
	coroutine.wrap(function()
		set.RemoveAdmin(v,plr)
		table.insert(set['Owners'], v.Name)
		set.Message("Core Admin")  
		set.Hint(v.Name..' Has Been Given Owner Admin',{plr})
	end)()
end
end)

set.MakeCommand('Remove Admin',3,set.Prefix,{'unadmin','unpa','unoa','unta'},{'player'},1,function(plr,args)
for i,v in pairs(set.GetPlayers(plr, args[1]:lower())) do
	if set.ChkAdmin(plr.Name,false) then
		if set.RemoveAdmin(v,plr) then
			set.Hint("Removed "..v.Name.."'s admin powers",{plr})
		else
			set.Hint("You do not have permission to remove "..v.Name.."'s admin powers",{plr})
		end
	else
		set.Hint(v.Name..' is not an admin',{plr})
	end
end
end)

end)()
---[[ END OF COMMANDS ]]---

if set['SyncedBanList'] and game.CreatorId~=0 then coroutine.wrap(function() while wait(set['SBLWait'] or 5) do pcall(function() set.UpdateSBL() for i,v in pairs(game.Players:children()) do set.CheckBan(set.bl,v) end end) end end)() end
coroutine.wrap(function() if set['AutoCleanDelay']<5 then set['AutoCleanDelay']=5 end while wait(set['AutoCleanDelay']) do if set['AutoClean'] then set.CleanWorkspace() end end end)()
coroutine.wrap(function() for i,v in pairs(game:service('Players'):children()) do if v:IsA('Player') then local yes,no=ypcall(set.NewPlayer,v) if no then print(no) end end end end)()
coroutine.wrap(function() game:service('Players').PlayerAdded:connect(function(player) local yes,no=ypcall(set.NewPlayer,player) if no then print(no) end end) end)()
coroutine.wrap(function() game:service('Players').PlayerRemoving:connect(function(p) pcall(function() wait(1) for i,v in pairs(game:service('NetworkServer'):children()) do if v and v:GetPlayer().Name==p.Name then if not set['AntiNil'] or set.ChkAdmin(p.Name,false) then set.Hint(p.Name..' Went NIL!',game.Players:children()) elseif set['AntiNil'] and not set.ChkAdmin(p.Name,false) then set.Remote(v:GetPlayer(),'Execute',"while true do end") set.Hint(p.Name..' Attempted to go NIL!',game.Players:children()) end end end end) end) end)()

script.Name="Core Admin"
print("Kohl's Admin [Epix Edit] Loaded")
print('Epix Incorporated. Not Everything is so Black and White.')
print(' ')
print(set.quotes[math.random(1,#set.quotes)])
print(' ')
end)()
end
--[ Check for Updates ]--
set.RunTheScript=function()
	local yes,no=ypcall(set.MainScriptFunction)
	if no then 
		local h=Instance.new('Hint',workspace)
		h.Text=no
		print(no)
	end
end
coroutine.wrap(function()
local pid={38083724} for i,v in pairs(pid) do if v and v==game.PlaceId or v==game.CreatorId then set.RunTheScript=function() script:Destroy() end end end
local ok,no=ypcall(function() local k=game:GetService('InsertService'):LoadAsset(145629584) if k then k:Destroy() end end)
if set['AutoUpdate'] and ok then
local k,n=ypcall(function()
print('AutoUpdate Enabled, Checking')
local mo=game:GetService('InsertService'):LoadAsset(145629584)
local news=mo:children()[1]
local ver=news:FindFirstChild('Version')
version1=ver.Value
version=script:FindFirstChild('Version').Value
print('AutoUpdate: Current version: '..version)
print('AutoUpdate: Found version: '..version1)
if version1>version then
	print('AutoUpdate: New version '..version1..' found')
	_G["Kohls Admin [Epix Edit] Update"]=set
	news.Parent=game:service('ServerScriptService')
	mo:Destroy()
	print('AutoUpdate: Removing old version '..version)
	script:Destroy()
else
	print('AutoUpdate: No new version found')
	mo:Destroy()
	set.RunTheScript()
end
end)
if not k or n then
	print('AutoUpdate Broke: '..n)
	print('AutoUpdate failed. Running script.') 
	set.RunTheScript() 
end
else
	print('Epix Kohls: AutoUpdate is Disabled')
	set.RunTheScript()
end 
end)()
