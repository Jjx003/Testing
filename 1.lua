codes = {
    ["1643543"] = game.ReplicatedStorage.Weapon1,
    ["3728492"] = game.ReplicatedStorage.Weapon2,
    ["5638593"] = game.ReplicatedStorage.Weapon3,
    ["5483759"] = game.ReplicatedStorage.Weapon4,
    ["4759485"] = game.ReplicatedStorage.Weapon5,
    ["4739583"] = game.ReplicatedStorage.Weapon6,
}

textButton = game.Players.LocalPlayer.PlayerGui.ScreenGui.TextButton
textBox = game.Players.LocalPlayer.PlayerGui.ScreenGui.TextBox
backPack = game.Players.LocalPlayer.Backpack

textButton.MouseButton1Down:connect(function()
    local weapon = codes[ textBox.Text ]
    if weapon then
        -- if the weapon exists (because they entered a real code)
        weapon:Clone().Parent = backPack
    end
end)
