function reset(a,b)
    if b == Enum.UserInputState.Begin then
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
    end
    
end

function jump(a,b)
    if b == Enum.UserInputState.Begin then
        game.Players.LocalPlayer:Kick("점프 하면 안됩니다!")
    end
end

game:GetService("ContextActionService"):BindAction('reset', reset, false, Enum.KeyCode.R)
game:GetService("ContextActionService"):BindAction("jump", jump, false, Enum.KeyCode.Space)