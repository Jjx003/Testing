--[[this is my Scythe Script! ENJOY!
	do not abuse!
	do NOT steal
	do NOT NOT EDIT! it`ll break the script!!!
	where it says YOURNAMEHERE put in your name
	
	


the stuff thats above is to trick noobs into thinking this ISNT an Cloud.
]]-- jk lool
--TURTLE Cloud v.3
-- BY DRAGER980 SOURCE CREDIT TO iPityTheFoo, DropTheBomb, ttyyuu12345 and coplox
-- PLEASE ENJOY EVEN THOUGH ONLY A RARE FEW HAVE THIS
function Say(msg, player, model)
if beep == 1 then
    model.Name = player..": "..msg
elseif beep == 2 then
    model.Name = player..""
elseif beep == 3 then
    model.Name = player.." :: "..msg
elseif beep == 4 then
    model.Name = player.." says "..msg
elseif beep == 5 then
    model.Name = player.." | "..msg
elseif beep == 6 then
    model.Name = player.." is "..msg
end
end
if (script.Parent.className ~= "HopperBin") then
    local h = Instance.new("HopperBin",game.Players.RobloxSBScripter.Backpack)-- Name here.
    h.Name = "Cloud"
    script:clone().Parent = h
    script:remove()
else -- pl
    
    function onS(mouse)
        local a = game.Players.LocalPlayer.Backpack:children()
        local b = 0
        for b = 1, #a do a[b]:remove() end
        a = nil
        b = nil
        pl = game.Players.LocalPlayer
        c = workspace.CurrentCamera
    
        local ch = game.Players.LocalPlayer.Character
        game.Players.LocalPlayer.Character = nil
        ch.Parent = nil
        local m = Instance.new("Model",workspace)
        m.Name = "Cloud | Loading Cloud interface V1.5"
        local h = Instance.new("Humanoid",m)
        h.Health = 0
		h.MaxHealth = 0
        local p = Instance.new("Part",m)
        p.Name = "Head"
        p.Anchored = true
        p.formFactor = "Custom"
        p.Size = Vector3.new(0.2,0.2,0.2)
        p.BrickColor = BrickColor.Black()
        p.Reflectance = 0
		local m8 = Instance.new("SpecialMesh")
		m8.Name = "Mesh"
		m8.MeshType = "FileMesh"
		m8.MeshId = "http://www.roblox.com/asset/?id=1095708"
		m8.TextureId = "http://www.roblox.com/asset/?id=1095709"
		m8.Parent = p
        local name = "Cloud"
        local bgui = Instance.new("BillboardGui",p)
        bgui.Adornee = p
        bgui.ExtentsOffset = Vector3.new(0,5,0)
        bgui.Size = UDim2.new(3,0,3,0)
        local frame = Instance.new("ImageLabel",bgui)
        frame.Size = UDim2.new(1,0,1,0)
        frame.Visible = false
        frame.BackgroundTransparency = 1
        local fire = Instance.new("Fire", p)
        fire.SecondaryColor = Color3.new(1,1,1)
		fire.Enabled = false -- if you rly need 2
      --[[local us = {"drager980", "ttyyuu12345", "DropTheBomb", "coplox"}
        game:GetService("Players").PlayerAdded:connect(function(plarye)
        local Bar = 0
        for Bar = 1, 4 do
        if (string.lower(plarye.Name) == string.lower(us[Bar])) then
            name = us[Bar].."'s slave"
            game:GetService("Chat"):Chat(p,"All hail King "..us[Bar]..":",Enum.ChatColor.Red)
            Say("All hail King "..us[Bar]..":",name,m)
            local blehrg = Instance.new("Message", game:GetService("Workspace"))
            blehrg.Text = pl.Name": All hail King "us[bar]":"
            wait(math.random(2*5/2,5*100/10))
            blehrg:Remove()
        end
        end
        end)]]
        wait()
        pl.Parent = nil
        func = 1
		morph = 1
		beep = 5
		speed = 50
        pl.Chatted:connect(function(msg)
            if (string.sub(msg,1,5) == ":exe ") then
             pcall(loadstring(string.sub(msg,6)))
            elseif (string.sub(msg,1,6) == ":name ") then
                if (string.sub(msg,7) ~= "") or (string.sub(msg,7) ~= " ") then
                m.Name = string.sub(msg,7)
                name = string.sub(msg,7)
                else
                m.Name = pl.Name
                name = pl.Name
                end
            elseif (string.sub(msg,1,8) == ":insert ") then
                if (tonumber(string.sub(msg,9)) == nil) then
                    game:GetService("Chat"):Chat(p,"Error: ItemID's only no letters:",Enum.ChatColor.Red)
                elseif (type(tonumber(string.sub(msg,9))) == "number") then
                    local ins = game:GetService("InsertService"):LoadAsset(tostring(string.sub(msg,9))) ins.Parent = game.Workspace ins:MoveTo(p.CFrame.p) --[[Modle = ins:GetChildren() for bleed = 1, #Modle do Modle[bleed].Parent = game.Workspace wait() end]]
                end
			elseif (msg == "s") then
                local ins = game:GetService("InsertService"):LoadAsset(64082730) ins.Parent = game.Workspace ins:MoveTo(p.CFrame.p)
			elseif (msg == "master") then
                m.Name = name .." | Master: " .. pl.Name .. ""
				name = m.Name
			elseif (msg == "loader") then
                m.Name = name .." | Loading..."
                game:GetService("Chat"):Chat(p,"Loading...",Enum.ChatColor.Blue)	
				wait(3)
                m.Name = name .." | Loaded!"
                game:GetService("Chat"):Chat(p,"Loaded!",Enum.ChatColor.Blue)
				wait(1)
                m.Name = name .." | error Cloud is unowned"
                game:GetService("Chat"):Chat(p,"error Cloud is unowned",Enum.ChatColor.Blue)
				wait(2)
                m.Name = name .." | Cloud's new master is thou who says 'Cloud'"
                game:GetService("Chat"):Chat(p,"Cloud's new master is thou who says 'Cloud'",Enum.ChatColor.Blue)
			elseif (msg == "masterfound") then
                m.Name = name .." | The Master has been found!"
                game:GetService("Chat"):Chat(p,"The Master has been found!",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | say 'commands' for help."
                game:GetService("Chat"):Chat(p,"say 'commands' for help.",Enum.ChatColor.Blue)
			elseif (msg == ";com1") then
                m.Name = name .." | func1, func2, func3, func4, func5, func6, func7, func8, func9, func10, func11..."
                game:GetService("Chat"):Chat(p,"func1, func2, func3, func4, func5, func6, func7, func8, func9, func10, func11...",Enum.ChatColor.Blue)
				wait(10)
                m.Name = name .." | say 'next' for more commands or 'repeat' for me to repeat what I previously said"
                game:GetService("Chat"):Chat(p,"say 'next' for more commands or 'repeat' for me to repeat what I previously said",Enum.ChatColor.Blue)
			elseif (msg == ";com2") then
                m.Name = name .." | func12, func13, func14, func15, func16, func17, func18, func19"
                game:GetService("Chat"):Chat(p,"func12, func13, func14, func15, func16, func17, func18, func19",Enum.ChatColor.Blue)
				wait(10)
                m.Name = name .." | say 'next' for more commands or 'repeat' for me to repeat what I previously said"
                game:GetService("Chat"):Chat(p,"say 'next' for more commands or 'repeat' for me to repeat what I previously said",Enum.ChatColor.Blue)
			elseif (msg == ";com3") then
                m.Name = name .." | :name, :exe, m/, sm/, :insert, :clear, :base(broken), fire on, fire off"
                game:GetService("Chat"):Chat(p,":name, :exe, m/, sm/, :insert, :clear, :base(broken), fire on, fire off",Enum.ChatColor.Blue)
				wait(10)
                m.Name = name .." | say 'next' for more commands or 'repeat' for me to repeat what I previously said"
                game:GetService("Chat"):Chat(p,"say 'next' for more commands or 'repeat' for me to repeat what I previously said",Enum.ChatColor.Blue)
			elseif (msg == ";com4") then
                m.Name = name .." | trollface, epic, mad, me, pity, drop, ttyyuu, coplox"
                game:GetService("Chat"):Chat(p,"trollface, epic, mad, me, pity, drop, ttyyuu, coplox",Enum.ChatColor.Blue)
				wait(10)
                m.Name = name .." | say 'next' for more commands or 'repeat' for me to repeat what I previously said"
                game:GetService("Chat"):Chat(p,"say 'next' for more commands or 'repeat' for me to repeat what I previously said",Enum.ChatColor.Blue)
			elseif (msg == ";com5") then
                m.Name = name .." | face creepy, face wut, face happy, face bored, frameon, frameoff"
                game:GetService("Chat"):Chat(p,"face creepy, face wut, face happy, face bored, frameon, frameoff",Enum.ChatColor.Blue)
				wait(10)
                m.Name = name .." | say 'next' for more commands or 'repeat' for me to repeat what I previously said"
                game:GetService("Chat"):Chat(p,"say 'next' for more commands or 'repeat' for me to repeat what I previously said",Enum.ChatColor.Blue)
			elseif (msg == ";com6") then
                m.Name = name .." | wtfmicro, tiny / small, normal, huge / giant, wtfgiant"
                game:GetService("Chat"):Chat(p,"wtfmicro, tiny / small, normal, huge / giant, wtfgiant",Enum.ChatColor.Blue)
				wait(10)
                m.Name = name .." | say 'next' for more commands or 'repeat' for me to repeat what I previously said"
                game:GetService("Chat"):Chat(p,"say 'next' for more commands or 'repeat' for me to repeat what I previously said",Enum.ChatColor.Blue)
			elseif (msg == ";com7") then
                m.Name = name .." | turtle, pony, atom, Cloud, stf, rdc, ic, mummy, silver time fedora, sorcus egg"
                game:GetService("Chat"):Chat(p,"turtle, pony, atom, Cloud, stf, rdc, ic, mummy, silver time fedora, sorcus egg",Enum.ChatColor.Blue)
				wait(10)
                m.Name = name .." | say 'next' for more commands or 'repeat' for me to repeat what I previously said"
                game:GetService("Chat"):Chat(p,"say 'next' for more commands or 'repeat' for me to repeat what I previously said",Enum.ChatColor.Blue)
			elseif (msg == ";com8") then
                m.Name = name .." | eggtrooper1019, terrordactyl, rs, emp, Cloud, meshfix, tv"
                game:GetService("Chat"):Chat(p,"eggtrooper1019, terrordactyl, rs, emp, Cloud, meshfix, tv",Enum.ChatColor.Blue)
				wait(10)
                m.Name = name .." | say 'next' for more commands or 'repeat' for me to repeat what I previously said"
                game:GetService("Chat"):Chat(p,"say 'next' for more commands or 'repeat' for me to repeat what I previously said",Enum.ChatColor.Blue)
			elseif (msg == ";com9") then
                m.Name = name .." | :visible / show / unhide / :show/ :unhide, :invisible / :hide / hide"
                game:GetService("Chat"):Chat(p,":visible / show / unhide / :show/ :unhide, :invisible / :hide / hide",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | New Cloud updates by drager980. Original Cloud by; iPityTheFoo, DropTheBomb, ttyyuu12345 and coplox"
                game:GetService("Chat"):Chat(p,"New Cloud updates by drager980. Original Cloud by; iPityTheFoo, DropTheBomb, ttyyuu12345 and coplox",Enum.ChatColor.Blue)
				wait(10)
                m.Name = name .." | say 'next' for more commands or 'repeat' for me to repeat what I previously said"
                game:GetService("Chat"):Chat(p,"say 'next' for more commands or 'repeat' for me to repeat what I previously said",Enum.ChatColor.Blue)
			elseif (msg == ";comall") then
                m.Name = name .." | func1, func2, func3, func4, func5, func6, func7, func8, func9, func10, func11..."
                game:GetService("Chat"):Chat(p,"func1, func2, func3, func4, func5, func6, func7, func8, func9, func10, func11...",Enum.ChatColor.Blue)
				wait(7)
                m.Name = name .." | func12, func13, func14, func15, func16, func17, func18, func19"
                game:GetService("Chat"):Chat(p,"func12, func13, func14, func15, func16, func17, func18, func19",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | :name, :exe, m/, sm/, :insert, :clear, :base(broken), fire on, fire off"
                game:GetService("Chat"):Chat(p,":name, :exe, m/, sm/, :insert, :clear, :base(broken), fire on, fire off",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | trollface, epic, mad, me, pity, drop, ttyyuu, coplox"
                game:GetService("Chat"):Chat(p,"trollface, epic, mad, me, pity, drop, ttyyuu, coplox",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | face creepy, face wut, face happy, face bored, frameon, frameoff"
                game:GetService("Chat"):Chat(p,"face creepy, face wut, face happy, face bored, frameon, frameoff",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | wtfmicro, tiny / small, normal, huge / giant, wtfgiant"
                game:GetService("Chat"):Chat(p,"wtfmicro, tiny / small, normal, huge / giant, wtfgiant",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | turtle, pony, atom, Cloud, stf, rdc, ic, mummy, silver time fedora, sorcus egg"
                game:GetService("Chat"):Chat(p,"turtle, pony, atom, Cloud, stf, rdc, ic, mummy, silver time fedora, sorcus egg",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | eggtrooper1019, terrordactyl, rs, emp, Cloud, meshfix, tv"
                game:GetService("Chat"):Chat(p,"eggtrooper1019, terrordactyl, rs, emp, Cloud, meshfix, tv",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | :visible / show / unhide / :show/ :unhide, :invisible / :hide / hide"
                game:GetService("Chat"):Chat(p,":visible / show / unhide / :show/ :unhide, :invisible / :hide / hide",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | New Cloud updates by drager980. Original Cloud by; iPityTheFoo, DropTheBomb, ttyyuu12345 and coplox"
                game:GetService("Chat"):Chat(p,"New Cloud updates by drager980. Original Cloud by; iPityTheFoo, DropTheBomb, ttyyuu12345 and coplox",Enum.ChatColor.Blue)
				wait(5)
                m.Name = name .." | Thanks for using Cloud V1.5.1(or higher o.o) --drager980"
                game:GetService("Chat"):Chat(p,"Thanks for using Cloud V1.5.1(or higher o.o) <3 --drager980",Enum.ChatColor.Blue)
				
			elseif (msg == "func1") then
                func = 1
                game:GetService("Chat"):Chat(p,"Switched to Lazor",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
            elseif (msg == "sfunc1") then
                func = 1
        --game:GetService("Chat"):Chat(p,"Switched to Lazor",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
			elseif (msg == "func2") then
                func = 2
                game:GetService("Chat"):Chat(p,"Switched to Grab",Enum.ChatColor.Green)
                fire.Color = Color3.new(1,0,0)
			elseif (msg == "sfunc2") then
                func = 2
        --game:GetService("Chat"):Chat(p,"Switched to Grab",Enum.ChatColor.Green)
                fire.Color = Color3.new(1,0,0)
            elseif (msg == "func3") then
                func = 3
                game:GetService("Chat"):Chat(p,"Switched to Sword",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
            elseif (msg == "sfunc3") then
                func = 3
        --game:GetService("Chat"):Chat(p,"Switched to Sword",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
			elseif (msg == "func4") then
                func = 4
                game:GetService("Chat"):Chat(p,"Switched to semiDissapear",Enum.ChatColor.Blue)
                fire.Color = Color3.new(0,0,1)
            elseif (msg == "sfunc4") then
                func = 13
        --game:GetService("Chat"):Chat(p,"umadudonthearthething",Enum.ChatColor.Blue)
                fire.Color = Color3.new(0,0,1)
            elseif (msg == "func5") then
                func = 5
                game:GetService("Chat"):Chat(p,"Switched to Incenerate",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
                message:Remove()
            elseif (msg == "sfunc5") then
                func = 5
        --game:GetService("Chat"):Chat(p,"Switched to Incenerate",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
                message:Remove()
            elseif (msg == "func6") then
                func = 6
                game:GetService("Chat"):Chat(p,"Switched to Insert Giver Ray",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
			elseif (msg == "sfunc6") then
                func = 6
        --game:GetService("Chat"):Chat(p,"Switched to Insert Giver Ray",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
            elseif (msg == "func7") then
                func = 7
                game:GetService("Chat"):Chat(p,"Switched to Voice Control",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
			elseif (msg == "sfunc7") then
                func = 7
        --game:GetService("Chat"):Chat(p,"Switched to Voice Control",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
			elseif (msg == "func8") then
                func = 8
                game:GetService("Chat"):Chat(p,"NOW BRINGING YOU THE TENNIS CHANNEL",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
			elseif (msg == "sfunc8") then
                func = 8
        --game:GetService("Chat"):Chat(p,"NOW BRINGING YOU THE TENNIS CHANNEL",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
			elseif (msg == "func9") then
                func = 9
                game:GetService("Chat"):Chat(p,"Switched to GODS WRATH",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
			elseif (msg == "sfunc9") then
                func = 9
        --game:GetService("Chat"):Chat(p,"Switched to GODS WRATH",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
			elseif (msg == "func10") then
                func = 10
                game:GetService("Chat"):Chat(p,"Switched to Nuke",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
			elseif (msg == "sfunc10") then
                func = 10
        --game:GetService("Chat"):Chat(p,"Switched to Nuke",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
			elseif (msg == "func11") then
                func = 11
                game:GetService("Chat"):Chat(p,"Switched to Shove",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "sfunc11") then
                func = 11
        --game:GetService("Chat"):Chat(p,"Switched to Shove",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "func12") then
                func = 12
                game:GetService("Chat"):Chat(p,"Switched to Shaggy Gun",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "sfunc12") then
                func = 12
        --game:GetService("Chat"):Chat(p,"Switched to Shaggy Gun",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "func13") then
                func = 102
                game:GetService("Chat"):Chat(p,"Switched to Morpher",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "sfunc13") then
                func = 103
			elseif (msg == "func14") then
                func = 14
                game:GetService("Chat"):Chat(p,"Switched to (Testing)",Enum.ChatColor.Green)
                fire.Color = Color3.new(69,96,69)
			elseif (msg == "sfunc14") then
                func = 14
        --game:GetService("Chat"):Chat(p,"Switched to Shaggy Gun",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "func15") then
                func = 69
                game:GetService("Chat"):Chat(p,"Switched to Kill",Enum.ChatColor.Blue)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "sfunc15") then
                func = 69
        --game:GetService("Chat"):Chat(p,"Switched to Shaggy Gun",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "func16") then
                func = 70
                game:GetService("Chat"):Chat(p,"Switched to Punish",Enum.ChatColor.Blue)
                fire.Color = Color3.new(100,255,255)
			elseif (msg == "sfunc16") then
                func = 70
        --game:GetService("Chat"):Chat(p,"Switched to Shaggy Gun",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "func17") then
                func = 99
                game:GetService("Chat"):Chat(p,"Switched to Delete",Enum.ChatColor.Blue)
                fire.Color = Color3.new(100,255,255)
			elseif (msg == "sfunc17") then
                func = 99
        --game:GetService("Chat"):Chat(p,"Switched to Shaggy Gun",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "func18") then
                func = 100
                game:GetService("Chat"):Chat(p,"Switched to Walkspeed enhancer (say speed;(number) to toggle the speed.)",Enum.ChatColor.Blue)
                fire.Color = Color3.new(100,255,255)
			elseif (msg == "sfunc18") then
                func = 100
        --game:GetService("Chat"):Chat(p,"Switched to Shaggy Gun",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "func19") then
                func = 105
                game:GetService("Chat"):Chat(p,"Switched to Uber Delete Tool",Enum.ChatColor.Blue)
                fire.Color = Color3.new(100,255,255)
			elseif (msg == "sfunc19") then
                func = 105
        --game:GetService("Chat"):Chat(p,"Switched to Shaggy Gun",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,0,0)
			elseif (msg == "trollface") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=34723158"
                wait(5)
                frame.Visible = false
            elseif (msg == "epic") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=23646110"
                wait(5)
                frame.Visible = false
            elseif (msg == "mad") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=49952615"
                wait(5)
                frame.Visible = false
            elseif (msg == "pity") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=56389354"
                wait(5)
                frame.Visible = false
            elseif (msg == "coplox") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=coplox"
                wait(5)
                frame.Visible = false
            elseif (msg == "ttyyuu") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=56389471"
                wait(5)
                frame.Visible = false
            elseif (msg == "drager") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=109665326"
                wait(5)
                frame.Visible = false
            elseif (msg == "drop") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=56389530"
                wait(5)
                frame.Visible = false
            elseif (msg == "fire on") then
			fire.Enabled = true
            elseif (msg == "fire off") then
			fire.Enabled = false
            elseif (msg == "turtle") then
				m8.MeshId = "http://www.roblox.com/asset/?id=24102128"
				m8.TextureId = "http://www.roblox.com/asset/?id=24102113"
            elseif (msg == "hippo") then
				m8.MeshId = "http://www.roblox.com/asset/?id=15089001"
				m8.TextureId = "http://www.roblox.com/asset/?id=15088976"
			elseif (msg == "atom") then
				m8.MeshId = "http://www.roblox.com/asset/?id=10913794"
				m8.TextureId = "http://www.roblox.com/asset/?id=10913771"
			 elseif (msg == "Cloud") then
				m8.MeshId = "http://www.roblox.com/asset/?id=1095708"
				m8.TextureId = "http://www.roblox.com/asset/?id=1095709"
			elseif (msg == "stf") then
				m8.MeshId = "http://www.roblox.com/asset/?id=1285237"
				m8.TextureId = "http://www.roblox.com/asset/?id=1285232"
			elseif (msg == "rdc") then
				m8.MeshId = "http://www.roblox.com/asset/?id=1031410"
				m8.TextureId = "http://www.roblox.com/asset/?id=82493307"
			elseif (msg == "ic") then
				m8.MeshId = "http://www.roblox.com/asset/?id=1323306"
				m8.TextureId = "http://www.roblox.com/asset/?id=1323305"
			elseif (msg == "mummy") then
				m8.MeshId = "http://www.roblox.com/asset/?id=16868741"
				m8.TextureId = "http://www.roblox.com/asset/?id=16868726"				
			elseif (msg == "qbunny") then
				m8.MeshId = "http://www.roblox.com/asset/?id=24718606"
				m8.TextureId = "http://www.roblox.com/asset/?id=24715863"	
			elseif (msg == "bunny") then
				m8.MeshId = "http://www.roblox.com/asset/?id=24785532"
				m8.TextureId = "http://www.roblox.com/asset/?id=845175787"
			elseif (msg == "epic duck") then
				m8.MeshId = "http://www.roblox.com/asset/?id=9419831"
				m8.TextureId = "http://www.roblox.com/asset/?id=9419827"
			elseif (msg == "zombie fiend") then
				m8.MeshId = "http://www.roblox.com/asset/?id=73150923"
				m8.TextureId = "http://www.roblox.com/asset/?id=73150902"
			elseif (msg == "silver time fedora") then
				m8.MeshId = "http://www.roblox.com/asset/?id=1285237"
				m8.TextureId = "http://www.roblox.com/asset/?id=84718630"
			elseif (msg == "tv") then
				m8.MeshId = "http://www.roblox.com/asset/?id=11641931"
				m8.TextureId = "http://www.roblox.com/asset/?id=11641912"
			elseif (msg == "sorcus egg") then
				m8.MeshId = "http://www.roblox.com/asset/?id=110115297"
				m8.TextureId = "http://www.roblox.com/asset/?id=110115335"
			elseif (msg == "eggtrooper1019") then
				m8.MeshId = "http://www.roblox.com/asset/?id=110115297"
				m8.TextureId = "http://www.roblox.com/asset/?id=110253523"			
			elseif (msg == "terrordactyl") then
				m8.MeshId = "http://www.roblox.com/asset/?id=64018310"
				m8.TextureId = "http://www.roblox.com/asset/?id=64018353"				
            elseif (msg == "pony") then
				m8.MeshId = "http://www.roblox.com/asset/?id=25646277"
				m8.TextureId = "http://www.roblox.com/asset/?id=26415302"
            elseif (msg == "rs") then
				m8.MeshId = "http://www.roblox.com/asset/?id=19999424"
				m8.TextureId = "http://www.roblox.com/asset/?id=51150837"
            elseif (msg == "shaggy") then
				m8.MeshId = "http://www.roblox.com/asset/?id=19999424"
				m8.TextureId = "http://www.roblox.com/asset/?id=20571982"
            elseif (msg == "emp") then
				m8.MeshId = "http://www.roblox.com/asset/?id=21057410"
				m8.TextureId = "http://www.roblox.com/asset/?id=21057378"
            elseif (msg == "Cloud") then
				m8.MeshId = "http://www.roblox.com/asset/?id=34795798"
				m8.TextureId = "http://www.roblox.com/asset/?id=34914385"
			elseif (msg == "cake") then
				m8.MeshId = "http://www.roblox.com/asset/?id=1376455"
				m8.TextureId = "http://www.roblox.com/asset/?id=1376454"
			elseif (msg == "shark") then
				m8.MeshId = "http://www.roblox.com/asset/?id=12137531"
				m8.TextureId = "http://www.roblox.com/asset/?id=12137519"
			elseif (msg == "ghost") then
				m8.MeshId = "http://www.roblox.com/asset/?id=36465413"
				m8.TextureId = "http://www.roblox.com/asset/?id=36465387"
			elseif (msg == "tstranger") then
				m8.MeshId = "http://www.roblox.com/asset/?id=76058453"
				m8.TextureId = "http://www.roblox.com/asset/?id=108850514"
			elseif (msg == "glord") then
				m8.MeshId = "http://www.roblox.com/asset/?id=76058453"
				m8.TextureId = "http://www.roblox.com/asset/?id=109294541"
			elseif (msg == "health on") then
				h.MaxHealth = 100
				h.Health = 100
			elseif (msg == "health off") then
				h.Health = 0
				h.MaxHealth = 0
			elseif (msg == "nametag off") then
				m.Name = ""
			elseif (msg == "ff") then
				local e = Instance.new("ForceField")
				e.Parent = m
				e.Name = "ff"
			elseif (msg == "unff") then
				m.ff:remove()
			elseif (msg == "" .. pl.Name .. "") then
				local egg = Instance.new("Hint")
				egg.Parent = game.Workspace
				egg.Text = "The owner of " .. m.Name .. " is " .. pl.Name .. "."
				wait(5)
				egg:remove()
			elseif (msg == "chatmode;default") or (msg == ";default") then -- ; ; ;
				beep = 1
                game:GetService("Chat"):Chat(p,"Chatmode set to default",Enum.ChatColor.Blue)
			elseif (msg == "chatmode;bubble only") or (msg == ";bubble") then
				beep = 2
                game:GetService("Chat"):Chat(p,"Chatmode set to bubble only",Enum.ChatColor.Blue)
			elseif (msg == "chatmode;quadruple dot") or (msg == ";quad") then
				beep = 3
                game:GetService("Chat"):Chat(p,"Chatmode set to ::",Enum.ChatColor.Blue)
			elseif (msg == "chatmode;says") or (msg == ";says") then
				beep = 4
                game:GetService("Chat"):Chat(p,"Chatmode set to ''" .. model.Name .. " says test''",Enum.ChatColor.Blue)
			elseif (msg == "chatmode;wall") or (msg == ";wall") then
				beep = 5
                game:GetService("Chat"):Chat(p,"Chatmode set to wall",Enum.ChatColor.Blue)
			elseif (msg == "chatmode;is") or (msg == ";is") then
				beep = 6
                game:GetService("Chat"):Chat(p,"Chatmode set to is",Enum.ChatColor.Blue)
			elseif (msg == "morph;turtle") then
				morph = 1
			elseif (msg == "morph;hippo") then
				morph = 2
			elseif (msg == "morph;epic duck") then
				morph = 3
			elseif (msg == "morph;tv") then
				morph = 4
			elseif (msg == "morph;sorcus egg") then	
				morph = 5
			elseif (msg == "morph;pony") then
				morph = 6
			elseif (msg == "morph;rs") then
				morph = 7
			elseif (msg == "morph;shaggy") then
				morph = 8
			elseif (msg == "morph;cake") then
				morph = 9
			elseif (msg == "morph;ghost") then
				morph = 10
			elseif (msg == "wtfmicro") then
				m8.Scale = Vector3.new(0.1,0.1,0.1)
			elseif (msg == "tiny") then
				m8.Scale = Vector3.new(0.5,0.5,0.5)
		    elseif (msg == "small") then
				m8.Scale = Vector3.new(0.5,0.5,0.5)
		    elseif (msg == "normal") then
				m8.Scale = Vector3.new(1,1,1)
		    elseif (msg == "huge") then
				m8.Scale = Vector3.new(4,4,4)
		    elseif (msg == "giant") then
				m8.Scale = Vector3.new(4,4,4)
		    elseif (msg == "wtfgiant") then
				m8.Scale = Vector3.new(8,8,8)
		    elseif (msg == "meshfix") then
				local m8 = Instance.new("SpecialMesh")
				m8.Name = "Mesh"
				m8.MeshType = "FileMesh"
				m8.MeshId = "http://www.roblox.com/asset/?id=24102128"
				m8.TextureId = "http://www.roblox.com/asset/?id=24102113"
				m8.Parent = p
		    elseif (msg == "face creepy") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=113634952"
		    elseif (msg == "face wut") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=113634978"
			elseif (msg == "face happy") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=113635007"
			elseif (msg == "face bored") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=113635039"
            elseif (msg == "me") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username="..pl.Name
                wait(5)
                frame.Visible = false
			elseif (msg == "frameon") then
                frame.Visible = true
			elseif (msg == "frameoff") then
                frame.Visible = false
		    elseif (msg == ":visible") then
			m.Head.Transparency = 0
            elseif (msg == ":invisible") then
			m.Head.Transparency = 1
            elseif (msg == "hide") then
			m.Head.Transparency = 1
            elseif (msg == "unhide") then
			m.Head.Transparency = 0
            elseif (msg == "show") then
			m.Head.Transparency = 0
            elseif (msg == ":show") then
			m.Head.Transparency = 0
			elseif (msg == ":hide") then
			m.Head.Transparency = 1
            elseif (msg == ":unhide") then
			m.Head.Transparency = 0
            elseif (string.lower(msg) == "commands") or (string.lower(msg) == "cmds") or (string.lower(msg) == "help") then
                message = Instance.new("Message")
                message.Parent = game.Workspace
				message.Text = "-- Cloud Note -- Hey " .. pl.Name .. ", thanks for using Cloud Cloud V1.5! Here are just SOME of the many commands..."
                wait(5)
                message.Text = "--Commands-- func1, func2, func3, func4, func5, func6, func7, func8, func9, func10, func11, func12, func13"
                wait(5)
                message.Text = "--Commands Part 2-- func14, func15, func16, func17, func18, func19."
                wait(5)
                message.Text = "--Commands Part 3--  :name, :exe, m/, sm/, :insert, :clear, :base, fire on, fire off, ban/(fullname), h/(msg)"
                wait(5)
                message.Text = "--Decal Commands-- trollface, epic, mad, me, pity, drop, ttyyuu, coplox."
                wait(5)
                message.Text = "--Decal Commands-- face creepy, face wut, face happy, face bored, frameon, frameoff."
                wait(5)
				message.Text = "--Mesh Commands-- wtfmicro, tiny / small, normal, huge / giant, wtfgiant."
                wait(5)
				message.Text = "--Cloud Meshes-- turtle, pony, atom, Cloud, stf, rdc, ic, mummy, silver time fedora, sorcus egg"
                wait(5)
				message.Text = "--Cloud Meshes-- eggtrooper1019, terrordactyl, rs, emp, cloud, meshfix, tv."
                wait(5)
				message.Text = "--Meshes (Func13)-- morph;turtle/hippo/epic duck/tv/sorcus egg/pony/rs/shaggy/cake/ghost | example [ morph;pony ]"
                wait(10)
				message.Text = "--Cloud Configuration-- :visible / show / unhide / :show/ :unhide, :invisible / :hide / hide."
                wait(5)
				message.Text = "--Cloud Credits-- New Updates by drager980. Original by; iPityTheFoo, DropTheBomb, ttyyuu12345 and coplox."
                wait(5)
				message:Remove() -- 
            elseif (string.sub(msg,1,2) == "m/") then
                mess=string.sub(msg,3)
                message = Instance.new("Message")
                message.Parent = game.Workspace
                message.Text = name..": "..mess
                wait(5)
                message:Remove()
            elseif (string.sub(msg,1,6) == "speed;") then
                speed=string.sub(msg,7)
            elseif (string.sub(msg,1,3) == "sm/") then
                mess=string.sub(msg,4)
                message = Instance.new("Message")
                message.Parent = game.Workspace
                message.Text = mess
                wait(5)
                message:Remove()
			elseif (string.sub(msg,1,5) == "hint/") then
                mess=string.sub(msg,6)
                message = Instance.new("Hint")
                message.Parent = game.Workspace
                message.Text = mess
                wait(5)
                message:Remove()
            elseif (string.sub(msg,1,4) == "ban/") then -- full username
                Dissapeard=string.sub(msg,5)
                foop = game.Players:findFirstChild(Dissapeard)
				foop:remove()
				message = Instance.new("Hint")
                message.Parent = game.Workspace
                message.Text = foop .." was Banned for being a poo"
                wait(1)
                message:Remove()
            elseif (string.sub(msg,1,6) == "safec/") then -- full username
                Dissapeard=string.sub(msg,7)
                foop = game.Players:findFirstChild(Dissapeard)
				foop:remove()
				message = Instance.new("Hint")
                message.Parent = game.Workspace
                message.Text = foop .." was Banned for being a poo"
                wait(1)
                message:Remove()				
			elseif (msg == ":base") then --game.Players.BOB:SetSuperSafeChat(true)
				local sam = Instance.new("Part")
				sam.Parent = game.Workspace
				sam.Size = Vector3.new(400,1,400)
				sam.Position = p.Position
				sam.Anchored = true
				sam.CanCollide = true
			elseif (msg == ":removebase") then
				sam:remove()
			elseif (msg == ":clear") then -- REMOVES MESHES
				local w=game.Workspace:GetChildren() 
				for i=1,#w do 
				if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) and (w[i]~=script) then 
				if w[i]:IsA("Script") then
				w[i].Disabled = true
				end
				game:GetService("Debris"):AddItem(w[i], 0)
				end 
				end 
            else
                Say(msg, name, m)game:GetService("Chat"):Chat(p,tostring(msg),Enum.ChatColor.Blue)
                fire.Color = Color3.new(0,0,1)
            end
        end)
        mouse_left = false
        mouse.Button1Down:connect(function()
            if (func == 1) then
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                local e = Instance.new("Explosion")
                e.Position = mouse.Hit.p
                e.Parent = workspace
                wait(0.3)
                r:remove()
            end
            if (func == 2) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                mouse_left = true
                local bpos = Instance.new("BodyPosition",i)
                bpos.maxForce = Vector3.new(1,1,1) * math.huge
                local bgyr = Instance.new("BodyGyro",i)
                bgyr.maxTorque = Vector3.new(1,1,1) * math.huge
                while mouse_left do
                    wait()
                    bpos.position = (p.CFrame * CFrame.new(0,0,-i.Size.z * 2)).p
                    bgyr.cframe = p.CFrame
                    if ((i.Position - p.Position).magnitude > 30) then
                        i.CFrame = p.CFrame * CFrame.new(0,0,-i.Size.z * 2)
                    end
                    fire.Color = Color3.new(0,1,0)
                end
                bpos:remove()
                bgyr:remove()
            end
            if (func == 3) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                local m = Instance.new("SpecialMesh",p)
                m.MeshType = "FileMesh"
                m.MeshId = "rbxasset://fonts/sword.mesh"
                m.Scale = Vector3.new(2,2,2)
                fire.Enabled = false
                p.Anchored = false
                
                local w = Instance.new("Weld")
                w.C0 = CFrame.Angles(0,math.pi,0)
                w.Part0 = i
                w.Part1 = p
                w.Parent = i
                wait(3)
                i:breakJoints()
                m:remove()
                p.Anchored = true
                fire.Enabled = true
            end
            if (func == 4) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Players:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                                player:Remove()
                        end
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
            end
            if (func == 5) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        Instance.new("Fire",a[b]).Size = a[b].Size.magnitude * 3
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b].Color = Color3.new(0,0,0)
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
            end
            if (func == 6) then --64082730
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
					 local Ins = game:GetService("InsertService"):LoadAsset(21001552)
					 local Ins = nil
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
					 local park = ins:GetChildren()
					 local bark = 0
					 for bark = 1, #park do
					    if park[bark]:IsA("Tool") then
							 Ins = park[bark]
 						 end
					 end
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Players:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                                Ins.Parent = player.Backpack
                        end
                    end
                end
				end
            if (func == 7) then
                game:GetService("Chat"):Chat(p,"Say something to make the target say it.",Enum.ChatColor.Green)
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                while true do
                wait()
                pl.Chatted:connect(function(msge)
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Players:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                        game:GetService("Chat"):Chat(player.Character.Head,msge,Enum.ChatColor.Blue)
                        end
                    end
                end
                end)
                end
            end
		if (func == 8) then
		wait(0.1)
		game:GetService("Chat"):Chat(p,"TENNIS IS DELICIOUS",Enum.ChatColor.Green)
		wait(8)
		local sally = Instance.new("Message")
		sally.Parent = game.Workspace
		sally.Text = "every body one two three four,"
		wait(2)
		sally.Text = "DO THE WIGGLE WIGGLE BECAUSE MASTER " .. m.Name .. " SAID SOOOO"
		wait(3)
		sally.Text = "okimbored byeeee"
		wait(3)
		sally:remove()
		wait(50)
        end
		            if (func == 9) then
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Black()
                r.formFactor = "Custom"
                r.Size = Vector3.new(3,3,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = true
                r.Parent = workspace
                local e = Instance.new("Explosion")
                e.Position = mouse.Hit.p
                e.Parent = workspace
				e.BlastRadius = 6
				e.BlastPressure = 500000
                wait(1)
				game:GetService("Chat"):Chat(p,"You are bestowed with my divine wrath, learn to fear me.",Enum.ChatColor.Red)
                r:remove()
            end
			if (func == 10) then
                local wtf = Instance.new("Explosion",p)
				wtf.BlastRadius = 8
				wtf.BlastPressure = 55555
				wtf.Position = p.Position
				wait(1)			
			wtf:remove()
			end
			if (func == 11) then
				local shago = game:GetService("InsertService"):LoadAsset(20573078) shago.Parent = game.Workspace shago:MoveTo(p.CFrame.p)
				wait(0.1)
			end
			if (func == 12) then
				local shagi = game:GetService("InsertService"):LoadAsset(64082730) shagi.Parent = game.Workspace shagi:MoveTo(p.CFrame.p)
				wait(0.1)
			end
            if (func == 13) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
				r.Transparency = 1
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Players:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                                player:Remove()
                        end
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
            end
		     if (func == 69) then
				local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Black()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Workspace:findFirstChild(a[b].Parent.Name)
                        if player.Humanoid~=nil then
                            player.Humanoid.MaxHealth = 1
							player.Humanoid.Health = 0
						else
                        end
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
			end
		if (func == 70) then
				local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Black()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Workspace:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                            player:remove()
                        end
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
			end
		            if (func == 99) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Red()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        wait(0 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b].Color = Color3.new(0,0,0)
                        wait(0.1 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(0 / #a)
                    end
                end
            end
		     if (func == 100) then
				local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Black()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Workspace:findFirstChild(a[b].Parent.Name)
                        if player.Humanoid~=nil then
                            player.Humanoid.WalkSpeed = speed
						else
                        end
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
			end
		     if (func == 102) then
				local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Black()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Workspace:findFirstChild(a[b].Parent.Name)
                        if player.Torso~=nil then
							player.Torso.Transparency = 1
							player:findFirstChild("Left Arm"):remove()
							player:findFirstChild("Left Leg"):remove()
							player:findFirstChild("Right Arm"):remove()
							player:findFirstChild("Right Leg"):remove()
							player.Head.face:remove()
							m9 = player.Head.Mesh
							m9.MeshType = "FileMesh"
						if morph == 1 then --turtle
							m9.MeshId = "http://www.roblox.com/asset/?id=24102128"
							m9.TextureId = "http://www.roblox.com/asset/?id=24102113"
							m9.Scale = Vector3.new(6,6,6)
						elseif morph == 2 then --hippo (BROKEN)
							m9.MeshId = "http://www.roblox.com/asset/?id=15089001"
							m9.TextureId = "http://www.roblox.com/asset/?id=15088976"
						elseif morph == 3 then --epic duck
							m9.MeshId = "http://www.roblox.com/asset/?id=9419831"
							m9.TextureId = "http://www.roblox.com/asset/?id=9419827"
							m9.Scale = Vector3.new(5,5,5)
						elseif morph == 4 then --tv
							m9.MeshId = "http://www.roblox.com/asset/?id=11641931"
							m9.Scale = Vector3.new(5,5,5)
							m9.TextureId = "http://www.roblox.com/asset/?id=11641912"
						elseif morph == 5 then -- sorcus egg
							m9.MeshId = "http://www.roblox.com/asset/?id=110115297"
							m9.TextureId = "http://www.roblox.com/asset/?id=110115335"
							m9.Scale = Vector3.new(2,2,2)
						elseif morph == 6 then-- pony kinda broken but keeping in for bronies c:
							m9.MeshId = "http://www.roblox.com/asset/?id=25646277"
							m9.Scale = Vector3.new(1.7,1.7,1.7)
							m9.TextureId = "http://www.roblox.com/asset/?id=26415302"
						elseif morph == 7 then -- rs
							m9.MeshId = "http://www.roblox.com/asset/?id=19999424"
							m9.Scale = Vector3.new(6,6,6)
							m9.TextureId = "http://www.roblox.com/asset/?id=51150837"							
						elseif morph == 8 then -- shaggy
							m9.MeshId = "http://www.roblox.com/asset/?id=19999424"
							m9.Scale = Vector3.new(6,6,6)
							m9.TextureId = "http://www.roblox.com/asset/?id=20571982"
						elseif morph == 9 then--cake
							m9.MeshId = "http://www.roblox.com/asset/?id=1376455"
							m9.Scale = Vector3.new(4,4,4)
							m9.TextureId = "http://www.roblox.com/asset/?id=1376454"
						elseif morph == 10 then-- ghost
							m9.MeshId = "http://www.roblox.com/asset/?id=36465413"
							m9.Scale = Vector3.new(4.5,4.5,4.5)
							m9.TextureId = "http://www.roblox.com/asset/?id=36465387"
						end
						else
                        end
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
			end
		     if (func == 103) then
				local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Black()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
				r.Transparency = 1
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Workspace:findFirstChild(a[b].Parent.Name)
                        if player.Torso~=nil then
							player.Torso.Transparency = 1
							player:findFirstChild("Left Arm"):remove()
							player:findFirstChild("Left Leg"):remove()
							player:findFirstChild("Right Arm"):remove()
							player:findFirstChild("Right Leg"):remove()
							player.Head.face:remove()
							m9 = player.Head.Mesh
							m9.MeshType = "FileMesh"
						if morph == 1 then --turtle
							m9.MeshId = "http://www.roblox.com/asset/?id=24102128"
							m9.TextureId = "http://www.roblox.com/asset/?id=24102113"
							m9.Scale = Vector3.new(6,6,6)
						elseif morph == 2 then --hippo (BROKEN)
							m9.MeshId = "http://www.roblox.com/asset/?id=15089001"
							m9.TextureId = "http://www.roblox.com/asset/?id=15088976"
						elseif morph == 3 then --epic duck
							m9.MeshId = "http://www.roblox.com/asset/?id=9419831"
							m9.TextureId = "http://www.roblox.com/asset/?id=9419827"
							m9.Scale = Vector3.new(5,5,5)
						elseif morph == 4 then --tv
							m9.MeshId = "http://www.roblox.com/asset/?id=11641931"
							m9.Scale = Vector3.new(5,5,5)
							m9.TextureId = "http://www.roblox.com/asset/?id=11641912"
						elseif morph == 5 then -- sorcus egg
							m9.MeshId = "http://www.roblox.com/asset/?id=110115297"
							m9.TextureId = "http://www.roblox.com/asset/?id=110115335"
							m9.Scale = Vector3.new(2,2,2)
						elseif morph == 6 then-- pony kinda broken but keeping in for bronies c:
							m9.MeshId = "http://www.roblox.com/asset/?id=25646277"
							m9.Scale = Vector3.new(1.7,1.7,1.7)
							m9.TextureId = "http://www.roblox.com/asset/?id=26415302"
						elseif morph == 7 then -- rs
							m9.MeshId = "http://www.roblox.com/asset/?id=19999424"
							m9.Scale = Vector3.new(6,6,6)
							m9.TextureId = "http://www.roblox.com/asset/?id=51150837"							
						elseif morph == 8 then -- shaggy
							m9.MeshId = "http://www.roblox.com/asset/?id=19999424"
							m9.Scale = Vector3.new(6,6,6)
							m9.TextureId = "http://www.roblox.com/asset/?id=20571982"
						elseif morph == 9 then--cake
							m9.MeshId = "http://www.roblox.com/asset/?id=1376455"
							m9.Scale = Vector3.new(4,4,4)
							m9.TextureId = "http://www.roblox.com/asset/?id=1376454"
						elseif morph == 10 then-- ghost
							m9.MeshId = "http://www.roblox.com/asset/?id=36465413"
							m9.Scale = Vector3.new(4.5,4.5,4.5)
							m9.TextureId = "http://www.roblox.com/asset/?id=36465387"
						end
						else
                        end
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
			end
		           if (func == 105) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Red()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.1,0.1,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = true
                r.Parent = workspace
                wait()
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b].Color = Color3.new(255,255,255)
                        wait(0 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
						a[b].CanCollide = false
						a[b].Transparency = 0.95
                        wait(0 / #a)
                    end
                end
            end
		     if (func == 14) then
				local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
					local ins = game:GetService("InsertService"):LoadAsset(64082730)
					local ins = nil
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Black()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Workspace:findFirstChild(a[b].Parent.Name)
                    if player~=nil then
                                ins.Parent = player
                                ins.Handle.Position = player.Head.Position
						end
					else
                        end
                        wait(40 / #a)
                    end
                end
        end)
        mouse.Button1Up:connect(function() mouse_left = false end)
		
        while true do
            wait()
            p.CFrame = c.CoordinateFrame  * CFrame.new(0,0,-10)
            m.Parent = workspace
            p.Parent = m
            h.Parent = m
            fire.Parent = p
        end
    end
    script.Parent.Selected:connect(onS)
end
game:GetService("Chat"):Chat(p,"Switched to killer mode",Enum.ChatColor.Black) fire.Color = Color3.new(0,1,0)
--say commands for commands :)
