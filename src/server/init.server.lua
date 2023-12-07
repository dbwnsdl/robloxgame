game.Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder", player)
    leaderstats.Name = "leaderstats"
    local money = Instance.new("IntValue", leaderstats)
    player.CharacterAdded:Connect(function()
        player.Character.Humanoid.Died:Connect(function()
            money.Value-=1    
            local creator = player.Character:FindFirstChild("creator")
            if creator then
                if creator.value then
                    creator.value.leaderstats.Value += 1
                end
            end            
        end)
    end)
    
end)